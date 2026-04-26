<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>Aether | Premium E-Commerce Experience</title>
    
    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-primary: #ffffff;
            --bg-secondary: #fafbfc;
            --text-primary: #1a1f36;
            --text-secondary: #5c6ac4;
            --text-muted: #8a99b5;
            --accent: #3f5ef0;
            --accent-light: #eef2ff;
            --accent-glow: rgba(63, 94, 240, 0.15);
            --success: #10b981;
            --border: #e5e9f0;
            --shadow-sm: 0 4px 12px rgba(0, 0, 0, 0.03);
            --shadow-md: 0 8px 24px rgba(0, 0, 0, 0.05);
            --shadow-lg: 0 20px 40px rgba(0, 0, 0, 0.08);
            --radius-sm: 12px;
            --radius-md: 16px;
            --radius-lg: 24px;
        }

        body {
            font-family: 'Space Grotesk', sans-serif;
            background: var(--bg-secondary);
            color: var(--text-primary);
            line-height: 1.5;
            overflow-x: hidden;
        }

        /* Smooth Scroll */
        html {
            scroll-behavior: smooth;
        }

        /* Custom Scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
            height: 8px;
        }
        ::-webkit-scrollbar-track {
            background: var(--bg-secondary);
        }
        ::-webkit-scrollbar-thumb {
            background: var(--text-muted);
            border-radius: 10px;
        }
        ::-webkit-scrollbar-thumb:hover {
            background: var(--accent);
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* Header Styles */
        .header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.98);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid var(--border);
        }

        .header-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 0;
            gap: 24px;
        }

        .logo {
            font-size: 28px;
            font-weight: 700;
            background: linear-gradient(135deg, var(--text-primary) 0%, var(--accent) 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            letter-spacing: -0.5px;
        }

        .logo span {
            background: none;
            color: var(--accent);
        }

        .nav-menu {
            display: flex;
            gap: 32px;
            align-items: center;
        }

        .nav-link {
            text-decoration: none;
            color: var(--text-secondary);
            font-weight: 500;
            transition: all 0.2s ease;
            position: relative;
        }

        .nav-link:hover {
            color: var(--accent);
        }

        .nav-link::after {
            content: '';
            position: absolute;
            bottom: -4px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--accent);
            transition: width 0.2s ease;
        }

        .nav-link:hover::after {
            width: 100%;
        }

        /* Search Bar */
        .search-container {
            flex: 1;
            max-width: 400px;
        }

        .search-bar {
            display: flex;
            align-items: center;
            background: var(--bg-secondary);
            border: 1px solid var(--border);
            border-radius: 60px;
            padding: 8px 16px;
            transition: all 0.2s ease;
        }

        .search-bar:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-glow);
        }

        .search-bar input {
            flex: 1;
            border: none;
            background: none;
            outline: none;
            font-size: 14px;
            padding: 8px;
            font-family: inherit;
        }

        .search-bar button {
            background: none;
            border: none;
            cursor: pointer;
            color: var(--text-muted);
            transition: color 0.2s;
        }

        .search-bar button:hover {
            color: var(--accent);
        }

        /* Header Actions */
        .header-actions {
            display: flex;
            gap: 16px;
            align-items: center;
        }

        .icon-btn {
            background: var(--bg-secondary);
            border: 1px solid var(--border);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.2s ease;
            color: var(--text-secondary);
        }

        .icon-btn:hover {
            background: var(--accent);
            border-color: var(--accent);
            color: white;
            transform: translateY(-2px);
        }

        .cart-btn {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -5px;
            right: -5px;
            background: var(--accent);
            color: white;
            font-size: 11px;
            font-weight: 600;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border-radius: var(--radius-lg);
            margin: 32px 0;
            padding: 80px 60px;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -20%;
            width: 80%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 70%);
            transform: rotate(15deg);
        }

        .hero-content {
            position: relative;
            z-index: 1;
            max-width: 600px;
        }

        .hero-badge {
            display: inline-block;
            background: rgba(255,255,255,0.2);
            backdrop-filter: blur(10px);
            padding: 6px 16px;
            border-radius: 60px;
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 24px;
        }

        .hero h1 {
            font-size: 56px;
            font-weight: 700;
            color: white;
            line-height: 1.2;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 18px;
            color: rgba(255,255,255,0.9);
            margin-bottom: 32px;
        }

        .hero-buttons {
            display: flex;
            gap: 16px;
        }

        .btn-primary {
            background: white;
            color: var(--accent);
            border: none;
            padding: 14px 32px;
            border-radius: 60px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s ease;
            font-family: inherit;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .btn-secondary {
            background: rgba(255,255,255,0.2);
            backdrop-filter: blur(10px);
            color: white;
            border: 1px solid rgba(255,255,255,0.3);
            padding: 14px 32px;
            border-radius: 60px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s ease;
            font-family: inherit;
        }

        .btn-secondary:hover {
            background: rgba(255,255,255,0.3);
            transform: translateY(-2px);
        }

        /* Section Styles */
        .section {
            padding: 64px 0;
        }

        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-header h2 {
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 12px;
            background: linear-gradient(135deg, var(--text-primary) 0%, var(--accent) 100%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .section-header p {
            color: var(--text-muted);
            font-size: 18px;
        }

        /* Categories Grid */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 24px;
        }

        .category-card {
            background: white;
            border-radius: var(--radius-md);
            padding: 32px 24px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s ease;
            border: 1px solid var(--border);
            position: relative;
            overflow: hidden;
        }

        .category-card::before {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 3px;
            background: linear-gradient(90deg, var(--accent), var(--accent-light));
            transform: scaleX(0);
            transition: transform 0.3s ease;
        }

        .category-card:hover::before {
            transform: scaleX(1);
        }

        .category-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
        }

        .category-icon {
            font-size: 48px;
            margin-bottom: 16px;
        }

        .category-card h3 {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 8px;
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
        }

        .product-card {
            background: white;
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: all 0.3s ease;
            border: 1px solid var(--border);
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
        }

        .product-badge {
            position: absolute;
            top: 16px;
            left: 16px;
            background: var(--accent);
            color: white;
            padding: 4px 12px;
            border-radius: 60px;
            font-size: 12px;
            font-weight: 600;
            z-index: 1;
        }

        .product-badge.sale {
            background: #ef4444;
        }

        .product-image {
            width: 100%;
            height: 260px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .product-card:hover .product-image {
            transform: scale(1.05);
        }

        .product-info {
            padding: 20px;
        }

        .product-title {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .product-category {
            color: var(--text-muted);
            font-size: 14px;
            margin-bottom: 12px;
        }

        .product-price {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 12px;
        }

        .current-price {
            font-size: 24px;
            font-weight: 700;
            color: var(--accent);
        }

        .old-price {
            color: var(--text-muted);
            text-decoration: line-through;
            font-size: 16px;
        }

        .product-rating {
            color: #fbbf24;
            font-size: 14px;
            margin-bottom: 16px;
        }

        .product-actions {
            display: flex;
            gap: 12px;
        }

        .add-to-cart {
            flex: 1;
            background: var(--accent);
            color: white;
            border: none;
            padding: 12px;
            border-radius: var(--radius-sm);
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s ease;
            font-family: inherit;
        }

        .add-to-cart:hover {
            background: #2d4ed8;
            transform: translateY(-2px);
        }

        .wishlist-btn {
            background: var(--bg-secondary);
            border: 1px solid var(--border);
            width: 44px;
            border-radius: var(--radius-sm);
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .wishlist-btn:hover {
            background: #fee2e2;
            border-color: #ef4444;
            color: #ef4444;
        }

        /* Flash Sale Section */
        .flash-sale {
            background: linear-gradient(135deg, #1e293b 0%, #0f172a 100%);
            border-radius: var(--radius-lg);
            padding: 48px;
            margin: 32px 0;
            position: relative;
            overflow: hidden;
        }

        .flash-sale::before {
            content: '';
            position: absolute;
            top: -50%;
            right: -20%;
            width: 60%;
            height: 200%;
            background: radial-gradient(circle, rgba(63,94,240,0.1) 0%, transparent 70%);
            transform: rotate(15deg);
        }

        .sale-content {
            position: relative;
            z-index: 1;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 48px;
            align-items: center;
        }

        .sale-info h3 {
            font-size: 36px;
            font-weight: 700;
            color: white;
            margin-bottom: 16px;
        }

        .sale-info p {
            color: rgba(255,255,255,0.8);
            margin-bottom: 24px;
        }

        .timer {
            display: flex;
            gap: 16px;
            margin-bottom: 32px;
        }

        .timer-box {
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(10px);
            padding: 16px;
            border-radius: var(--radius-sm);
            text-align: center;
            min-width: 80px;
        }

        .timer-number {
            font-size: 32px;
            font-weight: 700;
            color: white;
        }

        .timer-label {
            font-size: 12px;
            color: rgba(255,255,255,0.7);
            margin-top: 4px;
        }

        .sale-price {
            display: flex;
            align-items: center;
            gap: 16px;
            margin-bottom: 24px;
        }

        .sale-current {
            font-size: 36px;
            font-weight: 700;
            color: #fbbf24;
        }

        .sale-old {
            font-size: 20px;
            color: rgba(255,255,255,0.5);
            text-decoration: line-through;
        }

        .sale-image img {
            width: 100%;
            border-radius: var(--radius-md);
            box-shadow: var(--shadow-lg);
        }

        /* Testimonials */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 32px;
            margin-top: 32px;
        }

        .testimonial-card {
            background: white;
            border-radius: var(--radius-md);
            padding: 32px;
            border: 1px solid var(--border);
            transition: all 0.3s ease;
        }

        .testimonial-card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-md);
        }

        .testimonial-rating {
            color: #fbbf24;
            margin-bottom: 16px;
        }

        .testimonial-text {
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 24px;
            color: var(--text-secondary);
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .author-avatar {
            width: 48px;
            height: 48px;
            border-radius: 50%;
            object-fit: cover;
        }

        .author-name {
            font-weight: 600;
            margin-bottom: 4px;
        }

        .author-title {
            font-size: 14px;
            color: var(--text-muted);
        }

        /* Newsletter */
        .newsletter {
            background: var(--accent-light);
            border-radius: var(--radius-lg);
            padding: 64px;
            text-align: center;
        }

        .newsletter h3 {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 16px;
        }

        .newsletter p {
            color: var(--text-secondary);
            margin-bottom: 32px;
        }

        .newsletter-form {
            display: flex;
            gap: 16px;
            justify-content: center;
            max-width: 500px;
            margin: 0 auto;
        }

        .newsletter-form input {
            flex: 1;
            padding: 14px 20px;
            border: 1px solid var(--border);
            border-radius: 60px;
            font-family: inherit;
            outline: none;
        }

        .newsletter-form input:focus {
            border-color: var(--accent);
        }

        /* Footer */
        .footer {
            background: white;
            border-top: 1px solid var(--border);
            padding: 48px 0 32px;
            margin-top: 64px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: 2fr 3fr;
            gap: 48px;
            margin-bottom: 48px;
        }

        .footer-brand p {
            color: var(--text-muted);
            margin: 16px 0;
        }

        .footer-links {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 32px;
        }

        .footer-column h4 {
            font-weight: 600;
            margin-bottom: 16px;
        }

        .footer-column a {
            display: block;
            color: var(--text-muted);
            text-decoration: none;
            margin-bottom: 12px;
            transition: color 0.2s;
        }

        .footer-column a:hover {
            color: var(--accent);
        }

        .social-links {
            display: flex;
            gap: 16px;
            margin-top: 16px;
        }

        .social-links a {
            width: 40px;
            height: 40px;
            background: var(--bg-secondary);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.2s;
        }

        .social-links a:hover {
            background: var(--accent);
            color: white;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 32px;
            border-top: 1px solid var(--border);
            color: var(--text-muted);
        }

        /* Mobile Menu */
        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            cursor: pointer;
        }

        .mobile-menu {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: white;
            z-index: 1000;
            padding: 80px 32px 32px;
        }

        .mobile-menu.active {
            display: block;
        }

        .mobile-menu-close {
            position: absolute;
            top: 20px;
            right: 20px;
            background: none;
            border: none;
            font-size: 32px;
            cursor: pointer;
        }

        .mobile-nav-links {
            display: flex;
            flex-direction: column;
            gap: 24px;
        }

        .mobile-nav-links a {
            font-size: 24px;
            text-decoration: none;
            color: var(--text-primary);
        }

        /* Responsive */
        @media (max-width: 1024px) {
            .container {
                padding: 0 24px;
            }
            
            .hero h1 {
                font-size: 44px;
            }
            
            .sale-content {
                grid-template-columns: 1fr;
            }
        }

        @media (max-width: 768px) {
            .nav-menu {
                display: none;
            }
            
            .mobile-toggle {
                display: block;
            }
            
            .search-container {
                max-width: none;
            }
            
            .hero {
                padding: 48px 32px;
            }
            
            .hero h1 {
                font-size: 32px;
            }
            
            .section-header h2 {
                font-size: 28px;
            }
            
            .footer-content {
                grid-template-columns: 1fr;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

<header class="header">
    <div class="container">
        <div class="header-content">
            <button class="mobile-toggle" id="mobileToggle">
                <i class="fas fa-bars"></i>
            </button>
            
            <div class="logo">AETH<span>ER</span></div>
            
            <nav class="nav-menu">
                <a href="#" class="nav-link">Home</a>
                <a href="#" class="nav-link">Shop</a>
                <a href="#" class="nav-link">Collections</a>
                <a href="#" class="nav-link">About</a>
                <a href="#" class="nav-link">Contact</a>
            </nav>
            
            <div class="search-container">
                <div class="search-bar">
                    <input type="text" id="searchInput" placeholder="Search products...">
                    <button id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
            </div>
            
            <div class="header-actions">
                <button class="icon-btn"><i class="far fa-user"></i></button>
                <button class="icon-btn"><i class="far fa-heart"></i></button>
                <button class="icon-btn cart-btn" id="cartBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </div>
</header>

<main>
    <div class="container">
        <!-- Hero Section -->
        <section class="hero">
            <div class="hero-content">
                <div class="hero-badge">✨ Limited Edition Drop</div>
                <h1>Elevate Your<br>Everyday Style</h1>
                <p>Discover curated collections from world-class brands. Free shipping on orders over $50.</p>
                <div class="hero-buttons">
                    <button class="btn-primary" id="shopNowBtn">Shop Now →</button>
                    <button class="btn-secondary" id="exploreBtn">Explore Collections</button>
                </div>
            </div>
        </section>
        
        <!-- Categories -->
        <section class="section">
            <div class="section-header">
                <h2>Shop by Category</h2>
                <p>Find exactly what you're looking for</p>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>
        
        <!-- Products -->
        <section class="section">
            <div class="section-header">
                <h2>Trending Now</h2>
                <p>Most popular products this week</p>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>
        
        <!-- Flash Sale -->
        <section class="flash-sale" id="deals">
            <div class="sale-content">
                <div class="sale-info">
                    <h3>Flash Sale</h3>
                    <p>Limited time offer - Get up to 40% off on selected items</p>
                    <div class="timer">
                        <div class="timer-box">
                            <div class="timer-number" id="days">00</div>
                            <div class="timer-label">Days</div>
                        </div>
                        <div class="timer-box">
                            <div class="timer-number" id="hours">00</div>
                            <div class="timer-label">Hours</div>
                        </div>
                        <div class="timer-box">
                            <div class="timer-number" id="minutes">00</div>
                            <div class="timer-label">Mins</div>
                        </div>
                        <div class="timer-box">
                            <div class="timer-number" id="seconds">00</div>
                            <div class="timer-label">Secs</div>
                        </div>
                    </div>
                    <div class="sale-price">
                        <span class="sale-current">$999</span>
                        <span class="sale-old">$1,599</span>
                        <span class="hero-badge" style="background: #ef4444;">-37% OFF</span>
                    </div>
                    <button class="btn-primary" id="dealBtn">Grab Deal Now →</button>
                </div>
                <div class="sale-image">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="Sale product">
                </div>
            </div>
        </section>
        
        <!-- Testimonials -->
        <section class="section">
            <div class="section-header">
                <h2>What Our Customers Say</h2>
                <p>Join thousands of happy customers</p>
            </div>
            <div class="testimonials-grid" id="testimonialsGrid"></div>
        </section>
        
        <!-- Newsletter -->
        <section class="newsletter">
            <h3>Stay in the Loop</h3>
            <p>Subscribe to get exclusive offers and early access to new arrivals</p>
            <form class="newsletter-form" id="newsletterForm">
                <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
                <button type="submit" class="btn-primary">Subscribe →</button>
            </form>
            <div id="newsletterMsg" style="margin-top: 16px; display: none;"></div>
        </section>
    </div>
</main>

<footer class="footer">
    <div class="container">
        <div class="footer-content">
            <div class="footer-brand">
                <div class="logo" style="font-size: 24px;">AETH<span>ER</span></div>
                <p>Redefining modern commerce with curated collections and exceptional service.</p>
                <div class="social-links">
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-pinterest"></i></a>
                </div>
            </div>
            <div class="footer-links">
                <div class="footer-column">
                    <h4>Shop</h4>
                    <a href="#">New Arrivals</a>
                    <a href="#">Best Sellers</a>
                    <a href="#">Sale</a>
                    <a href="#">Gift Cards</a>
                </div>
                <div class="footer-column">
                    <h4>Support</h4>
                    <a href="#">FAQ</a>
                    <a href="#">Shipping</a>
                    <a href="#">Returns</a>
                    <a href="#">Size Guide</a>
                </div>
                <div class="footer-column">
                    <h4>Company</h4>
                    <a href="#">About Us</a>
                    <a href="#">Sustainability</a>
                    <a href="#">Careers</a>
                    <a href="#">Press</a>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <p>© 2024 AETHER. All rights reserved.</p>
        </div>
    </div>
</footer>

<!-- Mobile Menu -->
<div class="mobile-menu" id="mobileMenu">
    <button class="mobile-menu-close" id="closeMobileMenu">×</button>
    <div class="mobile-nav-links">
        <a href="#">Home</a>
        <a href="#">Shop</a>
        <a href="#">Collections</a>
        <a href="#">About</a>
        <a href="#">Contact</a>
    </div>
</div>

<script>
    // Data
    const CATEGORIES = [
        { id: 1, name: 'Electronics', icon: 'fa-laptop', color: '#3f5ef0' },
        { id: 2, name: 'Fashion', icon: 'fa-tshirt', color: '#ec489a' },
        { id: 3, name: 'Home & Living', icon: 'fa-home', color: '#10b981' },
        { id: 4, name: 'Beauty', icon: 'fa-spa', color: '#f59e0b' },
        { id: 5, name: 'Sports', icon: 'fa-futbol', color: '#ef4444' },
        { id: 6, name: 'Books', icon: 'fa-book', color: '#8b5cf6' }
    ];
    
    const PRODUCTS = [
        { id: 1, name: 'Wireless Headphones', category: 'Electronics', price: 199, oldPrice: 299, rating: 4.8, reviews: 234, image: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80', badge: 'Sale' },
        { id: 2, name: 'Smart Watch Ultra', category: 'Electronics', price: 399, oldPrice: 499, rating: 4.9, reviews: 178, image: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80', badge: 'New' },
        { id: 3, name: 'Leather Backpack', category: 'Fashion', price: 89, rating: 4.7, reviews: 456, image: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', badge: null },
        { id: 4, name: 'Minimalist Sneakers', category: 'Fashion', price: 129, oldPrice: 189, rating: 4.6, reviews: 892, image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80', badge: 'Sale' },
        { id: 5, name: 'Ceramic Coffee Set', category: 'Home & Living', price: 59, rating: 4.5, reviews: 234, image: 'https://images.unsplash.com/photo-1517256064527-09c92fc77c97?auto=format&fit=crop&w=600&q=80', badge: null },
        { id: 6, name: 'Skincare Kit', category: 'Beauty', price: 79, oldPrice: 120, rating: 4.8, reviews: 567, image: 'https://images.unsplash.com/photo-1556228720-195a672e8a03?auto=format&fit=crop&w=600&q=80', badge: 'Sale' }
    ];
    
    const TESTIMONIALS = [
        { name: 'Sarah Johnson', role: 'Verified Buyer', text: 'Absolutely love the quality! The packaging was beautiful and shipping was super fast.', rating: 5, avatar: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80' },
        { name: 'Michael Chen', role: 'Frequent Shopper', text: 'Great selection of products. Customer service is responsive and helpful.', rating: 5, avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80' },
        { name: 'Emma Davis', role: 'Designer', text: 'The aesthetic of this store is incredible. Will definitely shop here again!', rating: 4, avatar: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=100&q=80' }
    ];
    
    let cartCount = 0;
    
    // Render functions
    function renderCategories() {
        const grid = document.getElementById('categoriesGrid');
        grid.innerHTML = CATEGORIES.map(cat => `
            <div class="category-card" data-category="${cat.name}">
                <div class="category-icon" style="color: ${cat.color}">
                    <i class="fas ${cat.icon}"></i>
                </div>
                <h3>${cat.name}</h3>
                <p style="color: var(--text-muted); font-size: 14px;">Shop Now →</p>
            </div>
        `).join('');
        
        document.querySelectorAll('.category-card').forEach(card => {
            card.addEventListener('click', () => {
                const category = card.dataset.category;
                document.getElementById('searchInput').value = category;
                filterProducts(category);
            });
        });
    }
    
    function renderProducts(products) {
        const grid = document.getElementById('productsGrid');
        grid.innerHTML = products.map(product => `
            <div class="product-card">
                ${product.badge ? `<div class="product-badge ${product.badge === 'Sale' ? 'sale' : ''}">${product.badge}</div>` : ''}
                <img src="${product.image}" alt="${product.name}" class="product-image">
                <div class="product-info">
                    <h3 class="product-title">${product.name}</h3>
                    <div class="product-category">${product.category}</div>
                    <div class="product-price">
                        <span class="current-price">$${product.price}</span>
                        ${product.oldPrice ? `<span class="old-price">$${product.oldPrice}</span>` : ''}
                    </div>
                    <div class="product-rating">
                        ${'★'.repeat(Math.floor(product.rating))}${product.rating % 1 ? '½' : ''}
                        <span style="color: var(--text-muted); margin-left: 8px;">(${product.reviews})</span>
                    </div>
                    <div class="product-actions">
                        <button class="add-to-cart" data-id="${product.id}">Add to Cart</button>
                        <button class="wishlist-btn"><i class="far fa-heart"></i></button>
                    </div>
                </div>
            </div>
        `).join('');
        
        document.querySelectorAll('.add-to-cart').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCart(id);
            });
        });
    }
    
    function renderTestimonials() {
        const grid = document.getElementById('testimonialsGrid');
        grid.innerHTML = TESTIMONIALS.map(test => `
            <div class="testimonial-card">
                <div class="testimonial-rating">
                    ${'★'.repeat(test.rating)}${test.rating < 5 ? '☆'.repeat(5-test.rating) : ''}
                </div>
                <p class="testimonial-text">"${test.text}"</p>
                <div class="testimonial-author">
                    <img src="${test.avatar}" alt="${test.name}" class="author-avatar">
                    <div>
                        <div class="author-name">${test.name}</div>
                        <div class="author-title">${test.role}</div>
                    </div>
                </div>
            </div>
        `).join('');
    }
    
    function addToCart(productId) {
        cartCount++;
        document.getElementById('cartCount').textContent = cartCount;
        const btn = document.querySelector(`.add-to-cart[data-id="${productId}"]`);
        const originalText = btn.textContent;
        btn.textContent = 'Added! ✓';
        btn.style.background = '#10b981';
        setTimeout(() => {
            btn.textContent = originalText;
            btn.style.background = '';
        }, 1500);
    }
    
    function filterProducts(query) {
        const filtered = PRODUCTS.filter(p => 
            p.name.toLowerCase().includes(query.toLowerCase()) || 
            p.category.toLowerCase().includes(query.toLowerCase())
        );
        renderProducts(filtered);
    }
    
    // Timer
    function startTimer() {
        const target = new Date();
        target.setDate(target.getDate() + 2);
        target.setHours(23, 59, 59);
        
        function updateTimer() {
            const now = new Date();
            const diff = target - now;
            
            if (diff <= 0) {
                clearInterval(timer);
                return;
            }
            
            const days = Math.floor(diff / (1000 * 60 * 60 * 24));
            const hours = Math.floor((diff % (86400000)) / 3600000);
            const minutes = Math.floor((diff % 3600000) / 60000);
            const seconds = Math.floor((diff % 60000) / 1000);
            
            document.getElementById('days').textContent = String(days).padStart(2, '0');
            document.getElementById('hours').textContent = String(hours).padStart(2, '0');
            document.getElementById('minutes').textContent = String(minutes).padStart(2, '0');
            document.getElementById('seconds').textContent = String(seconds).padStart(2, '0');
        }
        
        updateTimer();
        const timer = setInterval(updateTimer, 1000);
    }
    
    // Event Listeners
    document.getElementById('searchBtn').addEventListener('click', () => {
        filterProducts(document.getElementById('searchInput').value);
    });
    
    document.getElementById('searchInput').addEventListener('keypress', (e) => {
        if (e.key === 'Enter') filterProducts(e.target.value);
    });
    
    document.getElementById('shopNowBtn').addEventListener('click', () => {
        document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' });
    });
    
    document.getElementById('dealBtn').addEventListener('click', () => {
        cartCount++;
        document.getElementById('cartCount').textContent = cartCount;
        alert('🔥 Deal added to cart!');
    });
    
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsletterEmail').value;
        const msg = document.getElementById('newsletterMsg');
        if (email && email.includes('@')) {
            msg.style.display = 'block';
            msg.style.color = '#10b981';
            msg.textContent = '✓ Thanks for subscribing!';
            document.getElementById('newsletterEmail').value = '';
            setTimeout(() => msg.style.display = 'none', 3000);
        }
    });
    
    // Mobile menu
    const mobileToggle = document.getElementById('mobileToggle');
    const mobileMenu = document.getElementById('mobileMenu');
    const closeMobileMenu = document.getElementById('closeMobileMenu');
    
    mobileToggle.addEventListener('click', () => {
        mobileMenu.classList.add('active');
    });
    
    closeMobileMenu.addEventListener('click', () => {
        mobileMenu.classList.remove('active');
    });
    
    // Initialize
    renderCategories();
    renderProducts(PRODUCTS);
    renderTestimonials();
    startTimer();
</script>
</body>
</html>
