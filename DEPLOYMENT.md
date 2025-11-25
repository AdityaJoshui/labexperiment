# Deployment Guide

## WAR File Location

The built WAR file is located at:
```
target/event-management.war
```

## Deployment Options

### Option 1: Apache Tomcat (Recommended for Development)

1. **Download and Install Tomcat**
   - Download Apache Tomcat 9.x or 10.x from [tomcat.apache.org](https://tomcat.apache.org)
   - Extract to a directory (e.g., `C:\apache-tomcat-9.0.xx`)

2. **Deploy the WAR File**
   ```bash
   # Copy the WAR file to Tomcat's webapps directory
   copy target\event-management.war C:\apache-tomcat-9.0.xx\webapps\
   ```

3. **Start Tomcat**
   ```bash
   # Windows
   C:\apache-tomcat-9.0.xx\bin\startup.bat
   
   # Linux/Mac
   ./apache-tomcat-9.0.xx/bin/startup.sh
   ```

4. **Access the Application**
   - Open browser: `http://localhost:8080/event-management/`
   - The application will be available at the context path `/event-management`

### Option 2: Using Maven Tomcat Plugin

Add to `pom.xml` (if not already present):

```xml
<plugin>
    <groupId>org.apache.tomcat.maven</groupId>
    <artifactId>tomcat7-maven-plugin</artifactId>
    <version>2.2</version>
    <configuration>
        <port>8080</port>
        <path>/event-management</path>
    </configuration>
</plugin>
```

Then run:
```bash
mvn clean package tomcat7:deploy
# or
mvn clean package tomcat7:run
```

### Option 3: Other Application Servers

The WAR file can be deployed to:
- **WildFly/JBoss**: Copy to `standalone/deployments/`
- **GlassFish**: Use admin console or `asadmin deploy`
- **WebLogic**: Use admin console
- **Jetty**: Use Jetty runner or embedded Jetty

## Rebuilding the WAR File

To rebuild the WAR file after making changes:

```bash
# Clean and rebuild
mvn clean package

# The new WAR file will be in target/event-management.war
```

## Maven Lifecycle Commands

### Clean
```bash
mvn clean
```
Removes the `target/` directory and all build artifacts.

### Compile
```bash
mvn compile
```
Compiles the source code (if any Java files exist).

### Package
```bash
mvn package
```
Compiles, tests, and packages the project into a WAR file.

### Install
```bash
mvn install
```
Packages and installs the WAR into the local Maven repository.

### Complete Build
```bash
mvn clean package
```
Cleans previous builds and creates a fresh WAR file.

## Verification

After deployment, verify:
1. ✅ Home page loads: `http://localhost:8080/event-management/`
2. ✅ Events page loads: `http://localhost:8080/event-management/events.jsp`
3. ✅ CSS styling is applied correctly
4. ✅ Navigation between pages works

## Troubleshooting

### WAR file not found
- Run `mvn clean package` to generate the WAR file
- Check that the build completed successfully

### 404 Error
- Verify the context path matches your deployment
- Check Tomcat logs in `logs/catalina.out`

### CSS not loading
- Verify the CSS file path in JSP pages
- Check browser console for 404 errors on CSS resources
- Ensure `css/style.css` is included in the WAR file

### Port already in use
- Change Tomcat port in `conf/server.xml`
- Or stop the process using port 8080

