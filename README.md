# 🛒 Grocery Ordering System

A responsive web-based grocery ordering platform that allows customers to browse products, manage their cart, and place orders with payment integration. Built as a full-stack project using core web technologies.

---

## 🚀 Features

- Browse grocery products by category
- Add/remove items from a dynamic shopping cart
- Order placement with payment integration
- Order history and tracking for users
- Admin panel for managing products and orders
- Fully responsive UI for mobile and desktop

---

## 🛠️ Tech Stack

| Layer      | Technology          |
|------------|---------------------|
| Frontend   | HTML5, CSS3, JavaScript |
| Backend    | PHP                 |
| Database   | MySQL               |

---

## 📂 Project Structure

```
grocery-ordering-system/
├── index.php           # Home / product listing
├── cart.php            # Shopping cart
├── checkout.php        # Order placement & payment
├── orders.php          # Order history
├── admin/              # Admin panel
├── db/                 # Database schema (schema.sql)
├── assets/
│   ├── css/
│   └── js/
└── README.md
```

---

## ⚙️ How to Run Locally

### Prerequisites
- XAMPP / WAMP / LAMP installed
- PHP 7.4+
- MySQL 5.7+

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/dnyaneshwari44/grocery-ordering-system.git
   cd grocery-ordering-system
   ```

2. **Set up the database**
   - Open phpMyAdmin
   - Create a new database: `grocery_db`
   - Import the schema: `db/schema.sql`

3. **Configure DB connection**
   - Open `config.php`
   - Update your DB credentials:
     ```php
     define('DB_HOST', 'localhost');
     define('DB_USER', 'root');
     define('DB_PASS', '');
     define('DB_NAME', 'grocery_db');
     ```

4. **Run the project**
   - Move project folder to `htdocs` (XAMPP) or `www` (WAMP)
   - Start Apache and MySQL in XAMPP
   - Visit: `http://localhost/grocery-ordering-system`

