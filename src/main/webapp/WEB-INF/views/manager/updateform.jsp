<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<link rel="stylesheet" href="../resources/css/bootstrap.css"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <form class="well form-horizontal" action="update.do" method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend>Edit Account Info</legend>

<!-- Text input-->

  
<div class="form-group">
  <input type="hidden" name="mem_num" value="${dto.mem_num }"/>
  <label class="col-md-4 control-label">Number</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  
  <input  class="form-control"  type="text" value ="${dto.mem_num }" disabled/>
    </div>
  </div>
</div>

 <!-- Text input-->
  
<div class="form-group">
  <label class="col-md-4 control-label">Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="name"  class="form-control"  type="text" value="${dto.name }">
    </div>
  </div>
</div> 
  
 <!-- Text input-->
  

  
<div class="form-group">
  <label class="col-md-4 control-label">ID</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="id" class="form-control"  type="text" value="${dto.id }" >
    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label">Password</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="pwd"  class="form-control"  type="text" value="${dto.pwd }">
    </div>
  </div>
</div> 


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label">Phone #</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input name="phone"  class="form-control" type="text" value="${dto.phone }"  >
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">E-Mail</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <input name="email"  class="form-control"  type="text" value="${dto.email }"  >
    </div>
  </div>
</div>


<!-- Text input-->
       


<!-- Text input-->
      
<div class="form-group">
  <label class="col-md-4 control-label">Address</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input name="addr"  class="form-control" type="text" value="${dto.addr }" >
    </div>
  </div>
</div>




<!-- Success message -->


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
    <button type="submit" class="btn btn-warning" >EDIT <span class="glyphicon glyphicon-edit"></span></button>
  </div>
</div>

</fieldset>
</form>
</div>
<!-- /.container -->
</body>
</html>