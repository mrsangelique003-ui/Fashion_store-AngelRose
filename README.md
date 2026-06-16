# 🌸 BellaRose Fashion Store
### EWA408510 – E-Commerce & Web Application Project
**University of Lay Adventists of Kigali (UNILAK)**  
Academic Year 2025–2026

---

## 📁 Project Structure

```
fashion_store/
├── index.html              ← Main homepage
├── css/
│   └── style.css           ← All styles (pink theme)
├── js/
│   └── main.js             ← Cart, products, checkout logic
├── php/
│   ├── config.php          ← Database connection settings
│   ├── products.php        ← Fetch products API
│   ├── orders.php          ← Place orders API
│   └── admin.php           ← Admin panel API
├── admin/
│   └── index.html          ← Admin panel
├── database.sql            ← Run this in MySQL Workbench
├── Dockerfile              ← Docker container setup
├── docker-compose.yml      ← Run app + database together
└── .github/
    └── workflows/
        └── deploy.yml      ← CI/CD pipeline
```

---

## 🚀 HOW TO RUN THE PROJECT

### Option 1: XAMPP (Easiest for beginners)

1. **Download XAMPP**: https://www.apachefriends.org/
2. **Copy project folder** into `C:\xampp\htdocs\fashion_store\`
3. **Start Apache and MySQL** in XAMPP Control Panel
4. **Set up the database**:
   - Open **MySQL Workbench** or go to `http://localhost/phpmyadmin`
   - Create a new database called `fashion_store`
   - Open `database.sql` and run all the SQL code
5. **Configure connection**: Open `php/config.php` and set your MySQL password
6. **Open the store**: Go to `http://localhost/fashion_store/`

---

### Option 2: Docker (One command!)

```bash
# Make sure Docker Desktop is installed, then run:
docker-compose up

# Open browser: http://localhost:8080
```

---

## 🗄️ DATABASE SETUP (MySQL Workbench)

1. Open **MySQL Workbench**
2. Connect to your local MySQL server
3. Click **File → Open SQL Script**
4. Select `database.sql`
5. Click the ⚡ (Execute) button
6. Done! Tables and sample products are created.

---

## 🔧 CONFIGURATION

Open `php/config.php` and update:
```php
define('DB_HOST', 'localhost');
define('DB_USER', 'root');       // your MySQL username
define('DB_PASS', '');           // your MySQL password (empty for XAMPP default)
define('DB_NAME', 'fashion_store');
```

---

## ✨ FEATURES

- 🛍️ Product listing with categories
- 🔍 Search functionality  
- 🛒 Shopping cart (add, remove, update quantities)
- 💳 Checkout with customer details
- 📦 Order confirmation
- 🗄️ MySQL database for products, customers, orders
- 📱 Mobile-responsive design
- 🖥️ Admin panel (add/delete products, view orders)
- 🐳 Docker containerization
- ⚙️ CI/CD with GitHub Actions

---

## 📦 DEPLOYMENT OPTIONS

| Platform | Free | PHP Support | MySQL |
|----------|------|-------------|-------|
| Railway  | ✅   | ✅          | ✅    |
| Render   | ✅   | ✅          | ✅    |
| InfinityFree | ✅ | ✅        | ✅    |
| 000webhost | ✅  | ✅         | ✅    |

---

## 🌸 Technologies Used

- **Frontend**: HTML5, CSS3, JavaScript (ES6)
- **Backend**: PHP 8.1
- **Database**: MySQL
- **Fonts**: Google Fonts (Playfair Display, Poppins)
- **Container**: Docker + docker-compose
- **CI/CD**: GitHub Actions

---

*Built with ❤️ for UNILAK EWA408510 Final Examination*
