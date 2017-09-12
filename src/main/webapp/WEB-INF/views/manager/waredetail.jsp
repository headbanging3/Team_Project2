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
<script type="text/template" id="wareTemplate">
	<div class="wareDiv">
    	<table>
    		<thead>
               <tr>
                  <th>상품 코드</th>
                  <th>사이즈</th>
                  <th>수량</th>
                  <th>단가</th>       
		          <th>사이즈 추가</th>
               </tr>
            </thead>
            <tfoot>
               <tr>
                  <td colspan="2">총 수량 : </td>
                  <td><input type="text" class="countEa"value="0" disabled="disabled" /></td>
                  <td><input type="text" class="countUp" value="0" disabled="disabled" /></td>
                  <td></td>
               </tr>
            </tfoot>
            <tbody>
               <tr>
                  <td>
                  <select name="p_code" id="p_code">
                     <option value="#">제품</option>
                     <c:forEach var="tmp" items="${list}">    
                        <option value="${tmp.p_code }">${tmp.p_name }</option>
                     </c:forEach>
                  </select>
                  </td>
                  <td>
                     <select name="p_size" id="p_size">
                        <option value="#">사이즈</option>
                        <c:forEach var="i" begin="220" end="300" step="10">    
                           <option value="${i}">${i}</option>
                        </c:forEach>
                     </select>
                 </td>
                 <td>
                     <input type="text" name="ea" class="ea" />
                  </td>
                  <td>
                     <input type="text" name="up" class="up" value="0" />
                  </td>
                  <td>
                     <button class="addSize">사이즈 추가</button>
                  </td>
              </tr>
           </tbody>
        </table>
      </div>
</script>
<script type="text/template" id="addSizeTemplate">
	<tr>
    	<td></td>
        <td>
        	<select name="p_size" id="p_size">
                <option value="#">사이즈</option>
                <c:forEach var="i" begin="220" end="300" step="10"> 
                   <option value="${i}">${i}</option>
                </c:forEach>
             </select>
         </td>
         <td>
            <input type="text" name="ea" class="ea" />
            </td>
            <td></td>
            <td><a href="#" class="deleteAn">삭제</a></td>
     </tr>
</script>
</head>
<body>
<h1>입고 디테일</h1>
   <h3>입고 번호 : ${w_no }</h3>
   <button id="addWare">입고 상품 추가</button>
   <button id="insertWare">저장</button>
   <form action="">
	   <div id="wrapper">
	      
	   </div>
   </form>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>

<script>
	//상품 추가 버튼 클릭시
   $("#addWare").click(function(){
	   // 상품 추가시 template 추가
	  var wareTemplate=$("#wareTemplate").text();
	
      $("#wrapper").append(wareTemplate);
   });

	// 사이즈 추가 버튼 클릭시
   $(document).on("click",".addSize",function(){
	   // 사이즈 추가 template를 tbody에 추가
	  var sizeTemplate=$("#addSizeTemplate").text();
	  $(this).closest("tbody")
      .append(sizeTemplate);
	 
   });
   
   //사이즈 추가 버튼을 눌러 추가된 로우 삭제
   $(document).on("click",".deleteAn",function(){
	  // 수량 총합, 단가, 총금액
      var allEa=0;
      var up=0;
      var result=0;
      //삭제가 눌린 테이블의 클래스명이 .ea인 input들의 총합을 구하는 메소드
      $(this).parent().parent().parent().find(".ea").each(function(){
		//만약 값이 입력되지 않았을경우 0을 더한다.
         if(isNaN(parseInt($(this).val()))){
            allEa+=0;
         }else{
            allEa+=parseInt($(this).val());
         }   
      });
	  //.ea들을 다 던한 값에서 삭제되는 행의 수량을 뺀다.
      allEa-=parseInt($(this).parent()
                  .prev()
                  .prev()
                  .find(".ea")
                  .val());
	  // 단가 input의 값을 가져온다.
      up=$(this).parent()
	      .parent()
	      .parent()
	      .first()
	      .find(".up")
	      .val();
      //단가나 총 수량이 number타입이 아닐경우 0으로 바꿔준다.
      if(isNaN(up)){
         up=0;
      }else if(isNaN(allEa)){
    	  allEa=0;
      }
	  
      //총 금액을 계산
      result=allEa*up;
      
      //총 금액 input에 값 대입
      $(this).closest("tbody")
      .prev()
      .children()
      .find(".countUp")
      .val(result);
	  
      //총 수량에 값을 대입
       $(this).closest("tbody")
      .prev()
      .children()
      .find(".countEa")
      .val(allEa);      
      //해당 로우(tr) 제거
      $(this).closest("tr").remove();
   });
   
	//수량 input에 값을 입력할때
   $(document).on("keyup", ".ea", function(){
      
      var allEa=0;
      var up=0;
      var result=0;
      // 값이 입력된 테이블의 .ea input들 값을 다 더한다.
      $(this).parent().parent().parent().find(".ea").each(function(){
         if(isNaN(parseInt($(this).val()))){
            allEa+=0;
         }else{
            allEa+=parseInt($(this).val());
         }   
      });
	  // 총 수량(.countEa)에 값 대입
      $(this).closest("tbody")
      .prev()
      .children()
      .find(".countEa")
      .val(allEa);
      // 단가(up) input의 값을 가져온다.
      up=$(this).parent()
         .parent()
         .parent()
         .first()
         .find(".up")
         .val();
      //단가가 number타입이 아니면 0을 입력
      if(isNaN(up)){
         up=0;
      }
      //총 금액 계산
      result=allEa*up;
      //총 금액 input에 값 대입
      $(this).closest("tbody")
      .prev()
      .children()
      .find(".countUp")
      .val(result);
      
   });
	
	//단가(up) input에 값 입력시
   $(document).on("keyup", ".up", function(){
      var result=0;
      var allEa=0;
      var up=0;
      
      // 총 수량(.countEa) 값을 가져온다.
      allEa=$(this).closest("tbody")
      .prev()
      .children()
      .find(".countEa")
      .val();
	 //단가를 가져온다.
      up=parseInt($(this).val());
	 //총 금액 값 계산
   	  result=allEa*up;
   //총 금액에 넣는다.
   	 $(this).closest("tbody")
     .prev()
     .children()
     .find(".countUp")
     .val(result);
   	
   });

   
</script>
</body>
</html>