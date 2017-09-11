<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품문의 등록</title>
<jsp:include page="/resources/resources.jsp"/>
<script src="${pageContext.request.contextPath }/SmartEditor/js/HuskyEZCreator.js"></script>
<style>
	.container{
		margin: 0 auto;
		text-align:center;
	}
	#title, #pdnum{
		text-align:center;
	}
	#content{
		height:500px;
	}
	.btn{
		margin:0 20px;
		width:100px;
	}
	.panel{
		margin-top:50px;
	}
	h3{
		padding-top:30px;
	}
</style>
</head>
<body>
<jsp:include page="../navbar.jsp"/>
<div class="container">
	<h3>상품문의</h3>
	<div class="panel panel-default">
		<form action="qnainsert.do" method="post" id="qnaForm">
        <div class="panel-heading">
        	<label for="qna_title">제목</label>
        	<input type="text" name="qna_title" id="title" class="form-control"/>
        </div>
        <div class="panel-heading">
        	<label for="qna_pdnum">상품번호</label>
        	<input type="text" name="qna_pdnum" id="pdnum" class="form-control" placeholder="숫자만 입력"/>
        </div>
        <div class="panel-body">
           <label for="qna_content">내용</label>
           <textarea name="ir1" id="ir1" cols="40" rows="20" class="form-control"></textarea>

        </div>
        <div class="panel-footer">
            <button type="button" id="addQna" class="btn btn-default" onclick="submitContents(this)">작성</button>
            <button id="cansel" class="btn btn-default">취소</button>
        </div>
        </form>
    </div>
</div>
<jsp:include page="../footer.jsp"/>	
<script>
	var oEditors = [];
	
	//추가 글꼴 목록
	//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];
	
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "ir1",
		sSkinURI: "${pageContext.request.contextPath}/SmartEditor/SmartEditor2Skin.html",	
		htParams : {
			bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
			bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
			//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
			fOnBeforeUnload : function(){
				//alert("완료!");
			}
		}, //boolean
		fOnAppLoad : function(){
			//예제 코드
			//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
		},
		fCreator: "createSEditor2"
	});
	
	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditors.getById["ir1"].exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditors.getById["content"].getIR();
		alert(sHTML);
	}
		
	function submitContents(elClickedObj) {
		oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
		
		// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
		
		try {
			var title=$("#title").val();
			var pdnum=$("#pdnum").val();
	
			if(title==""){
				alert("제목을 입력해주세요.");
				return false;
			}else if(pdnum==""){
				alert("상품 번호를 입력해주세요.");
				return false;
			}
			
			elClickedObj.form.submit();
		} catch(e) {}
	}
	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
	}
		
	$("#cansel").on("click",function(){
		location.htef="qnalist.do";
	});
	
	$("#pdnum").on("keyup", function(){
		var reg1= /^[0-9]{0,10}$/;
		var pdnum=$(this).val();
		var isVal=reg1.test(pdnum);
		if(!isVal){
			alert("상품 번호를 확인해주세요.");
			$(this).val("");
		}
	});
</script>
</body>
</html>