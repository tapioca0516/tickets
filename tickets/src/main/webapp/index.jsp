<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- 한글 인코딩 처리 --%>
<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>
<style class="cp-pen-styles">
#carousel3d .carousel-3d-slide {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-flex: 1;
      -ms-flex: 1;
          flex: 1;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  text-align: center;
  background-color: #fff;
  padding: 10px;
  -webkit-transition: all .4s;
  transition: all .4s;
}
#carousel3d .carousel-3d-slide.current {
  color: #fff;
}
#carousel3d .carousel-3d-slide.current span {
  font-size: 20px;
  font-weight: 500;
}
#content,#carousel3d{
	height:500px;
}
.carousel-3d-container, .carousel-3d-slider, .carousel-3d-slide{
	height:500px !important;
	border-width:0px !important;
}
.main-container{
	text-align: center;
}
</style>
<div class="main-container">
	<div id="carousel3d">
	  <carousel-3d :perspective="0" :space="200" :display="5" :controls-visible="true" :controls-prev-html="'❬'" :controls-next-html="'❭'" :controls-width="30" :controls-height="100" :clickable="true" :autoplay="true" :autoplay-timeout="5000">
	    <slide :index="0">
	     <a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/캣츠.jpg"/></a>
	    </slide>
		<slide :index="1">
	        <a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/1.PNG"/></a>
	    </slide>
		<slide :index="2">
	  		<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG"/></a>
	    </slide>
			<slide :index="3">
	      <a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/3.PNG"/></a>
	    </slide>
		<slide :index="4">
	 		<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/4.PNG"/></a>
	    </slide>
		<slide :index="5">
	 		<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/1.PNG"/></a>
	    </slide>
		<slide :index="6">
	 		<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG"/></a>
	    </slide>
			
	  </carousel-3d>
	</div>
	<div class="d-block mx-auto mt-5">
	<ul class="nav nav-tabs justify-content-center">
	  <li class="nav-item">
	    <a class="nav-link" data-toggle="tab" href="#new"><h3 class="m-10 px-5">New!공연</h3></a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link active" data-toggle="tab" href="#con"><h3 class="m-10 px-5">콘서트/페스티벌</h3></a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link link" data-toggle="tab" href="#mu"><h3 class="m-10 px-5">뮤지컬&연극</h3></a>
	  </li>
	</ul>
	</div>
	<div id="myTabContent" class="tab-content d-block mx-auto mt-5 mb-5">
	  <div class="tab-pane fade" id="new">
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">댕댕이 페스티벌</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/1.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">옹성우 팬미팅</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/3.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">뮤지컬 제이미</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/4.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">ㅋㄷㅋㄷ 런</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/캣츠.jpg" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">캣츠</h5></figcaption></a>
		  </div>
	  </div>
	  <div class="tab-pane fade active show" id="con">
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/1.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">옹성우 팬미팅</h5></figcaption></a>
		  </div>
	  	  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">댕댕이 페스티벌</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/캣츠.jpg" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">캣츠</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/4.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">ㅋㄷㅋㄷ 런</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/3.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">뮤지컬 제이미</h5></figcaption></a>
		  </div>
	  </div>
	  <div class="tab-pane fade" id="mu">
	      <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">댕댕이 페스티벌</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/3.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">뮤지컬 제이미</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/4.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">ㅋㄷㅋㄷ 런</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/캣츠.jpg" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">캣츠</h5></figcaption></a>
		  </div>
		  <div class="d-inline-block px-3">
		  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/1.PNG" style="width:150px;height:200px;"/></a>
		  	<a href="#"><figcaption class="figure-caption text-center"><h5 class="card-title mt-2">옹성우 팬미팅</h5></figcaption></a>
		  </div>
	  </div>
	</div>
	<img src="${pageContext.request.contextPath }/resources/images/etc/배너.png" style="height:100px;width:900px"/>
	<div class="third-main">
		<div class="open-ticket mx-auto mt-5" style="width:365px;float:left;position:relative;">
			<h4 class="card-title">티켓오픈소식</h4>
			<div class="more" style="text-align:right;">
				<a href="#">더보기 ❭</a>
			</div>
			<ul class="list-group list-group-flush">
			  <li class="list-group-item" style="text-align:left;">
			  	<a href="#" class="inner inner_ico">
	               <span class="badge badge-primary" style="float:left;"><span class="ico1">단독판매</span></span>
	               <br />
	               <span>
					  크라잉넛 25주년 기념 공연 티켓 오픈 안내
					  <br />
					  <small class="text-muted">[오픈]20.09.11(금) 14:00</small>
					</span>
	            </a>
			  </li>
			  <li class="list-group-item" style="text-align:left;">
			  	<a href="#" class="inner inner_ico">
	               <span class="badge badge-primary" style="float:left;"><span class="ico1">단독판매</span></span>
	               <br />
	               <span>
					 스푸트니크 티켓 오픈 안내
					  <br />
					  <small class="text-muted">[오픈]20.09.11(금) 14:00</small>
					</span>
	            </a>
			  </li>
			  <li class="list-group-item" style="text-align:left;">
			  	<a href="#" class="inner inner_ico">
	               <span>
					  젠틀레인 6집 발매 기념 공연 티켓 오픈 안내
					  <br />
					  <small class="text-muted">[오픈]20.09.11(금) 14:00</small>
					</span>
	            </a>
			  </li>
			  <li class="list-group-item" style="text-align:left;">
			  	<a href="#" class="inner inner_ico">
	               <span>
					  뮤지컬 〈작은 아씨들〉티켓 오픈 안내
					  <br />
					  <small class="text-muted">[오픈]20.09.11(금) 14:00</small>
					</span>
	            </a>
			  </li>
			  <li class="list-group-item" style="text-align:left;">
			  	<a href="#" class="inner inner_ico">
	               <span class="badge badge-primary mx-auto" style="float:left;"><span class="ico1">단독판매</span></span>
	               <span>
					  서울숲재즈페스티벌 2020 공식티켓 오픈 안내
					  <br />
					  <small class="text-muted">[오픈]20.09.11(금) 14:00</small>
					</span>
	            </a>
			  </li>
			</ul>
		</div>
		<div class="time-ticket mt-5" style="width:360px;float:left;position:relative;">
			<h4 class="card-title">오늘 티켓</h4>
			<div class="more" style="text-align:right;">
				<a href="#">더보기 ❭</a>
			</div>
				<h5 class="mt-3">
				  <small class="text-muted">오늘 바로 저렴하게 이용할 수 있는</small><br />
				  <a href="#">마감임박 할인 오늘티켓</a>
				</h5>
				<img src="${pageContext.request.contextPath }/resources/images/etc/ticket.PNG" style="width:200px;"/>
				<p class="lead">
	    		<a class="btn btn-primary btn-lg" href="#" role="button">목록보기</a>
	  			</p>
		</div>
		<div class="rank-ticket mx-auto mt-5" style="width:380px;float:left;position:relative;">
			<h4 class="card-title">랭킹</h4>
			<div class="more" style="text-align:right;">
				<a href="#">더보기 ❭</a>
			</div>
		  <div class="d-block mx-auto mt-3">
			<ul class="nav nav-tabs justify-content-center">
			  <li class="nav-item">
			    <a class="nav-link" data-toggle="tab" href="#concert"><span>콘서트</span></a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" data-toggle="tab" href="#music"><span>뮤지컬/페스티벌</span></a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link link" data-toggle="tab" href="#classic"><span>클래식/재즈</span></a>
			  </li>
			</ul>
		  </div>
		  <div id="rankContent" class="tab-content d-block mx-auto mt-5 text-left">
			  <ol class="tab-pane fade" id="concert">
				  <li class="px-3 mb-3">
				  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" style="width:60px;height:90px;"/></a>
				  	<a href="#">
					<ul style="text-align:center;display:inline-block;list-style-type:none;">
						<li>댕댕이 페스티벌</li>
						<li>20.09.11(금)</li>
					</ul>
					</a>
				  </li>
				  <li class="px-3 mb-3">
				  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/1.PNG" style="width:60px;height:90px;"/></a>
				 	<a href="#">
					<ul style="text-align:center;display:inline-block;list-style-type:none;">
						<li>옹성우 팬미팅</li>
						<li>20.09.11(금)</li>
					</ul>
					</a>
				  </li>
				  <li class="px-3">
				  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/3.PNG" style="width:60px;height:90px;"/></a>
				  	<a href="#">
					<ul style="text-align:center;display:inline-block;list-style-type:none;">
						<li>뮤지컬 제이미</li>
						<li>20.09.11(금)</li>
					</ul>
					</a>
				  </li>
			  </ol>
			  <ol class="tab-pane fade active show" id="music">
				  <li class="px-3 mb-3">
				  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/1.PNG" style="width:60px;height:90px;"/></a>
				 	<a href="#">
					<ul style="text-align:center;display:inline-block;list-style-type:none;">
						<li>옹성우 팬미팅</li>
						<li>20.09.11(금)</li>
					</ul>
					</a>
				  </li>
			  	  <li class="px-3 mb-3">
				  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" style="width:60px;height:90px;"/></a>
				 	<a href="#">
					<ul style="text-align:center;display:inline-block;list-style-type:none;">
						<li>댕댕이 페스티벌</li>
						<li>20.09.11(금)</li>
					</ul>
					</a>
				  </li>
				  <li class="px-3">
				  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/캣츠.jpg" style="width:60px;height:90px;"/></a>
					<a href="#">
					<ul style="text-align:center;display:inline-block;list-style-type:none;">
						<li>캣츠</li>
						<li>20.09.11(금)</li>
					</ul>
					</a>
				  </li>
			  </ol>
			  <ol class="tab-pane fade" id="classic">
			      <li class="px-3 mb-3">
				  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" style="width:60px;height:90px;display:inline"/></a>
				  	<a href="#">
					<ul style="text-align:center;display:inline-block;list-style-type:none;">
						<li>댕댕이 페스티벌</li>
						<li>20.09.11(금)</li>
					</ul>
					</a>
				  </li>
				  <li class="px-3 mb-3">
				  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/3.PNG" style="width:60px;height:90px;"/></a>
				  	<a href="#">
					<ul style="text-align:center;display:inline-block;list-style-type:none;">
						<li>뮤지컬 제이미</li>
						<li>20.09.11(금)</li>
					</ul>
					</a>
				  </li>
				  <li class="px-3">
				  	<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/4.PNG" style="width:60px;height:90px;"/></a>
				  	<a href="#">
					<ul style="text-align:center;display:inline-block;list-style-type:none;">
						<li>ㅋㄷㅋㄷ 런</li>
						<li>20.09.11(금)</li>
					</ul>
					</a>
				  </li>
			 	 </ol>
			</div>
		</div>		
	</div>

	<div class="perform float-left">
		<div class="figure mx-3">
		<h2 class="text-left" style="margin-top:50px;margin-bottom:20px;">티켓츠 PICK!</h2>
			<figure class="figure img-thumbnail">
			<img src="${pageContext.request.contextPath }/resources/images/poster/1.PNG" class="mx-3" style="width:180px;height:250px;">
			<figcaption class="figure-caption text-center"><h5 class="card-title mt-2">옹성우 팬미팅</h5></figcaption>
			</figure>
		</div>
		<div class="figure mx-3">
			<figure class="figure img-thumbnail">
			<img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" class="mx-3" style="width:180px;height:250px;">
			<figcaption class="figure-caption text-center"><h5 class="card-title mt-2">댕댕이 페스티벌</h5></figcaption>
			</figure>
		</div>
		<div class="figure mx-3">
			<figure class="figure img-thumbnail">
			<img src="${pageContext.request.contextPath }/resources/images/poster/3.PNG" class="mx-3" style="width:180px;height:250px;">
			<figcaption class="figure-caption text-center"><h5 class="card-title mt-2">뮤지컬 제이미</h5></figcaption>
			</figure>
		</div>
		<div class="figure mx-3">
			<figure class="figure img-thumbnail">
			<img src="${pageContext.request.contextPath }/resources/images/poster/4.PNG" class="mx-3" style="width:180px;height:250px;">
			<figcaption class="figure-caption text-center"><h5 class="card-title mt-2">ㅋㄷㅋㄷ런</h5></figcaption>
			</figure>
		</div>
		<div class="figure mx-3">
			<figure class="figure img-thumbnail">
			<img src="${pageContext.request.contextPath }/resources/images/poster/4.PNG" class="mx-3" style="width:180px;height:250px;">
			<figcaption class="figure-caption text-center"><h5 class="card-title mt-2">ㅋㄷㅋㄷ런</h5></figcaption>
			</figure>
		</div>
		<div class="figure mx-3">
			<figure class="figure img-thumbnail">
			<img src="${pageContext.request.contextPath }/resources/images/poster/3.PNG" class="mx-3" style="width:180px;height:250px;">
			<figcaption class="figure-caption text-center"><h5 class="card-title mt-2">뮤지컬 제이미</h5></figcaption>
			</figure>
		</div>
		<div class="figure mx-3">
			<figure class="figure img-thumbnail">
			<img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" class="mx-3" style="width:180px;height:250px;">
			<figcaption class="figure-caption text-center"><h5 class="card-title mt-2">댕댕이 페스티벌</h5></figcaption>
			</figure>
		</div>
		<div class="figure mx-3">
			<figure class="figure img-thumbnail">
			<img src="${pageContext.request.contextPath }/resources/images/poster/1.PNG" class="mx-3" style="width:180px;height:250px;">
			<figcaption class="figure-caption text-center"><h5 class="card-title mt-2">옹성우 팬미팅</h5></figcaption>
			</figure>
		</div>
		
	</div>
</div>
<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script><script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.7/vue.js'></script><script src='https://rawgit.com/Wlada/vue-carousel-3d/master/dist/vue-carousel-3d.min.js'></script>
<script >new Vue({
  el: '#carousel3d',
  data: {
    slides: 7
  },
  components: {
    'carousel-3d': Carousel3d.Carousel3d,
    'slide': Carousel3d.Slide
  }
})
</script>
	
</section>

	<footer style="position:absolute; width:100%;top:2700px;left:0;">
		<div class="text-center mt-3 bg-primary text-light">
			<p>&lt;Copyright 2020. <strong>티캣츠</strong>. All rights reserved.&gt;</p>
		</div>
	</footer>
</body>
</html>
	
	
	
	