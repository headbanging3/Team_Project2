<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
   table, td, th{
      border: 1px solid black;
      margin:30px;
      text-align:right;
   }
   tfoot{
       text-align:right;
   }
   input{
      text-align:right;
   }
   thead td, thead th{
      text-align:center;
   }
</style>
<script type="text/template" id="myTemplate">
	<table>
		<thead>
			<tr>
				<th></th>
			</tr>
		</thead>
	</table>
</script>
</head>
<body>
<h1>입고 디테일</h1>
   <h3>입고 번호 : ${w_no }</h3>
   <button id="addWare">입고 상품 추가</button>
    <button id="insertWare">저장</button>
   <div id="wrapper">
      
   </div>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>

<script>
   var wareNum=1;
   $("#addWare").click(function(){

      var a=$('<div class="wareDiv">'+
            '<table>'+
               '<thead>'+
               '<tr>'+
                  '<th>상품 코드</th>'+
                  '<th>사이즈</th>'+
                  '<th>수량</th>'+
                  '<th>단가</th>'+
                  '<th>사이즈 추가</th>'+
               '</tr>'+
            '</thead>'+
            '<tfoot>'+
               '<tr>'+
                  '<td colspan="2">총 수량 : </td>'+
                  '<td><input type="text" class="countEa"value="0" disabled="disabled" /></td>'+
                  '<td><input type="text" class="countUp" value="0" disabled="disabled" /></td>'+
                  '<td></td>'+
               '</tr>'+
            '</tfoot>'+
            '<tbody>'+
               '<tr>'+
                  '<td>'+
                  '<select name="p_code" id="p_code">'+
                     '<option value="#">제품</option>'+
                     '<c:forEach var="tmp" items="${list}">'+      
                        '<option value="${tmp.p_code }">${tmp.p_name }</option>'+
                     '</c:forEach>'+
                  '</select>'+
                  '</td>'+
                  '<td>'+
                     '<select name="p_size" id="p_size">'+
                        '<option value="#">사이즈</option>'+
                        '<c:forEach var="i" begin="220" end="300" step="10">'+      
                           '<option value="${i}">${i}</option>'+
                        '</c:forEach>'+
                     '</select>'+
                  '</td>'+
                  '<td>'+
                     '<input type="text" name="ea" class="ea" />'+
                  '</td>'+
                  '<td>'+
                     '<input type="text" name="up" class="up" value="0" />'+
                  '</td>'+
                  '<td>'+
                     '<button class="addSize">사이즈 추가</button>'+
                  '</td>'+
               '</tr>'+
            '</tbody>'+
         '</table>'+
         '</div>');
      $("#wrapper").append(a);
      wareNum+=1;
   });

   $(document).on("click",".addSize",function(){
      $(this).closest("tbody")
      .append('<tr>'+
            '<td></td>'+
            '<td>'+
               '<select name="p_size" id="p_size">'+
                  '<option value="#">사이즈</option>'+
                  '<c:forEach var="i" begin="220" end="300" step="10">'+      
                     '<option value="${i}">${i}</option>'+
                  '</c:forEach>'+
               '</select>'+
            '</td>'+
            '<td>'+
               '<input type="text" name="ea" class="ea" />'+
            '</td>'+
            '<td></td>'+
            '<td><a href="#" class="deleteAn">삭제</a></td>'+
            '</tr>');
   });
   
   $(document).on("click",".deleteAn",function(){
      var allEa=0;
      var up=0;
      var result=0;
      $(".ea").each(function(){

         if(isNaN(parseInt($(this).val()))){
            allEa+=0;
         }else{
            allEa+=parseInt($(this).val());
         }   
      });

      allEa-=parseInt($(this).parent()
                  .prev()
                  .prev()
                  .find(".ea")
                  .val());
      up=$(this).parent()
	      .parent()
	      .parent()
	      .first()
	      .find(".up")
	      .val();
      
      if(isNaN(up)){
         up=0;
      }else if(isNaN(allEa)){
    	  allEa=0;
      }

      result=allEa*up;
      
      $(this).closest("tbody")
      .prev()
      .children()
      .find(".countUp")
      .val(result);

       $(this).closest("tbody")
      .prev()
      .children()
      .find(".countEa")
      .val(allEa);      
      $(this).closest("tr").remove();
   });
   



   $(document).on("keyup", ".ea", function(){
      
      var allEa=0;
      var up=0;
      var result=0;
      
      $(this).parent().parent().parent().find(".ea").each(function(){
         if(isNaN(parseInt($(this).val()))){
            allEa+=0;
         }else{
            allEa+=parseInt($(this).val());
         }   
      });

      $(this).closest("tbody")
      .prev()
      .children()
      .find(".countEa")
      .val(allEa);
      
      up=$(this).parent()
         .parent()
         .parent()
         .first()
         .find(".up")
         .val();

      if(isNaN(up)){
         up=0;
      }

      result=allEa*up;
      
      $(this).closest("tbody")
      .prev()
      .children()
      .find(".countUp")
      .val(result);
      
   });

   $(document).on("keyup", ".up", function(){
      var result=0;
      var allEa=$(this).closest("tbody")
      .prev()
      .children()
      .find(".countEa")
      .val();

      var up=parseInt($(this).val());
   	  result=allEa*up;
   
   	 $(this).closest("tbody")
     .prev()
     .children()
     .find(".countUp")
     .val(allEa*up);

      
   });

   function setAllEa(closestName, findName, value){
	   
	   $(this).closest(closestName)
	      .prev()
	      .children()
	      .find(findName)
	      .val(value);
   }
</script>
</body>
</html>