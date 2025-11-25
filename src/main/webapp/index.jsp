<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Management - Home</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
        <nav class="container">
            <a href="index.jsp" class="logo">EventPro</a>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="events.jsp">Events</a></li>
            </ul>
        </nav>
    </header>

    <div class="hero">
        <div class="container">
            <h1>Welcome to EventPro</h1>
            <p>Your Premier Event Management Solution</p>
            <a href="events.jsp" class="btn btn-primary">View All Events</a>
            <a href="#about" class="btn">Learn More</a>
        </div>
    </div>

    <main class="container">
        <section id="about">
            <h2>About EventPro</h2>
            <p>EventPro is a comprehensive event management platform designed to help you organize, manage, and track events effortlessly. Whether you're planning a corporate conference, a music festival, or a community gathering, EventPro provides all the tools you need to make your event a success.</p>
        </section>

        <section>
            <h2>Why Choose EventPro?</h2>
            <div class="events-grid">
                <div class="event-card">
                    <h3>Easy Management</h3>
                    <p class="event-description">Intuitive interface that makes event management simple and straightforward. No technical expertise required.</p>
                </div>
                <div class="event-card">
                    <h3>Real-time Updates</h3>
                    <p class="event-description">Stay informed with real-time updates on event schedules, changes, and important announcements.</p>
                </div>
                <div class="event-card">
                    <h3>Comprehensive Features</h3>
                    <p class="event-description">From registration to post-event analytics, we provide all the features you need in one platform.</p>
                </div>
            </div>
        </section>

        <section>
            <h2>Get Started Today</h2>
            <p>Join thousands of event organizers who trust EventPro to manage their events. Start by browsing our upcoming events or create your own event today!</p>
            <a href="events.jsp" class="btn btn-primary" style="margin-top: 1rem;">Explore Events</a>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2024 EventPro. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>

