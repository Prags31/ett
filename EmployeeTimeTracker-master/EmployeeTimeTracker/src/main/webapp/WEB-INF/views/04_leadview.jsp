<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Time Tracker</title>
 
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Arvo&family=Bungee+Spice&family=Fira+Sans:ital@1&family=Imperial+Script&family=Ubuntu:wght@500&display=swap');
     /* Reset some default styles */
body, h1, h2, h3, p, ul, li {
    margin: 0;
    padding: 0;
}

/* Basic styling */
body {
    font-family: Arial, sans-serif;
    background-color: #87CEEB; /* Sky Blue */
    background-image: url("download.jpg");
    background-size: cover;
}
nav, main, footer {
    padding: 20px;
}

/* header h1 {
    width: 100%;
    background-color: #828080;
    color: rgb(189, 199, 255);
} */
h1{
    text-align: center;
    margin-bottom: 20px;
    margin-top: 20px;
    font-family: 'Bungee Spice', cursive;
}
nav{
    margin-top: 10px;
}
nav ul {
    list-style: none;
    display: flex;
    justify-content: center;
    gap: 20px;
}

nav a {
    background-color: #007bff;
    color: white;
    text-decoration: none;
    padding: 10px;
    border: 1px solid #333;
    border-radius: 5px;
    transition: background-color 0.3s, color 0.3s;
}

nav a:hover {
    background-color: #333;
    color: white;
}


/* Style for the Add Trainee Form */
#addTraineeForm {
    display: none;
    margin-top: 20px;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #a9f0fe;
    /* box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); */
}

#addTraineeForm label {
    font-weight: bold;
}

#addTraineeForm input[type="text"],
#addTraineeForm input[type="password"],
#addTraineeForm textarea {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
}

#addTraineeForm input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

#addTraineeForm input[type="submit"]:hover {
    background-color: #0056b3;
}

#addTraineeForm textarea {
    resize: vertical;
}

/* Style for the tabular form */
.viewTraineeTable {
    display: none; /* Hide the table initially */
    /* width: 100%; */
    border-collapse: collapse;
    margin-top: 20px;
}

.viewTraineeTable th, .viewTraineeTable td {
    border: 1px solid #ddd;
    padding: 8px;
}

.viewTraineeTable th {
    
    background-color: #17e9ec;
    font-weight: bold;
    width: 20rem;
}
#viewProjectTable th {
    
    width: 25rem;
}

#addProjectForm {
    display: none;
    margin-top: 20px;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #a9f0fe;
    /* box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); */
}

#addProjectForm label {
    font-weight: bold;
}
#addProjectForm input[type="text"],
#addProjectForm input[type="email"],
#addProjectForm textarea {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
}
#addProjectForm input[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

#addProjectForm input[type="submit"]:hover {
    background-color: #0056b3;
}

#addProjectForm textarea {
    resize: vertical;
}

/* Style for the tabular form */
     
      </style>
</head>
<body>
    <header>
       <a href="01_index.html" style="text-decoration: none;"><h1>Employee Time Tracker</h1></a> 
    </header>
    <nav>
        <ul>
            <li><a href="#" id="addTrainee">Add Trainee</a></li>
            <li><a href="#" id="viewTrainee">View Trainee</a></li>
            <li><a href="#" id="addProject">Add Project</a></li>
            <li><a href="#" id="viewProject">View Project</a></li>
        </ul>
    </nav>

            <!-- Add Trainee Form -->
        <div id="addTraineeForm">
            <form>
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br><br>

                <label for="id">ID:</label>
                <input type="text" id="id" name="id" required><br><br>

                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required><br><br>

                <label for="createPassword">Create Password:</label>
                <input type="password" id="createPassword" name="createPassword" required><br><br>

                <label for="reEnterPassword">Re-enter Password:</label>
                <input type="password" id="reEnterPassword" name="reEnterPassword" required><br><br>

                <label for="projectTitle">Project Title:</label>
                <input type="text" id="projectTitle" name="projectTitle" required><br><br>

                <label for="description">Description:</label><br>
                <textarea id="description" name="description" rows="4" cols="50" required></textarea><br><br>

                <input type="submit" value="Add Trainee">
            </form>
        </div>

        <div class="viewTableStyle">
            <table id="viewTraineeTable" class="viewTraineeTable">
                <tr>
                    <th>Name</th>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Project Title</th>
                    <th>Description</th>
                </tr>
                <!-- Table rows will be dynamically added here using JavaScript -->
            </table>
        </div>

        <div id="addProjectForm">
            <form>
                <label for="pname">Project Name:</label>
                <input type="text" id="pname" name="pname" required><br><br>

                <label for="pdescription">Project Description:</label>
                <textarea id="pdescription" name="pdescription" rows="4" cols="50" required></textarea><br><br>

                <label for="lname">Team Lead</label>
                <input type="email" id="lname" name="lname" required><br><br>

                <label for="sdate">Total Weeks </label>
                <input type="text" id="sdate" name="sdate" required> <br><br>

                <input type="submit" value="Add Project">
            </form>
        </div>

        <div class="viewTableStyle">
            <table id="viewProjectTable" class="viewTraineeTable">
                <tr>
                    <th>Project</th>
                    <th>Description</th>
                    <th>Lead</th>
                    <th>Total Weeks</th>
                </tr>
                <!-- Table rows will be dynamically added here using JavaScript -->
                
            </table>
        </div>

        <script src="/js/leadviewscript.js"></script>
        

</body>
</html>
