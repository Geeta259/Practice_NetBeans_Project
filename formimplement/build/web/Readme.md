# Registration Page Project

This project implements a simple registration page using servlets and JSP. Upon submitting the registration form, the entered data will be displayed on another web page.

## Running the Project

To run this project on Eclipse with Tomcat, follow these steps:

1. **Clone the Repository:** Clone this repository to your local machine using Git or download the ZIP file and extract it.

2. **Open Eclipse:** Launch Eclipse IDE.

3. **Import Project:** Import the project into Eclipse.

   - Go to `File` > `Import`.
   - Select `Existing Projects into Workspace` and click `Next`.
   - Choose the root directory of the cloned repository.
   - Click `Finish`.

4. **Configure Tomcat Server:**

   - Ensure you have Apache Tomcat Server configured in Eclipse. If not, you can add it by going to `Window` > `Preferences` > `Server` > `Runtime Environments` and adding Apache Tomcat.

5. **Run the Project:**

   - Right-click on the project in the Project Explorer.
   - Select `Run As` > `Run on Server`.
   - Choose your configured Tomcat Server and click `Finish`.
   - This will deploy the project to Tomcat and start the server.

6. **Access the Registration Page:**

   - Open a web browser.
   - Navigate to `http://localhost:8080/<your_project_name>/registration.jsp`.
   - You should see the registration form.

7. **Submit the Form:**

   - Fill out the registration form with your details.
   - Click the submit button.
   - You will be redirected to another web page displaying the submitted data.

## Project Structure

- `WebContent/registration.jsp`: The registration form JSP page.
- `src/com/example/controller/RegistrationServlet.java`: Servlet handling form submission and displaying data.
