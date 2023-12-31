<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Arvo&family=Bungee+Spice&family=Fira+Sans:ital@1&family=Imperial+Script&family=Ubuntu:wght@500&display=swap");
      body{
    background-image: url("download.jpg");
    background-size: cover;
}
.bigcontainer{
    margin-top: 8%;
    margin-bottom: 8%;
    width: 100%;
    justify-content: center;
    align-items: center;
    padding: 3px 3px;
   
}
.container{
    /* border: 2px solid black; */
    width: 50%;
    /* height: 100%; */
    /* background-color: #c0f8fc; */
    background-color: rgba(255, 255, 255, 0.1); 
    border-radius: 5px;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1); /* for tranparency */
    display: block;
    justify-content: center;
    align-items: center;
    margin: auto;
    padding: 10px 10px;
}

.heading{
    display: flex;
    /* width: 25%; */
    justify-content: center;
    align-items: center;
    padding: 5px 5px;
    margin-bottom: 5px;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }
  
  .login-container {
    background-color: white;
    border-radius: 5px;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
    padding: 20px;
  }
  
  .login-form {
    display: flex;
    flex-direction: column;
  }
  
  h2 {
    margin: 0 0 20px;
    text-align: center;
  }
  
  label {
    margin-bottom: 5px;
  }
  
  input {
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }
  
  button {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }
  
  button:hover {
    background-color: #0056b3;
  }

  h1{
    font-family: 'Bungee Spice', cursive;
  }
  
      </style>
    <title>EMPLOYEE TIME TRACKER</title>
</head>
<body>
    <div class="bigcontainer">
        <div class="container">
            <div class="heading">
                <h1>WELCOME ASSOCIATE!</h1>
            </div>
            
            <div class="lead-login">
                <div class="login-container">
                    <form class="login-form">
                      <label for="username">Username:</label>
                      <input type="text" id="username" name="username" required>
                      <label for="password">Password:</label>
                      <input type="password" id="password" name="password" required>
                      <button type="submit">LOGIN</button>
                    </form>
                  </div>
            </div>

        </div>
    </div>

</body>
</html>