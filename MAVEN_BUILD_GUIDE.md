# Maven Build and Deployment Guide

## Maven Lifecycle Commands

### Complete Build Process

The Maven build lifecycle follows these phases:

1. **validate** - Validate the project is correct
2. **compile** - Compile the source code
3. **test** - Run tests
4. **package** - Package compiled code into WAR file
5. **verify** - Run checks to verify package is valid
6. **install** - Install package into local repository
7. **deploy** - Copy package to remote repository

### Common Maven Commands

#### Clean Build (Recommended)
```bash
mvn clean package
```
- Removes previous build artifacts
- Compiles and packages fresh WAR file
- Output: `target/event-management.war`

#### Package Only
```bash
mvn package
```
- Packages without cleaning
- Faster for incremental builds
- Output: `target/event-management.war`

#### Install to Local Repository
```bash
mvn install
```
- Packages and installs to local Maven repository
- Makes it available for other projects

#### Complete Lifecycle
```bash
mvn clean compile test package install
```
- Runs full lifecycle from clean to install

### Build Output

After running `mvn package`, you'll find:

```
target/
├── event-management.war          (Deployable WAR file - 374 KB)
└── event-management/              (Exploded WAR directory)
    ├── css/
    │   └── style.css
    ├── index.jsp
    ├── events.jsp
    ├── WEB-INF/
    │   ├── web.xml
    │   └── lib/
    │       └── jstl-1.2.jar
    └── META-INF/
```

### Deployment Options

#### Option 1: Deploy WAR to Tomcat
```bash
# Copy WAR file to Tomcat webapps directory
copy target\event-management.war C:\apache-tomcat-9.0.xx\webapps\
```

#### Option 2: Use Maven Tomcat Plugin
```bash
# Run embedded Tomcat
mvn tomcat7:run

# Deploy to Tomcat
mvn tomcat7:deploy
```

#### Option 3: Manual Deployment
1. Build: `mvn package`
2. Copy `target/event-management.war` to your application server
3. Start server
4. Access: `http://localhost:8080/event-management/`

### Build Verification

Check build success:
```bash
# Verify WAR file exists
dir target\event-management.war

# Check file size (should be ~374 KB)
```

### Troubleshooting

**Build fails with "clean" error:**
- Tomcat server is running
- Solution: Use `mvn package` instead of `mvn clean package`
- Or stop Tomcat first

**WAR file not generated:**
- Check for compilation errors
- Verify `pom.xml` is correct
- Run `mvn package` again

**Dependencies not found:**
- Maven will download automatically
- Check internet connection
- Verify Maven settings.xml

## Automated Build Script

Create `build.bat` for Windows:
```batch
@echo off
echo Building Event Management Website...
call mvn clean package
if %ERRORLEVEL% EQU 0 (
    echo Build successful!
    echo WAR file: target\event-management.war
) else (
    echo Build failed!
)
pause
```

## GitHub Integration

After building, push to GitHub:
```bash
git add .
git commit -m "Build WAR file using Maven"
git push origin main
```

## Continuous Integration

For CI/CD, use:
```bash
mvn clean package
# Deploy WAR file automatically
```

