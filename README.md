

# Docker Compose PHP Nginx MySQL

A pre-configured Docker Compose environment for PHP development. This repository provides a ready-to-use stack including Nginx, PHP-FPM, MySQL 8, and PHPMyAdmin.

## ✨ Features

- **Nginx**: Web server handling requests and proxying to PHP.
- **PHP**: PHP-FPM container built from a custom `Dockerfile`.
- **MySQL**: Database service with persistent data storage.
- **PHPMyAdmin**: Web interface for managing the database.
- **Development Friendly**: Project files are mounted directly, enabling hot-reloading during development.

## 📋 Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/)

## 🚀 Installation & Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/alisalmabadi/docker-compose-php-nginx.git
   cd docker-compose-php-nginx
   ```

2. Start the services:
   ```bash
   docker-compose up -d
   ```

3. Access the application:
   - **Web Application**: [http://localhost](http://localhost)
   - **PHPMyAdmin**: [http://localhost:8081](http://localhost:8081)

## 🔐 Default Credentials

### Database (MySQL)
| Parameter | Value |
|-----------|-------|
| Host | `localhost` (or `db` from containers) |
| Port | `3306` |
| Database | `docker` |
| Root User | `root` |
| Root Password | `root` |
| User | `user` |
| Password | `user_password` |

### PHPMyAdmin
- **URL**: `http://localhost:8081`
- **Login**: Use the Database credentials listed above.

## 📁 Project Structure

- `docker-compose.yml`: Service definitions and network configuration.
- `nginx.conf`: Nginx configuration file.
- `Dockerfile`: Build instructions for the PHP-FPM service.
- `index.php`: Example PHP file demonstrating the setup.
- `database/`: Directory for MySQL data persistence.

## 🧹 Maintenance

- **Stop and remove containers:**
  ```bash
  docker-compose down
  ```

- **Stop containers and remove volumes (clears database data):**
  ```bash
  docker-compose down -v
  ```

- **View logs:**
  ```bash
  docker-compose logs -f
  ```
