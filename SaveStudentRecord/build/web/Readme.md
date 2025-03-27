# Student Registration System

This project is a simple web application that allows users to register students and store their information in a database (MySQL). It consists of a registration form where users can input student details and a servlet to handle the insertion of records into the database.

## Prerequisites

Before running this project, ensure that you have the following installed:

- Java Development Kit (JDK)
- Apache Tomcat (or any other servlet container)
- MySQL Server

## Database Setup

1. Create a MySQL database named `university`.
2. Create a table named `students` with the following columns:
   - id (auto-increment)
   - name (VARCHAR)
   - age (INT)
   - email (VARCHAR)
   - course (VARCHAR)
   - gender (VARCHAR)

## Running the Project

1. Clone this repository to your local machine.

2. Place the `InsertStudentServlet.java` file in your servlets directory.

3. Place the `insert_student.html` file in your web content directory.

4. Update the JDBC connection URL, username, and password in `InsertStudentServlet.java` to match your MySQL database configuration.

5. Compile `InsertStudentServlet.java` and deploy it on your servlet container (e.g., Apache Tomcat).

6. Start your MySQL server.

7. Access the registration form by navigating to `http://localhost:8080/<your_context_root>/insert_student.html` in your web browser.

8. Fill out the form with student details and submit the form.

9. The servlet will insert the student record into the database, and you will be redirected back to the registration form.

## Project Structure

- **InsertStudentServlet.java**: Servlet for inserting student records into the database.
- **insert_student.html**: HTML form for entering student details.


