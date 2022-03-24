<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 수업관리 페이지</title>
<script src="resources/js/common.js"></script>
<script src="resources/js/ATimeTable.js"></script>
<style>
#frame {
	width: 100%;
	height: 100%;
	position: absolute;
	top: 5%;
}

#logo {
	width: 30%;
	height: 10%;
	position: absolute;
	left: 5%;
	top: 2.5%;
	float: left;
	background-image: url(resources/images/관리자로고1.png);
	background-size: 100% 80%;
	background-repeat: no-repeat;
	background-position: left center;
}

#logOut {
	width: 15%;
	height: 10%;
	position: absolute;
	top: 1%;
	right: 1%;
}

#colorline {
	border: 0;
	outline: 0;
	height: 1.5%;
	width: 90%;
	float: left;
	margin: 2% 4.5%;
	border-radius: 20px;
	background-color: #EF90FF;
}

#body {
	outline: 0;
	width: 99.8%;
	height: 85%;
	margin-top: 1%;
	float: left;
	background-color: #ffffff;
	position: absolute;
	top: 15%;
}

#basic {
	position: fixed;
	width: 99%;
	height: 100%;
}

.servicebutton {
	width: 15%;
	height: 100%;
	float: left;
	margin-left: 4.2%;
	margin-top: -2%;
}

#mainpage {
	width: 73%;
	height: 80%;
	float: right;
	margin-right: 5.5%;
	background-size: 30% 55%;
	background-repeat: no-repeat;
	background-position: center center;
}

.bothB {
	width: 85%;
	height: 13%;
	border-radius: 20px;
	margin: 2% 4%;
	background-color: transparent;
	border-top: 5px solid #EF90FF;
	border-left: 5px solid #EF90FF;
	border-right: 5px solid #EF90FF;
	border-bottom: 5px solid #EF90FF;
}

.bothB:active {
	width: 85%;
	height: 13%;
	border-radius: 20px;
	margin: 2% 4%;
	background-color: #EF90FF;
}

#oneB {
	margin-top: 5%;
	margin-bottom: 3%;
	float: left;
	background-image: url(resources/images/학사일정4.png);
	background-size: 100% 80%;
	background-repeat: no-repeat;
	background-position: center center;
	cursor: pointer;
	height: 9%;
}

#twoB {
	margin-bottom: 3%;
	float: left;
	background-image: url(resources/images/수업관리.png);
	background-size: 100% 80%;
	background-repeat: no-repeat;
	background-position: right center;
	cursor: pointer;
	height: 9%;
	background-color: #EF90FF;
}

#threeB {
	margin-top: 35%;
	margin-bottom: 3%;
	float: left;
	background-image: url(resources/images/납부내역.png);
	background-size: 100% 80%;
	background-repeat: no-repeat;
	background-position: right center;
	cursor: pointer;
	height: 9%;
}

#fourB {
	margin-bottom: 3%;
	float: left;
	background-image: url(resources/images/인사관리.png);
	background-size: 100% 80%;
	background-repeat: no-repeat;
	background-position: right center;
	cursor: pointer;
	height: 9%;
}

#fiveB {
	float: left;
	background-image: url(resources/images/상담.png);
	background-size: 100% 80%;
	background-repeat: no-repeat;
	background-position: right center;
	cursor: pointer;
	height: 9%;
}

#btn {
	width: 50%;
	height: 50%;
	border-radius: 10px;
	margin-left: 15%;
	margin-top: 10%;
	border-bottom: 5px solid #E14FCA;
	border-top: 5px solid #E14FCA;
	border-left: 5px solid #E14FCA;
	border-right: 5px solid #E14FCA;
	background-color: #E14FCA;
	text-align: center;
	font-size: 130%;
	cursor: pointer;
}

#btn:active {
	border-top: 5px solid #EF90FF;
	border-left: 5px solid #EF90FF;
	border-right: 5px solid #EF90FF;
	border-bottom: 5px solid #EF90FF;
	background-color: #ffffff;
	width: 50%;
	height: 50%;
	text-align: center;
}

#photo {
	position: absolute;
	top: 22%;
	width: 4%;
	left: 13%;
	box-shadow: none;
}

#session {
	width: 100%;
	height: 50%;
	position: absolute;
	top: 44%;
	left: 60%;
	text-align: center;
	font-size: 130%;
}

#sessionBox {
	width: 30%;
	height: 10%;
	position: absolute;
	left: 45%;
	top: 1%;
}

.div1 {
	font-size: 120%;
	width: 100%;
	height: 30%;
	cursor: pointer;
}

.div2 {
	position: relative;
	top: -3%;
	width: 70%;
	height: 13%;
	display: flex;
	align-items: center;
	margin-left: 13%;
	cursor: pointer;
	font-weight: 600;
	font-size: 100%;
}

.clicked {
	color: #EF90FF;
	font-weight: 800;
	font-size: 130%;
}

.container {
	background-color: gray;
	background: rgba(0, 0, 0, 0.4);
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	text-align: center;
	display: flex;
}

.mdialog {
	border: 2px solid white;
	border-radius: 25px;
	background-color: #ffffff;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 35%;
	height: 40%;
	transform: translate(-50%, -50%)
}

.mbtn {
	border: 2px solid gray;
	border-radius: 5px;
	position: absolute;
	left: 93%;
	top: 3%;
	width: 4%;
	height: 5%;
	background-color: #D5D5D5;
	cursor: pointer;
}

.scontainer {
	background-color: gray;
	background: rgba(0, 0, 0, 0.4);
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	text-align: center;
	display: flex;
}

.smdialog {
	border: 2px solid white;
	border-radius: 25px;
	background-color: #ffffff;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 60%;
	height: 60%;
	transform: translate(-50%, -50%)
}

.smbtn {
	border: 2px solid gray;
	border-radius: 5px;
	position: absolute;
	left: 93%;
	top: 3%;
	width: 4%;
	height: 5%;
	background-color: #D5D5D5;
	cursor: pointer;
}

.scontainer {
	background-color: gray;
	background: rgba(0, 0, 0, 0.4);
	position: absolute;
	width: 100%;
	min-height: 100%;
	left: 0;
	top: 0;
	text-align: center;
}

.smdialog {
	border: 2px solid white;
	border-radius: 25px;
	background-color: #ffffff;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 50%;
	height: 450px;
	transform: translate(-50%, -50%);
}

.smbody {
	border: 2px solid #EF90FF;
	margin-left: 10%;
	width: 80%;
	pont-size: 100pt;
}

.tcCode {
	border: 2px solid #EF90FF;
	float: left;
	width: 20%;
	height: 100%;
}

.tName {
	
	float: left;
	width: 20%;
	height: 100%;
}

.tEmail {
	border: 2px solid #EF90FF;
	width: 100%;
	height: 100%;
}

.smfooter {
	top: 85%;
	left: 30%;
	position: fixed;
	clear: both;
	margin-bottom: 10%;
	width: 40%;
	height: 50px;
}

.teacherId {
	float: left;
	width: 20%;
}


</style>

</head>
<body onload="closeModal()">
	<form name="aaaa" action="" method="post">
		<div id="basic">
			<div id="frame">


				<span id="logo"></span>
				<div id="sessionBox">
					<span id="session">${sessionInfo.userName}님 환영합니다. <input
						type="hidden" value='${sessionInfo.userId}' name="userId" /> <input
						type="hidden" value='${sessionInfo.userCode}' name="userCode" />
						<input type="hidden" value='${sessionInfo.acCode}' name="acCode" />
						<input type="hidden" value='${sessionInfo.tier}' name="tier" />
					</span>
				</div>
				<div id="logOut">
					<span><input type="button" id="btn" value="로그아웃" onclick=""
						onmouseover="mouseOver(this)" onmouseout="mouseLeave(this)"></span>
				</div>
			</div>

			<div id="body">
				<div></div>
				<div id="colorline"></div>
				<div class="servicebutton">

					<input type="button" class="bothB" id="oneB" onclick=""> <input
						type="button" class="bothB" id="twoB" onclick="">
					<div class="div1">
						<div class="div2" id="regClassForm"
							onclick="getCourseList('${sessionInfo.acCode}')">
							●&nbsp;&nbsp;수업등록</div>
						<div class="div2" onclick="getAClassList('${sessionInfo.acCode}')">
							●&nbsp;&nbsp;수업수정</div>
						<div class="div2"
							onclick="subjectFormList('${sessionInfo.acCode}')">
							●&nbsp;&nbsp;과목등록</div>
						<div class="div2" onclick="getASubjectList('${sessionInfo.acCode}')">
							●&nbsp;&nbsp;과목수정</div>
						<div class="div2" onclick="">●&nbsp;&nbsp;반배정</div>
					</div>
					<input type="button" class="bothB" id="threeB" onclick="">
					<input type="button" class="bothB" id="fourB" onclick=""> <input
						type="button" class="bothB" id="fiveB" onclick="">

				</div>
				<div id="mainpage"></div>

			</div>
			<div class="container" id="container">
				<div class="mdialog">
					<div class="mcontent">
						<!-- Modal Header -->
						<div class="mheader">
							<h4 id="mheader" class="mtitle"></h4>
						</div>
						<!-- Modal body -->
						<div class="mbody" id="mbody" value=""></div>
						<!-- Modal footer -->
						<div class="mfooter">
							<input type="button" class="mbtn" value="X"
								onclick="closeModal()" />
						</div>
					</div>
				</div>
			</div>

			<div class='scontainer' id='scontainer'>
				<div class='smdialog'>
					<div class='smcontent'>
						<div class='smheader' style='font-size: 200%'>
							<h4 id='smheader' class='mtitle'>학원 검색</h4>
						</div>
						<input type='text' name='tName' placeholder='선생님이름 입력'
							style='height: 35px; width: 30%; position: absolute; top: 19%; left: 30%; border-radius: 5px; border-color: #EF90FF' />
						<input type='button' value='검색' onClick='teacherSerchForm()'
							class='searchBtn'
							style='position: absolute; top: 21%; left: 62%; border-radius: 5px background-color:#EF90FF;' />
						<div class='smbody' id='smbody' value=''>
							<div class='teacherId'>선생코드</div>
							<div class='tName'>이름</div>
							<div class='tEmail'>이메일</div>
						</div>
						<div class='smfooter'>
							<input type='button' class='mbtn1' value='선택' onclick='selectList(this)'
								style='border-radius: 5px; background-color: #EF90FF; width: 30%; height: 50%;' />
							<input type='button' class='mbtn2' value='닫기' onclick='closeModal2()'
								style='borderradius: 5px; background-color: #EF90FF; width: 30%; height: 50%;' />
						</div>
					</div>
				</div>
			</div>
	</form>

	<script type="text/javascript">
   function mouseOver(obj) {
      let fColor = (obj.id == "btn") ? "#000000" : "#FFFFFF";
      obj.style.color = fColor;
      obj.style.background = "#EF90FF ";

   }

   function mouseLeave(obj) {

      let fColor = (obj.id == "btn") ? "#ffffff" : "#FF0000";
      obj.style.color = fColor;
      obj.style.background = "#E14FCA ";
      obj.style.border = ""

   }
   var div2 = document.getElementsByClassName("div2");

   function handleClick(event) {
     console.log(event.target);
     // console.log(this);
     // 콘솔창을 보면 둘다 동일한 값이 나온다

     console.log(event.target.classList);

     if (event.target.classList[1] === "clicked") {
       event.target.classList.remove("clicked");
     } else {
       for (var i = 0; i < div2.length; i++) {
         div2[i].classList.remove("clicked");
       }

       event.target.classList.add("clicked");
     }
   }

   function init() {
     for (var i = 0; i < div2.length; i++) {
       div2[i].addEventListener("click", handleClick);
     }
   }

   init();
   </script>

</body>
</html>