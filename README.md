#  🩸 Friends Blood Donation Service

A web-based Blood Donation Management System developed for university project purposes. This project helps connect blood donors, recipients, and hospitals through an easy-to-use online platform.

---

# 📖 Project Overview

The Blood Donation Management System is designed to manage blood donation activities digitally. Users can search for blood donors by blood group and district, register as donors, and manage donation records efficiently.

This project aims to reduce the time needed to find emergency blood donors and improve communication between donors and recipients.

---

# ✨ Features

* Donor Registration System
* Blood Bank Registration System
* Blood Group Search
* Search by District/Location
* Admin Panel
* Donor Profile Update
* Blood Stock Management
* Real-time Search Functionality
* User-Friendly Interface
* Database Integration
* Fast Data Retrieval
* Responsive Design

---

# 🛠️ Technologies Used

## Frontend

* HTML5
* CSS3
* JavaScript

## Backend

* Python (Flask)

## Database

* MySQL

---

# 📂 Project Structure

```bash
Blood-Donation-Management-System/
│
├── static/
│   ├── css/
│   ├── js/
│   └── images/
│
├── templates/
│   ├── index.html
│   ├── donor.html
│   ├── hospital.html
│   └── search.html
│
├── app.py
├── database.sql
├── requirements.txt
├── ER Diagram.png
├── Schema Diagram.png
└── README.md
```
---

# 🎯 Objectives

* Make blood searching faster and easier.
* Digitize donor management.
* Help hospitals and patients during emergencies.
* Create a simple and efficient blood donation platform.

---

# 🔍 Main Functionalities

## 🩸 Donor Registration

Users can register themselves as blood donors by providing personal information, blood group, district, phone number, and last donation date. The system stores donor information securely in the database.

---

## 🏥 Blood Bank Registration

Blood banks can create accounts and manage available blood stock quantities for different blood groups such as A+, B+, O+, AB+, etc.

---

## 🔎 Search System

Users can search for blood donors and blood banks based on blood group and district. The system provides fast and real-time search results.

---

## 👨‍💼 Admin Panel

The admin panel allows administrators to view all registered donors and blood banks and monitor the overall system data.

---

## ✏️ Profile Update

Both donors and blood banks can update their personal information, contact number, district, and blood stock information when needed.

---

# 🧪 Database Tables

## 👤 Donors Table

The `donors` table stores all registered donor information including:

* Name
* Username
* Password
* Blood Group
* Phone Number
* District
* Last Donation Date

---

## 🏦 Banks Table

The `banks` table stores all blood bank information including:

* Blood Bank Name
* Username
* Password
* Phone Number
* District
* Blood Stock Quantities
  * A+
  * A-
  * B+
  * B-
  * AB+
  * AB-
  * O+
  * O-

---

# 🚀 Future Improvements
* Secure User Authentication
* Password Encryption
* SMS/Email Notifications
* Blood Request Approval System
* Mobile Application Version
* Live Location Tracking
* Online Blood Request System
* Dashboard Analytics

---

# 📚 Learning Outcomes

Through this project, the following concepts were practiced:

* Frontend Web Development
* Backend Development with Flask
* Database Management with MySQL
* REST API Communication
* JavaScript Fetch API
* CRUD Operations
* Full Stack Web Development


---

# 🗄️ ER Diagram

The following ER Diagram represents the database structure and relationships between donors, hospitals, recipients, and blood records in the Blood Donation Management System.

<p align="center">
  <img src="ER Diagram.png" width="800">
</p>

---

# 🗃️ Database Schema Diagram

The following diagram represents the database schema of the Friends Blood Donation Service project.

<p align="center">
  <img src="Schma Diagram.png" width="1000">
</p>

---
# 🔐 Security Note

This project is developed for educational and university project purposes. Basic authentication functionality has been implemented for login and registration features. However, advanced security features such as password encryption, secure session management, and role-based authentication can be added in future versions to improve system security and reliability.

---
# 📄 License

This project is created for educational and university project purposes.

---

# 🌐 GitHub Repository

```bash
 https://github.com/shuvo8000/blood-donation-management-system
```
