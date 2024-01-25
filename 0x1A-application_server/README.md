0x1A. Application Server
This folder contains the solutions for the tasks related to setting up and deploying a Flask application server. The tasks cover various aspects of development, production setup, serving pages with Nginx, handling query parameters, and deploying an AirBnB clone.


Task 0: Set up development with Python
Create a Virtual Environment:

Create a virtual environment using python -m venv venv.
Activate the virtual environment with source venv/bin/activate (on Linux/Mac) or venv\Scripts\activate (on Windows).
Install Flask:

Install Flask using pip install Flask.
Create Flask App:

Create a file (e.g., 0-hello_route.py) with a basic Flask app.
Run the app with python 0-hello_route.py and verify it works.
Task 1: Set up production with Gunicorn
Install Gunicorn:

Install Gunicorn using pip install gunicorn.
Run Flask App with Gunicorn:

Run your Flask app with Gunicorn: gunicorn --bind 0.0.0.0:5000 your_module:app.
Replace your_module with the name of your module containing the Flask app.
Task 2: Serve a page with Nginx
Install Nginx:

Install Nginx on your server using your package manager (e.g., sudo apt-get install nginx on Ubuntu).
Configure Nginx:

Create an Nginx configuration file for your Flask app (e.g., your_app.conf).
Configure Nginx to proxy requests to Gunicorn.
Restart Nginx:

Restart Nginx to apply the changes (sudo systemctl restart nginx).
Task 3: Add a route with query parameters
Update Flask App:
Modify your Flask app to include a route that handles query parameters.
Update your Flask app file (e.g., 0-hello_route.py).
Task 4: Let's do this for your API
Extend Flask App for API:
Extend your Flask app to handle API requests and responses.
Update your Flask app file accordingly.
Task 5: Serve your AirBnB clone
Update Flask App for AirBnB Clone:
Modify your Flask app to serve your AirBnB clone content.
Update your Flask app file accordingly.
Task 6: Deploy it!
Deploy to Server:
Deploy your Flask app and associated files to your production server.
Follow the provided deployment instructions in the task's folder.
Task 7: No service interruption
Implement Zero-Downtime Deployment:
Follow the guidelines in the task's folder to ensure a smooth deployment without service interruption.
Utilize tools like reverse proxies and load balancers to manage traffic during deployment.
