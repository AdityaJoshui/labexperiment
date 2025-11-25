<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Events - Event Management</title>
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

    <main class="container">
        <section>
            <h1>Upcoming Events</h1>
            <p style="margin-bottom: 2rem;">Discover and join our exciting lineup of events. From tech conferences to music festivals, we have something for everyone.</p>
            
            <div class="events-grid">
                <%
                    // Sample event data - in a real application, this would come from a database
                    class Event {
                        String title, date, location, description;
                        Event(String t, String d, String l, String desc) {
                            title = t; date = d; location = l; description = desc;
                        }
                    }
                    
                    List<Event> events = new ArrayList<>();
                    events.add(new Event("Tech Innovation Summit 2024", "March 15, 2024", "San Francisco Convention Center", "Join industry leaders for a day of innovation, networking, and cutting-edge technology discussions."));
                    events.add(new Event("Spring Music Festival", "April 20, 2024", "Central Park, New York", "A celebration of music featuring top artists from around the world. Food, drinks, and great vibes!"));
                    events.add(new Event("Business Leadership Conference", "May 10, 2024", "Chicago Marriott Downtown", "Learn from successful entrepreneurs and business leaders about strategies for growth and success."));
                    events.add(new Event("Art & Culture Exhibition", "June 5, 2024", "Metropolitan Museum of Art", "Explore contemporary art and cultural exhibits from renowned artists worldwide."));
                    events.add(new Event("Startup Pitch Competition", "July 18, 2024", "Silicon Valley Tech Hub", "Watch innovative startups pitch their ideas to investors. Great networking opportunity!"));
                    events.add(new Event("Summer Food & Wine Festival", "August 12, 2024", "Napa Valley Vineyards", "Indulge in exquisite wines and gourmet food from top chefs and wineries."));
                    
                    for (Event event : events) {
                %>
                <div class="event-card">
                    <h3><%= event.title %></h3>
                    <div class="event-date">📅 <%= event.date %></div>
                    <div class="event-location">📍 <%= event.location %></div>
                    <p class="event-description"><%= event.description %></p>
                </div>
                <%
                    }
                %>
            </div>
        </section>

        <section style="margin-top: 3rem; text-align: center; padding: 2rem; background: #f8f9fa; border-radius: 8px;">
            <h2>Can't Find What You're Looking For?</h2>
            <p style="margin: 1rem 0;">Contact us to create a custom event or learn more about our event management services.</p>
            <a href="index.jsp" class="btn btn-primary">Back to Home</a>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2024 EventPro. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>

