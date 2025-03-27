# Running JSP/Servlet Web Application in Tomcat

This is a simple web application built with JSP and Servlets. It demonstrates how to track users across different pages using sessions.

## Prerequisites

- Java Development Kit (JDK) installed on your machine
- Apache Tomcat installed on your machine

## Steps to Run

1. **Clone the Repository:**

   -open this project in eclipse .

2. **Deploy the Application to Tomcat:**

   - Copy the WAR file to the `webapps` directory of your Tomcat installation.

     ```bash
     cp jsp-servlet-user-tracking.war /path/to/tomcat/webapps/
     ```

3. **Start Tomcat:**

   - Navigate to the `bin` directory of your Tomcat installation.
   - Execute the startup script:

     ```bash
     ./startup.sh    # for Unix/Linux
     ./startup.bat   # for Windows
     ```

4. **Access the Application:**

   - Open a web browser and go to the following URL:

     ```
     http://localhost:8080/jsp-servlet-user-tracking/login.jsp
     ```

5. **Login:**

   - You'll be directed to the login page.
   - Enter a username and click the "Login" button.

6. **View User Information:**

   - After logging in, you'll be redirected to the user information page.
   - Here, you'll see your user ID and username.

## Directory Structure
WEB-INF/
lib/ # Contains necessary JAR files
classes/ # Contains compiled Java classes
login.jsp # JSP page for user login
user_info.jsp # JSP page to display user information
src/
LoginServlet.java # Servlet to handle user login
web.xml # Deployment descriptor
