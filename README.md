# Database Management System Project

This project is developed for university courses focusing on database normalization, particularly 3NF (Third Normal Form) and beyond. The project utilizes C# programming language and a Windows Form application to interact with a MySQL database.

## Overview

The project includes a Windows Form application that provides functionality to interact with a MySQL database. It allows users to manage data related to mobile phones, shops, buyers, sales transactions, and product information. The application ensures data integrity and consistency through proper database design and normalization techniques.

## Getting Started

To run the project, follow these steps:

1. **Clone the repository:**

2. **Set up the database:**
- Import the provided SQL schema file into your MySQL database management tool (e.g., phpMyAdmin) to create the necessary tables and relationships.
- Update the connection string in the C# code to match your MySQL server configuration.

3. **Build and run the application:**
- Open the project in Visual Studio or your preferred IDE.
- Build the solution and run the application.

## Features

- **CRUD Operations:** Perform Create, Read, Update, and Delete operations on mobile phones, shops, buyers, and sales transactions.
- **Data Validation:** Ensure data integrity by validating user inputs and enforcing constraints at the application level.
- **Normalization:** The database schema is designed to adhere to 3NF and beyond, minimizing data redundancy and dependency.

## Database Schema

The project uses the following tables in the MySQL database:

- `company`
- `shops`
- `mobiles`
- `register`
- `factor_details`
- `final_factors`
- `buyer_informations`
- `product_informations`

Each table represents a specific entity or relationship in the domain model, and foreign key constraints are established to maintain referential integrity.

## Requirements

- Visual Studio (or any compatible IDE for C# development)
- MySQL server
- MySQL database management tool (e.g., phpMyAdmin)
- .NET Framework

## Contributing

Contributions to this project are welcome! If you find any bugs or have suggestions for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
