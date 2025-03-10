# 🍔 Food Order Website

## 📌 Project Overview
The **Food Order Website** is a web application designed to streamline online food ordering. It allows users to browse restaurants, view their menus, and place orders. The platform supports **user authentication, restaurant management, and menu updates**.

## 🛠️ Tech Stack
- **Frontend:** HTML, CSS, JavaScript
- **Backend:** Spring Boot (REST APIs)
- **Database:** MySQL

## 🚀 Features

### 👤 User Features
- 🏠 **Home Page:** Displays a list of available restaurants.
- 📜 **Restaurant Menu:** Users can click on a restaurant to view its menu items.
- 🔐 **User Authentication:** Users can register and log in to place orders.

### 👨‍💼 Admin Features
- 🏢 **Restaurant Management:** Admins can register new restaurants.
- 🍽️ **Menu Management:** Admins can add or update menu items for restaurants.

## 🏗️ Installation & Setup

### Prerequisites
Ensure you have the following installed on your system:
- Java (JDK 11 or later)
- MySQL
- Node.js (for frontend development, if required)

### 🔹 Backend Setup (Spring Boot)
1. Clone the repository:
   ```bash
   git clone https://github.com/Selvamani2104/Food-delivery-website.git
   ```
2. Navigate to the backend directory:
   ```bash
   cd food-order-website/backend
   ```
3. Configure MySQL database in `application.properties`:
   ```properties
   spring.datasource.url=jdbc:mysql://localhost:3306/food_order
   spring.datasource.username=root
   spring.datasource.password=yourpassword
   ```
4. Build and run the application:
   ```bash
   mvn spring-boot:run
   ```

### 🔹 Frontend Setup
1. Navigate to the frontend directory:
   ```bash
   cd food-order-website/frontend
   ```
2. Open `index.html` in a browser or set up a local server:
   ```bash
   npx http-server .
   ```

## 📝 API Endpoints
| Method | Endpoint | Description |
|--------|----------|-------------|
| `POST` | `/api/customers/register` | Register a new user |
| `POST` | `/api/customers/login` | User login |
| `GET`  | `/api/users/restaurants` | Get all restaurants |
| `GET`  | `/menu/admin/{adminId}` | Get a restaurant's menu |
| `POST` | `/api/users/register` | Add a new restaurant (Admin) |
| `POST` | `/menu/add` | Add menu items (Admin) |

## 🤝 Contributing
Contributions are welcome! Feel free to fork the repository and submit pull requests.

## 📜 License
This project is licensed under the **MIT License**.

## 📬 Contact
For any issues or inquiries, reach out at: [selvasema21@gmail.com](mailto:selvasema21@gmail.com)
