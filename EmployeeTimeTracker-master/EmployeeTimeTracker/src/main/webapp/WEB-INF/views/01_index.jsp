<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <style>
  body {
    font-family: Arial, sans-serif;
    background-color: #87a6dc; 
    /*  background-image: url("download.jpg"); */
    background-size: cover;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh; /* Adjusted minimum height */
  }
  
  .centered {
    text-align: center;
    background-color: rgba(255, 255, 255, 0.1); 
    border-radius: 5px;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1); /* for tranparency */
    padding: 40px; /* Increased padding */
    width: 70%; /* Adjusted width */
    max-width: 600px; /* Maximum width */
    
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  
  h1 {
    margin: 0 0 20px;
    color: white; /* Heading color */
    font-family: 'Bungee Spice', cursive;
  }
  
  .centered a{
    text-decoration: none;
  }
  .buttons {
    margin-top: 20px;
    display: flex;
    justify-content: center; /* Center horizontally */
  }
  
  .button {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    margin: 0 5px; /* Add margin between buttons */
    text-decoration: none;
  }
  
  .button:hover {
    background-color: #0056b3;
  }
  
    @import url('https://fonts.googleapis.com/css2?family=Arvo&family=Bungee+Spice&family=Fira+Sans:ital@1&family=Imperial+Script&family=Ubuntu:wght@500&display=swap');
  </style>
  <title>EMPLOYEE TIME TRACKER</title>
</head>
<body>
  <div class="centered">
    <h1>Employee Time Tracker</h1>
    <div class="buttons">
      <a href="leadlogin" class="button">Lead</a>
      <a href="associatelogin" class="button">ASSOCIATE</a> 
    </div>
  </div>
</body>
</html>