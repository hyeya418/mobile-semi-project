<!--
* 회원들이 환경보호를 위해 실천한 행동을 공유하는 게시판 페이지입니다.
- listview를 이용하여 게시판 글 목록을 구현했습니다.
- 글쓰기 버튼을 클릭하면 게시글 작성 페이지로 이동합니다.
- 목록을 클릭하면 dialog창으로 해당 게시글이 출력됩니다.
- dialog창의 텍스트의 줄 간격을 설정하여 가독성을 높였습니다.
- 게시글 하단에 select/option을 이용하여 평가를 남길 수 있도록 구현했습니다.

마지막 수정 : 2022-07-31
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script src="js/darkmode.js"></script>
<style type="text/css">
#write_btn {
 text-align: right; margin: 0 10px;
}
#open {
 margin-left: 22%;
}
.line {
 line-height: 30px;
}
</style>
</head>
<body>
	<div data-role="page" id="page" data-title="echo_challenge_m" data-theme="a">
		<!-- header 영역 -->
		<%@ include file="include/header.jsp" %>
	
		<!-- header영역의 왼쪽 bars아이콘 클릭 시 메뉴 패널 -->
		<%@ include file="include/menupanel.jsp" %>
	
		<!-- header영역의 오른쪽 user아이콘 클릭 시 로그인패널 -->
		<%@ include file="include/loginpanel.jsp" %>
	
		<!-- 본문 영역 -->
		<div id="notice" data-role="content">
			<h1>환경 보호 챌린지</h1>
			<p>직접 환경 보호를 실천한 사진, 영상을 공유해주세요!</p>
			<ul data-role="listview" data-inset="true" data-filter="true">
 				<li>
					<a href="#no5" data-transition="slideup">
						<p class="ui-li-aside">2022.08.01</p>
						<h3>집에 남는 텀블러 있으세요?</h3>
						<p>💗97 👍66 😀40 </p>
					</a>
			    </li>
				<li>
				     <a href="#no4" data-transition="slideup">
						<p class="ui-li-aside">2022.07.30</p>
						<h3>용기내 챌린지 도전 후기 남겨요~</h3>
						<p>💗100 👍71 😀63 </p>
				     </a>
			    </li>
			    <li>
				     <a href="#no3" data-transition="slideup">
						<p class="ui-li-aside">2022.07.29</p>
						<h3>손수건을 들고 다니면 좋은 점!!</h3>
						<p>💗95 👍88 😀74 </p>
					</a>
				</li>
				<li>
					<a href="#no2" data-transition="slideup">
						<p class="ui-li-aside">2022.07.27</p>
						<h3>탄소중립을 위해 대중교통을 이용합시다.</h3>
						<p>💗124 👍65 😀101 </p>
					</a>
				</li>
				<li>
					<a href="#no1" data-transition="slideup">
						<p class="ui-li-aside">2022.07.27</p>
						<h3>매일 하루 한끼는 채식으로^^</h3>
						<p>💗152 👍107 😀89 </p>
					</a>
				</li>
			</ul>
		</div>
		<!-- 게시판 하단 글쓰기 버튼 -->
		<div id="write_btn">
			<a href="echo_write_m.jsp" data-role="button" data-icon="edit" data-mini="true" data-inline="true" data-transition="slideup">글쓰기</a>
		</div>
		<!-- footer영역 -->
		<%@ include file="include/footer.jsp" %>
	</div>
 
 
 
 
 
	 <!-- 각 게시글 클릭 시 dialog창으로 해당 게시글 내용 출력 -->
	 <!-- 글번호1 -->
	 <div data-role="dialog" id="no1" data-theme="b">
	  <div data-role="header">
	   <h4>환경 보호 챌린지</h4>
	  </div>
	  <div data-role="content" style="text-align: center;">
	   <img src="https://blog.kakaocdn.net/dn/cI6JtO/btqYKarytpu/QP2kz3KR66R7iHuVkckji0/img.png" width="70%">
	   <p class="line">
		우리가 채식을 해야 하는 이유! 지금부터 알려드릴게요.<br>
		한 사람이 일주일에 하루 동안 채식을 하면 1년에 나무 15그루를 심는 것과 같은 놀라운 효과를 가져온다고 해요.<br><br>
		모두가 채식주의자가 되어야 한다는 뜻이 아니라, 하루에 한 끼라도 채식을 선택하고 육류 소비를 줄임으로써
		기후변화에 미치는 영향을 알리고 지속 가능한 환경을 만들기 위해서 채식을 해야 한다는 거예요.<br>
		그리고 채식을 하니까 속도 편하고 몸도 가벼워져서 좋아요.😀<br>
		저도 처음엔 하루에 한 끼만 채식을 했는데요. 이제는 일주일에 1~2일은 채식을 한답니다.<br>
		여러분도 도전해 보세요! 생각보다 어렵지 않아요.^^
	   </p>
	   <hr>
	   <form>
	    <label for="select-choice"><h5>도움이 되었나요?</h5></label>
	    <select name="select-choice" id="select-choice" data-native-menu="false"  data-mini="true" data-theme="b" data-inline="true">
	     <option value="one" selected="selected">좋아요💗</option>
	     <option value="two">멋져요👍</option>
	     <option value="three">유용해요😀</option>     
	    </select>
	   </form>
	  </div>
	 </div>
	 <!-- 글번호2 -->
	 <div data-role="dialog" id="no2" data-theme="b">
	  <div data-role="header">
	   <h4>환경 보호 챌린지</h4>
	  </div>
	  <div data-role="content" style="text-align: center;">
	   <img src="https://pbs.twimg.com/media/CLsB7UUUkAAC60k.png" width="70%">
	   <p class="line">
	    우리나라는 화석연료 비중이 높고 제조업 중심의 산업구조를 갖고 있어서
	    최근 30년 사이에 평균온도가 1.4℃나 상승했다는 사실 알고 계신가요?<br><br>
	    2018년 기준 우리나라 온실가스 배출량은 경제협력개발기구(OECD) 회원국 중 5위로
	    국제 환경단체는 우리나라를 ‘기후 악당국’으로 부르기도 헤요.<br><br>
		이 온실가스의 주범 중 하나가 자동차의 매연이에요.
		대중교통도 온실가스를 배출하지만 60g 미만으로 낮으며, 자동차는 208g으로 매우 높죠.<br><br>
		그래서 저는 출퇴근 시 온실가스를 줄이기 위해 대중교통을 이용하고 있어요.
		자전거나 도보로 이동하는 것이 온실가스가 전혀 배출되지 않아 가장 좋지만 
		직장과의 거리가 멀다면 대중교통 이용을 추천할게요~<br><br>
	    📌탄소중립에 대해 더 많은 관심과 실천이 필요한 시기입니다.
	   </p>
	   <hr>
	   <form>
	    <label for="select-choice"><h5>도움이 되었나요?</h5></label>
	    <select name="select-choice" id="select-choice" data-native-menu="false"  data-mini="true" data-theme="b" data-inline="true">
	     <option value="one" selected="selected">좋아요💗</option>
	     <option value="two">멋져요👍</option>
	     <option value="three">유용해요😀</option>     
	    </select>
	   </form>
	  </div>
	 </div>
	 <!-- 글번호3 -->
	 <div data-role="dialog" id="no3" data-theme="b">
	  <div data-role="header">
	   <h4>환경 보호 챌린지</h4>
	  </div>
	  <div data-role="content" style="text-align: center;">
	   <img src="https://www.dwbnews.kr/news/photo/202112/13513_16350_4818.jpg" width="70%">
	   <p class="line">
		일회용품 사용을 줄이기 위해 어떤 행동을 할 수 있을까 생각하다가
		화장실에서 모두 무심코 사용하는 핸드 타월이 떠올랐어요.
		"핸드 타월 한 장이면 충분합니다" 이 문구는 모두 보신 적 있을 거예요. <br><br>
	    손수건을 들고 다니니까 일회용품 사용량이 확 줄더라고요.
	    땀이나면 땀도 닦고, 손을 씻고 나서 물기도 닦고 휴지 쓸 일이 없어요.^^<br><br>
	    무엇보다 손수건을 사용하는 작은 실천이 소나무 약 4만 그루를 살릴 수 있다고 해요.
	    내일부터 가방에 손수건 하나 들고 다니시는 것 어때요? 
	   </p>
	   <hr>
	   <form>
	    <label for="select-choice"><h5>도움이 되었나요?</h5></label>
	    <select name="select-choice" id="select-choice" data-native-menu="false"  data-mini="true" data-theme="b" data-inline="true">
	     <option value="one" selected="selected">좋아요💗</option>
	     <option value="two">멋져요👍</option>
	     <option value="three">유용해요😀</option>     
	    </select>
	   </form>
	  </div>
	 </div>
	 <!-- 글번호4 -->
	 <div data-role="dialog" id="no4" data-theme="b">
	  <div data-role="header">
	   <h4>환경 보호 챌린지</h4>
	  </div>
	  <div data-role="content" style="text-align: center;">
	   <img src="https://cphoto.asiae.co.kr/listimglink/7/2021040613531467849_1617684794.jpg" width="70%">
	   <p class="line">
	    용기내 챌린지 참여해 보신 적 있으신가요?<br><br>
	    용기의 뜻은 2가지가 있어요. '씩씩하고 굳센 기운' 또는 '물건을 담는 그릇'을 뜻하죠.
	    음식 배달, 포장으로 발생하는 많은 일회용품을 줄이자는 취지의 챌린지인데요.<br><br>
	    저는 락앤락통에 빵을 포장해오고, 정육점에는 냄비를 가져가서 담아오기도 했어요.
	    용기내 챌린지에 참여할 때는 넉넉한 크기의 용기를 가져가는 게 좋아요. 
	    미리 음식점에 전화해 다회용기 포장이 되는지 물어보는 것도 좋은 방법이에요.<br><br>
	    이렇게 음식 포장뿐만 아니라 마트를 갈 때는 장바구니를 챙기는 것도
	    용기내 챌린지라고 할 수 있어요. <br><br>
	    이번 주말에 도전해 보는 것 어떠세요?
	   </p>
	   <hr>
	   <form>
	    <label for="select-choice"><h5>도움이 되었나요?</h5></label>
	    <select name="select-choice" id="select-choice" data-native-menu="false"  data-mini="true" data-theme="b" data-inline="true">
	     <option value="one" selected="selected">좋아요💗</option>
	     <option value="two">멋져요👍</option>
	     <option value="three">유용해요😀</option>     
	    </select>
	   </form>
	  </div>
	 </div>
	 <!-- 글번호5 -->
	 <div data-role="dialog" id="no5" data-theme="b">
	  <div data-role="header">
	   <h4>환경 보호 챌린지</h4>
	  </div>
	  <div data-role="content" style="text-align: center;">
	   <img src="images/tumblr.jpg" width="70%">
	   <p class="line">
	    환경보호를 위해 텀블러 사용하시는 분들 많으시죠!<br>
	    일회용 컵 사용을 줄이기 위해 저도 항상 가방 속에 들고 다닙니다.
	    대부분의 텀블러는 보온, 보냉 기능을 갖추었기 때문에 일회용 컵보다 온도 유지가 잘 돼서
	    음료의 맛도 더 좋더라고요.^^<br><br>
	    하지만, 정말 환경에 도움이 되려면 텀블러 하나를 꾸준히 쓰는 것이 중요해요.
	    텀블러, 이미 있다면 더 이상 구매하지 않고 기존의 텀블러 하나를 꾸준히 쓰는 것이 환경에 도움이 된답니다! 
	   </p>
	   <hr>
	   <form>
	    <label for="select-choice"><h5>도움이 되었나요?</h5></label>
	    <select name="select-choice" id="select-choice" data-native-menu="false"  data-mini="true" data-theme="b" data-inline="true">
	     <option value="one" selected="selected">좋아요💗</option>
	     <option value="two">멋져요👍</option>
	     <option value="three">유용해요😀</option>     
	    </select>
	   </form>
	  </div>
	 </div>
</body>
</html>