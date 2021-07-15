
<html>
<head>
 <link rel="stylesheet" href="loginnew.css">

     <style>
            body {
  margin: 0;
  padding: 0;
  background: url(images/ThinkstockPhotos-672450320.jpg);
  background-size: cover;
  font-family: sans-serif;
}

.box {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 25rem;
  padding: 2.5rem;
  box-sizing: border-box;
  background: rgba(0, 0, 0, 0.6);
  border-radius: 0.625rem;
}

.box h2 {
  margin: 0 0 1rem;
  padding: 0;
    color: lightskyblue;
  text-align: center;
  font-family: "Times New Roman", Times, serif;
}

.box .inputBox {
  position: relative;
}

.box .inputBox input {
  width: 100%;
  padding: 0.625rem 0;
  font-size: 1rem;
  color: #fff;
  letter-spacing: 0.062rem;
  margin-bottom: 1.875rem;
  border: none;
  border-bottom: 0.065rem solid #fff;
  outline: none;
  background: transparent;
}

.box .inputBox label {
  position: absolute;
  top: 0;
  left: 0;
  padding: 0.625rem 0;
  font-size: 1rem;
  color: #fff;
  pointer-events: none;
  transition: 0.5s;
}

.box .inputBox input:focus ~ label,
.box .inputBox input:valid ~ label,
.box .inputBox input:not([value=""]) ~ label {
  top: -1.125rem;
  left: 0;
  color: #03a9f4;
  font-size: 0.75rem;
}

.box input[type="submit"] {
  border: none;
  outline: none;
  color: #fff;
  background-color: #03a9f4;
  padding: 0.625rem 1.25rem;
  cursor: pointer;
  border-radius: 0.312rem;
  font-size: 1rem;
}

.box input[type="submit"]:hover {
  background-color: #1cb1f5;
}
.box h1{
  margin: 0 0 1.875rem;
  padding: 0;
  color: white;
  text-align: center;
  font-size: 36px;
   font-family: "Times New Roman", Times, serif;
}
    .button {
  background-color: #00cccc;
  border: none;
  color: white;
 padding-top: 10px;
  padding-right: 120px;
  padding-bottom: 10px;
  padding-left: 120px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 8px;

}

 
        </style>
</head>
<body>
<div class="box">
    <h1>ORDER PLACEMENT APP</h1>
 
    <form action="" method="post"> 
    <div class="inputBox">
<button class="button button2"><a href="orderplacementForm.jsp" style="  color:whitesmoke;">Register</a></button>
<h5 style='text-align: center'>if you don't have account use register to create</h5>
    </div>
        <br>
        <br>
        
    <div class="inputBox">
            <button class="button button2" ><a href="login.jsp" style="  color:whitesmoke;">Log In</a></button>
<h5 style='text-align: center'>if you have account use login here</h5>
    </div>
   
    
          
  
         
  </form>
</div>
</body>
</html>