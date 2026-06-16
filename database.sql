-- ============================================
-- FASHION STORE DATABASE
-- Run this in MySQL Workbench
-- ============================================

-- 1. Create the database
CREATE DATABASE IF NOT EXISTS fashion_store;
USE fashion_store;

-- 2. Categories table
CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Products table
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    category_id INT,
    image_url VARCHAR(300),
    stock INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- 4. Customers table
CREATE TABLE IF NOT EXISTS customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(200) NOT NULL,
    email VARCHAR(150) NOT NULL,
    phone VARCHAR(20),
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 5. Orders table
CREATE TABLE IF NOT EXISTS orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10,2) NOT NULL,
    status VARCHAR(50) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- 6. Order items table (what products are in each order)
CREATE TABLE IF NOT EXISTS order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- ============================================
-- SAMPLE DATA
-- ============================================

-- Insert categories
INSERT INTO categories (name) VALUES
('Dresses'),
('Tops'),
('Bags'),
('Shoes'),
('Accessories');

-- Insert sample products
INSERT INTO products (name, description, price, category_id, image_url, stock) VALUES
('Floral Wrap Dress', 'Beautiful floral wrap dress perfect for summer outings.', 45000, 1, 'https://images.unsplash.com/photo-1572804013309-59a88b7e92f1?w=400', 20),
('Pink Maxi Dress', 'Elegant pink maxi dress for special occasions.', 65000, 1, 'https://images.unsplash.com/photo-1566479179817-0b5b6b5b5b5b?w=400', 15),
('White Linen Dress', 'Casual white linen dress for everyday wear.', 38000, 1, 'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?w=400', 25),
('Silk Blouse', 'Luxurious silk blouse in rose pink.', 32000, 2, 'https://images.unsplash.com/photo-1564257631407-4deb1f99d992?w=400', 30),
('Crop Top Set', 'Trendy crop top and skirt matching set.', 28000, 2, 'https://images.unsplash.com/photo-1594938298603-c8148c4b4f53?w=400', 18),
('Pink Tote Bag', 'Stylish large tote bag in blush pink leather.', 55000, 3, 'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?w=400', 12),
('Mini Crossbody', 'Cute mini crossbody bag for nights out.', 35000, 3, 'https://images.unsplash.com/photo-1590874103328-eac38a683ce7?w=400', 20),
('Strappy Heels', 'Elegant strappy heels in nude pink.', 42000, 4, 'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?w=400', 15),
('White Sneakers', 'Clean white sneakers for casual style.', 48000, 4, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400', 22),
('Pearl Necklace', 'Dainty freshwater pearl necklace.', 18000, 5, 'https://images.unsplash.com/photo-1599459183200-59c7687a0c70?w=400', 35),
('Gold Earrings', 'Delicate gold hoop earrings.', 15000, 5, 'https://images.unsplash.com/photo-1535632066927-ab7c9ab60908?w=400', 40),
('Floral Midi Skirt', 'Romantic floral midi skirt with elastic waist.', 29000, 1, 'https://images.unsplash.com/photo-1583496661160-fb5886a0aaaa?w=400', 20);

-- ============================================
-- DONE! Your database is ready.
-- ============================================
SELECT 'Database setup complete!' AS message;
SELECT COUNT(*) AS total_products FROM products;
