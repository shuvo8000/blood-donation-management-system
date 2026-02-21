from flask import Flask, render_template, request, jsonify
import sqlite3

app = Flask(__name__)
DB = "database.db"

def get_db():
    return sqlite3.connect(DB, check_same_thread=False)

@app.route("/")
def home():
    return render_template("index.html")

# ---------- DONOR SIGNUP ----------
@app.route("/signup/donor", methods=["POST"])
def signup_donor():
    d = request.json
    con = get_db()
    con.execute("""
        INSERT INTO donors
        (name, username, password, blood_group, phone, district, last_date)
        VALUES (?,?,?,?,?,?,?)
    """, (
        d["name"], d["username"], d["password"],
        d["blood_group"], d["phone"], d["district"], d["date"]
    ))
    con.commit()
    return jsonify(success=True)

# ---------- BANK SIGNUP ----------
@app.route("/signup/bank", methods=["POST"])
def signup_bank():
    b = request.json
    con = get_db()
    con.execute("""
        INSERT INTO banks
        (name, username, password, phone, district,
         Apos, Aneg, Bpos, Bneg, ABpos, ABneg, Opos, Oneg)
        VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)
    """, (
        b["name"], b["username"], b["password"],
        b["phone"], b["district"],
        b["Apos"], b["Aneg"], b["Bpos"], b["Bneg"],
        b["ABpos"], b["ABneg"], b["Opos"], b["Oneg"]
    ))
    con.commit()
    return jsonify(success=True)

# ---------- LOGIN ----------
@app.route("/login", methods=["POST"])
def login():
    d = request.json
    u, p = d["username"], d["password"]

    if u == "admin" and p == "admin123":
        return jsonify(role="admin")

    con = get_db()
    cur = con.cursor()

    cur.execute("SELECT * FROM donors WHERE username=? AND password=?", (u,p))
    if cur.fetchone():
        return jsonify(role="donor", username=u)

    cur.execute("SELECT * FROM banks WHERE username=? AND password=?", (u,p))
    if cur.fetchone():
        return jsonify(role="bank", username=u)

    return jsonify(error="Invalid login"), 401

# ---------- UPDATE DONOR ----------
@app.route("/update/donor", methods=["POST"])
def update_donor():
    d = request.json
    con = get_db()
    con.execute("""
        UPDATE donors
        SET phone=?, district=?, last_date=?
        WHERE username=?
    """, (d["phone"], d["district"], d["date"], d["username"]))
    con.commit()
    return jsonify(success=True)

# ---------- UPDATE BANK ----------
@app.route("/update/bank", methods=["POST"])
def update_bank():
    b = request.json
    con = get_db()
    con.execute("""
        UPDATE banks
        SET phone=?,
            Apos=?, Aneg=?, Bpos=?, Bneg=?,
            ABpos=?, ABneg=?, Opos=?, Oneg=?
        WHERE username=?
    """, (
        b["phone"],
        b["Apos"], b["Aneg"], b["Bpos"], b["Bneg"],
        b["ABpos"], b["ABneg"], b["Opos"], b["Oneg"],
        b["username"]
    ))
    con.commit()
    return jsonify(success=True)

# ---------- SEARCH ----------
@app.route("/search", methods=["POST"])
def search():
    s = request.json
    con = get_db()
    cur = con.cursor()

    if s["type"] == "donor":
        cur.execute("""
            SELECT name, phone, district, last_date
            FROM donors
            WHERE blood_group=? AND district=?
        """, (s["blood_group"], s["district"]))
        return jsonify(cur.fetchall())

    cur.execute("""
        SELECT name, phone, district
        FROM banks
        WHERE district=?
    """, (s["district"],))
    return jsonify(cur.fetchall())

# ---------- ADMIN ----------
@app.route("/admin/donors")
def admin_donors():
    con = get_db()
    cur = con.cursor()
    cur.execute("SELECT name, username, blood_group, phone, district FROM donors")
    return jsonify(cur.fetchall())

@app.route("/admin/banks")
def admin_banks():
    con = get_db()
    cur = con.cursor()
    cur.execute("SELECT name, username, phone, district FROM banks")
    return jsonify(cur.fetchall())

if __name__ == "__main__":
    app.run(debug=True)
