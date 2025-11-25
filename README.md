# Event Management Website

A modern event management website built with JSP, HTML, and CSS, using Maven for build automation.

## Features

- **Home Page**: Welcome page with information about EventPro
- **Events Page**: Dynamic listing of upcoming events
- **Responsive Design**: Modern, mobile-friendly UI
- **Maven Build**: Automated build and packaging

## Technology Stack

- Java 8
- JSP (JavaServer Pages)
- HTML5
- CSS3
- Maven 3.x
- Servlet API 4.0

## Project Structure

```
event-management-website/
├── src/
│   └── main/
│       └── webapp/
│           ├── css/
│           │   └── style.css
│           ├── WEB-INF/
│           │   └── web.xml
│           ├── index.jsp
│           └── events.jsp
├── pom.xml
└── README.md
```

## Prerequisites

- Java JDK 8 or higher
- Maven 3.6 or higher
- Git (for version control)

## Building the Project

### Using Maven Lifecycle Commands

1. **Clean**: Remove previous build artifacts
   ```bash
   mvn clean
   ```

2. **Compile**: Compile the source code
   ```bash
   mvn compile
   ```

3. **Package**: Build the WAR file
   ```bash
   mvn package
   ```

4. **Install**: Install the package to local repository
   ```bash
   mvn install
   ```

5. **Complete Build**: Clean, compile, and package in one command
   ```bash
   mvn clean package
   ```

The WAR file will be generated in the `target/` directory as `event-management.war`.

## Deployment

### Deploying the WAR File

1. **Build the WAR file**:
   ```bash
   mvn clean package
   ```

2. **Deploy to Tomcat**:
   - Copy `target/event-management.war` to your Tomcat `webapps/` directory
   - Start Tomcat server
   - Access the application at: `http://localhost:8080/event-management/`

### Alternative Deployment Methods

- **Tomcat Manager**: Use the Tomcat Manager web interface to deploy
- **Maven Tomcat Plugin**: Use `mvn tomcat7:deploy` (requires plugin configuration)
- **Application Server**: Deploy to any Java EE compatible server (WildFly, GlassFish, etc.)

## Pages

1. **Home Page** (`index.jsp`): 
   - Welcome message
   - About section
   - Features overview
   - Call-to-action buttons

2. **Events Page** (`events.jsp`):
   - Dynamic list of upcoming events
   - Event details (date, location, description)
   - Responsive grid layout

## Development

### Running Locally

1. Clone the repository
2. Build the project: `mvn clean package`
3. Deploy the WAR file to your application server
4. Access the application through your server's URL

## Maven Goals

- `mvn clean` - Clean build directory
- `mvn compile` - Compile source code
- `mvn test` - Run tests
- `mvn package` - Package as WAR
- `mvn install` - Install to local repository
- `mvn deploy` - Deploy to remote repository

## License

This project is open source and available for educational purposes.

