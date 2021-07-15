<%-- 
    Document   : orderplacementForm
    Created on : Jul 11, 2021, 5:57:48 PM
    Author     : dhanush
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Orders Placement Form</title>
        <style>
            h1{
                text-align: center;
            }
            h2{
                text-align: center;
            }
            h3{
                text-align: center;
            }
        </style>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <script>
     var check = function() {
  if (document.getElementById('password').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'password matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'password not matching';
  }
}
function isChecked(checkbox, sub1) {
    document.getElementById(sub1).disabled = !checkbox.checked;
}
function chec(checkbox, packprice1,packquantity1,packsubtotal1) {
    document.getElementById(packprice1).disabled = !checkbox.checked;
    document.getElementById(packquantity1).disabled = !checkbox.checked;
    document.getElementById(packsubtotal1).disabled = !checkbox.checked;
}
function chec2(checkbox, packprice2,packquantity2,packsubtotal2) {
    document.getElementById(packprice2).disabled = !checkbox.checked;
    document.getElementById(packquantity2).disabled = !checkbox.checked;
    document.getElementById(packsubtotal2).disabled = !checkbox.checked;
}
function chec3(checkbox, packprice3,packquantity3,packsubtotal3) {
    document.getElementById(packprice3).disabled = !checkbox.checked;
    document.getElementById(packquantity3).disabled = !checkbox.checked;
    document.getElementById(packsubtotal3).disabled = !checkbox.checked;
}


     function calA(y,z){
              var packtotal1=parseFloat(y)*parseFloat(z);
            
              document.getElementById("packsubtotal1").value=parseFloat(packtotal1);
          } 
            function calB(m,n){
              var packtotal2=parseFloat(m)*parseFloat(n);
            
              document.getElementById("packsubtotal2").value=parseFloat(packtotal2);
          } 
            function calC(p,q){
              var packtotal3=parseFloat(p)*parseFloat(q);
            
              document.getElementById("packsubtotal3").value=parseFloat(packtotal3);
          } 
            function calE(a,b,c){
              var fullpacktotal=parseFloat(a)+parseFloat(b)+parseFloat(c);
            
              document.getElementById("packfulltotal").value=parseFloat(fullpacktotal);
          } 
          
        </script>
   
    </head>
    <body>
        <div class="container">
            
       <form  method="POST" action="customersController">
   <h2>Customer Orders Placement Form</h2>
           
  <div class="form-row">
    <div class="form-group col-md-6">
    <label for="firstname">Frist Name</label>
    <input type="text" class="form-control" name="txtcus_fname" id="cus_fname" placeholder="First name" required>
    </div>
    <div class="form-group col-md-6">
   <label for="lastname">Last Name</label>
    <input type="text" class="form-control" name="txtcus_lname" id="cus_lname"placeholder="Last name" required>
    </div>
  </div>     
    
           <div class="form-row">
    <div class="form-group col-md-6">
       <label>Address</label>
<textarea class="form-control" name ="txtcus_addr" id="cus_addr" placeholder="Enter address" required></textarea>
    </div>
    <div class="form-group col-md-6">
       <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="Email" name="txtcus_email">
       
    </div>
  </div>
           
  
    <div class="form-row">
    <div class="form-group col-md-6">
    <label>NIC</label>

  <input name="txtcus_nic" id="cus_nic" class="form-control" placeholder="Enter NIC"
    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
    type = "text"
    maxlength = "10"
 /> 
    </div>
    <div class="form-group col-md-6">
       <label>Tele Num</label>
     <%--   <input type="number" min="0"  maxlength="10"  class="form-control" name="txtemp_telnum" id="emp_telnum" value="" aria-describedby="emptelnumHelp" placeholder="Enter mobile" required> --%>
       <input name="txtcus_telnum" id="cus_telnum" class="form-control"
    oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
    type = "text"
    maxlength = "10"  placeholder="011-2790019" pattern="[0-9]{3}-[0-9]{6}" 
    
 />   
    </div>
  </div>            
           
    
  <div class="form-row">
    <div class="form-group col-md-6">
    <label for="firstname">User Name</label>
    <input type="text" class="form-control" name="txtcus_uname" id="cus_uname" placeholder="User Name" required>
    </div>
    <div class="form-group col-md-6">
   
    </div>
  </div>  
         <div class="form-row">

                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Password</label>
               <input type="password" class="form-control" name="txtpassword" id="password" value="" placeholder="Password"  required onkeyup='check();'
             onkeyup="this.setAttribute('value', this.value);"
             pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
             title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
      <label>Password</label>
                      

                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Retype password</label>
                        <input type="password" class="form-control" name="txtrepassword" id="confirm_password" value="" placeholder="Retype Password" required onkeyup='check();'> 
 <span id='message'></span>
                    </div>
                </div>  
           
       
       
       
       
       
     <!--   <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="firstname">Packages</label>
                       <div class="form-group ">
                           <div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="packone" name="txt_packone">
  <label class="form-check-label" for="flexCheckDefault">
    Package 1
  </label>
</div>
                       </div><br>
                          <div class="form-group ">
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="packtwo" name="txt_packtwo" >
  <label class="form-check-label" for="flexCheckChecked">
    Package 2
  </label>
</div>
                          </div> <br>
                          <div class="form-group ">
<div class="form-check">
  <input class="form-check-input" type="checkbox" value="" id="packthr" name="txt_packthr">
  <label class="form-check-label" for="flexCheckChecked">
    Package 3
  </label>
</div>
                          </div>
                    </div>
                    <div class="form-group col-md-1">
                                <div class="form-group ">
    <label for="firstname">LKR</label>
    <input type="text" class="form-control" name="txtcus_uname" id="cus_uname" value="250" placeholder=""  readonly>
    </div>
    <div class="form-group">
    <input type="text" class="form-control" name="txtcus_uname" id="cus_uname" value="350"placeholder=""  readonly>
    </div>
                         <div class="form-group">
    <input type="text" class="form-control" name="txtcus_uname" id="cus_uname" value="500" placeholder=""  readonly>
    </div>
                    </div>
                    <div class="form-group col-md-3">
                                <div class="form-group ">
   <label for="firstname">Qty</label>
    <input type="text" class="form-control" name="txtcus_uname" id="cus_uname" placeholder=" " >
    </div>
    <div class="form-group">
    <input type="text" class="form-control" name="txtcus_uname" id="cus_uname" placeholder=" " >
    </div>
                         <div class="form-group">
    <input type="text" class="form-control" name="txtcus_uname" id="cus_uname" placeholder=" " >
    </div>
                    </div>
              <div class="form-group col-md-3">
                                <div class="form-group ">
                                    <label for="firstname">Sub Total</label>
   
    <input type="text" class="form-control" name="txtcus_uname" id="cus_uname" placeholder=" " required>
    </div>
    <div class="form-group">
    <input type="text" class="form-control" name="txtcus_uname" id="cus_uname" placeholder=" " required>
    </div>
                         <div class="form-group">
    <input type="text" class="form-control" name="txtcus_uname" id="cus_uname" placeholder=" " required>
    </div>
                    </div>
                </div> -->
       
     
     <div class="form-row">
         <div class="form-group col-md-3">
                        <label for="firstname">Packages</label>
                       <div class="form-group ">
                           <div class="form-check">
  <input class="form-check-input" type="checkbox"  id="packone" name="txt_pack1" onchange="chec(this,'packprice1','packquantity1','packsubtotal1')">
  <label class="form-check-label" for="flexCheckDefault">
    Package 1
  </label>
</div>
                       </div>
     </div>
            <div class="form-group col-md-1">
                                <div class="form-group ">
    <label for="firstname">LKR</label>
    <input type="text" class="form-control" name="txt_packprice1" id="packprice1" value="250" placeholder=""  readonly disabled="disabled">
    </div>
     </div>
          <div class="form-group col-md-3">
                                <div class="form-group ">
   <label for="firstname">Qty</label>
    <input type="number" min="0"  oninput="this.value = Math.abs(this.value)" class="form-control"   name="txt_packquantity1" id="packquantity1" placeholder=" " onblur="calA(packprice1.value,packquantity1.value)" disabled="disabled">
    </div>  
     </div>
         <div class="form-group col-md-3">
                                <div class="form-group ">
                                    <label for="firstname">Sub Total</label>
   
    <input type="number" min="0"   step="0.01" oninput="this.value = Math.abs(this.value)" class="form-control"   name="txt_packsubtotal1" id="packsubtotal1" placeholder=" "  value="0.00"  readonly disabled="disabled">
    </div>
     </div>
     </div>
     <div class="form-row">
         <div class="form-group col-md-3">
                       
                       <div class="form-group ">
                           <div class="form-check">
  <input class="form-check-input" type="checkbox"  id="packtwo" name="txt_pack2" onchange="chec2(this,'packprice2','packquantity2','packsubtotal2')">
  <label class="form-check-label" for="flexCheckDefault">
    Package 2
  </label>
</div>
                       </div>
     </div>
            <div class="form-group col-md-1">
                                <div class="form-group ">
  
    <input type="text" class="form-control" name="txt_packprice2" id="packprice2" value="450" placeholder=""  readonly disabled="disabled">
    </div>
     </div>
          <div class="form-group col-md-3">
                                <div class="form-group ">
  
    <input type="number" min="0" oninput="this.value = Math.abs(this.value)" class="form-control"   name="txt_packquantity2" id="packquantity2" placeholder=" " onblur="calB(packprice2.value,packquantity2.value)" disabled="disabled">
    </div>  
     </div>
         <div class="form-group col-md-3">
                                <div class="form-group ">
                                 
   
    <input type="number" min="0"  step="0.01" oninput="this.value = Math.abs(this.value)" class="form-control"   name="txt_packsubtotal2" id="packsubtotal2" placeholder=" "  value="0.00" readonly disabled="disabled">

    </div>
     </div>
     </div>
     <div class="form-row">
         <div class="form-group col-md-3">
                   
                       <div class="form-group ">
                           <div class="form-check">
  <input class="form-check-input" type="checkbox"  id="packone" name="txt_pack3" onchange="chec3(this,'packprice3','packquantity3','packsubtotal3')" >
  <label class="form-check-label" for="flexCheckDefault">
    Package 3
  </label>
</div>
                       </div>
     </div>
            <div class="form-group col-md-1">
                                <div class="form-group ">
   
    <input type="text" class="form-control" name="txt_packprice3" id="packprice3" value="500" placeholder=""  readonly disabled="disabled">
    </div>
     </div>
          <div class="form-group col-md-3">
                                <div class="form-group ">
 
    <input type="number" min="0"  oninput="this.value = Math.abs(this.value) " class="form-control"   name="txt_packquantity3" id="packquantity3" placeholder=" " onblur="calC(packprice3.value,packquantity3.value)" disabled="disabled">
    </div>  
     </div>
         <div class="form-group col-md-3">
                                <div class="form-group ">

    <input type="number" min="0"  step="0.01" oninput="this.value = Math.abs(this.value)" class="form-control"   name="txt_packsubtotal3" id="packsubtotal3" placeholder=" "  value="0.00" readonly disabled="disabled">
        
    </div>
     </div>
     </div>
     
       
        <div class="form-row">
      <div class="form-group col-md-6">
   
    
    </div>
    <div class="form-group col-md-1">
    <label for="firstname">Total :</label>
    
    </div>
    <div class="form-group col-md-3">
  
    <input type="number" min="0"  step="0.01" oninput="this.value = Math.abs(this.value)" class="form-control"   name="txt_packfulltotal" id="packfulltotal" placeholder=" " onkeydown="calE(packsubtotal1.value,packsubtotal2.value,packsubtotal3.value)">
    </div>
  </div>  
       
       
       
  
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck" onchange="isChecked(this, 'sub1')">
      <label class="form-check-label" for="gridCheck">
       Agree to terms and conditions
      </label>
    </div>
  </div>
       <input type="submit" class="btn btn-primary" id="sub1" disabled="disabled" />
                                

</form>
        </div>
    </body>
</html>
