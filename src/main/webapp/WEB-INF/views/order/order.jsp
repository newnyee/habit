<<<<<<< Updated upstream:src/main/webapp/WEB-INF/views/order/order.jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../header.jsp"%>
<link rel="stylesheet" href="css/order.css?after" />
<script src="js/jquery.cookie.js"></script>
<script src="js/order.js?after"></script>
<script src="js/common.js?after"></script>
=======
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title></title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/css/reset.css?after">
  <link rel="stylesheet" href="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/css/order.css?after">
  <script src="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/js/order.js?after"></script>
  <link rel="stylesheet" href="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/css/modal.css?after">

  
 

  
</head>
<body> 
    <!--헤더시작--> 
    <header>
      <div class="global1">
        <div class="global_topbar">
            <div class="global_topbar_menu1" >
            <a href=""><div class="global_topbar_menu1_menu">호스트지원</div></a>
            </div>
            <div class="global_topbar_menu2" >
            <a href="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/newMember.html" class="global_topbar_menu2_menu"><div class="global_topbar_menu2_menu">회원가입</div></a>
            <a href="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/login.html" class="global_topbar_menu2_menu"><div class="global_topbar_menu2_menu">로그인</div></a>
            <a href="" class="global_topbar_menu2_menu"><div class="global_topbar_menu2_menu">자주 묻는 질문</div></a>
            <a href="" class="global_topbar_menu2_menu"><div class="global_topbar_menu2_menu">공지사항</div></a>
            </div>
        </div>
      </div>

      <!--topvar2-->
      <div class="global2">
        <div class="global_topbar2">
            <div class="global_topbar2_menu1">
                <a href="category.html" class="global_topbar2_menu1_a">
                    <div>
                        <img src="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/img/cate.png" alt="" width="25px"  >
                        <span>카테고리</span>
                    </div>
                </a>
                
                <a href="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/intro.html" class="global_topbar2_menu1_a_log">
                    <div class="global_topbar2_menu1_a_div">
                        <img src="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/img/logo%20(2).png" alt="로고" width="70px" >
                    </div>         
                </a>

                <div class="global_topbar2_menu1_search">
                    <div>
                        <form action="">
                            <img src="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/img/search.png" alt="로고" >
                            <input type="text" class="global_topbar2_menu1_search_input search_input" placeholder="지금 생각나는 취미를 검색하세요.">
                        </form>
                    </div>
                </div>
            </div>

            <div class="global_topbar2_menu2">
                <a href="">
                    <div class="global_topbar2_menu2_menu">
                        <div>
                            <img src="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/img/feed.png" alt="로고" width="25px" >
                        </div>
                        <span>피드</span>
                    </div>
                </a>
                <a href="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/zzim.html">
                    <div class="global_topbar2_menu2_menu">
                        <div>
                            <img src="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/img/heartforpage.png" alt="로고" width="25px" >
                        </div>
                        <span>찜</span>
                    </div>
                </a>
                <a href="cart.jsp">
                    <div class="global_topbar2_menu2_menu">
                        <div>
                            <img src="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/img/cart2.png" alt="로고" width="25px" >
                        </div>
                        <span>장바구니</span>
                    </div>
                </a>
                <a href="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/mypage.html">
                    <div class="global_topbar2_menu2_menu">
                        <div>
                            <img src="../../../../../../../frontend%20총모음%20(2)/frontend%20총모음/img/ME.png" alt="로고" width="25px">
                        </div>
                        <span>마이</span>
                    </div>
                </a>
            </div>
        </div>
      </div>

      <div class="global_modal">
        <div class="global_modal_form">
            <div class="global_topbar2_search">
                <div class="global_modal_wrapper">
                    <div>
                        <section>
                            <div class="global_modal_search">
                                <div>최근검색어</div>
                                <a href="#"><div class="global_modal_search_del">지우기</div></a>
                            </div>
                    
                            <a href="#"><div class="global_modal_searchNew">소개팅</div></a>
                            <a><div class="global_modal_searchNew">소개팅</div></a>
                            <a><div class="global_modal_searchNew">소개팅</div></a>
                            <a><div class="global_modal_searchNew">소개팅</div></a>
                            <a><div class="global_modal_searchNew">소개팅</div></a>
                            <a><div class="global_modal_searchNew">소개팅</div></a>
                            <a><div class="global_modal_searchNew">소개팅</div></a>
                  
                        </section>
                        <hr>
                        <section>
                            <div class="global_modal_search">인기검색어</div>
                            <a href="#"><div class="global_modal_searchResult">소개팅</div></a>
                            <a href="#"><div class="global_modal_searchResult">소개팅</div></a>
                            <a href="#"><div class="global_modal_searchResult">소개팅</div></a>
                        </section>
                       
                    </div>
                </div>
            </div>
            
        </div>
        <div class="global_modal_bottom"></div>
    </div>
    </header>

    <!--헤더끝-->

>>>>>>> Stashed changes:src/main/webapp/WEB-INF/views/order/order.html
    <!-- 본문 시작 -->

    <div class="Home">
        <div>
            <div class="Home_order_sub">결제내역</div>
            <hr>
            <div>
                <!-- <div>
                    <div class="Home_btn">
                        <button class="Home_reserve_btn">예약 확정만 보기</button>
                    </div>
                    <div class="Home_btn">
                        <button class="Home_reserve_can">취소 내역 숨기기</button>
                    </div>
                </div> -->
                <!--버튼 끝-->

                <div>
                    <div class="Home_show_container show_list">
                        <div class="Home_show_date">2022년 5월 24일 23:30 결제</div> | 
                        <div class="Home_show_num"> 구매수량 : <span>1</span></div>
                        <div class="Home_show_detail"><a href="orderdetail.jsp">주문상세 보기 ></a></div>
                        <div class="Home_show_con">
                            <div class="Home_show_wrapper">
                                <img src="/img/image.jpeg" alt="" class="Home_show_order_img">
                                <a >
                                    <div class="Home_show_order_info">
                                    <div>신사 / 가로수길 칵테일 클래스</div>
                                    <div>6월 1일 (일) 오후 2시 30분</div>
                                    <div></div>
                                    </div>
                                </a>
                                <div class="Home_change_con">
                                    <div>
                                        <button class="Home_change_btn" onclick="location.href='refund.html';">환불하기</button>
                                    </div>
                                    <div>
                                        <button class="Home_change_btn"  onclick="location.href='reviewwrite.html';">리뷰쓰기</button>
                                    </div>
                                </div>
                            </div>
                            <div class="Home_show_wrapper">
                                <img src="/img/image.jpeg" alt="" class="Home_show_order_img">
                                <a >
                                    <div class="Home_show_order_info">
                                    <div>신사 / 가로수길 칵테일 클래스</div>
                                    <div>6월 1일 (일) 오후 2시 30분</div>
                                    <div></div>
                                    </div>
                                </a>
                                <div class="Home_change_con">
                                    <div>
                                        <button class="Home_change_btn">환불하기</button>
                                    </div>
                                    <div>
                                        <button class="Home_change_btn">리뷰쓰기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="Home_divhr">
                    </div>

                    <div class="Home_show_container_cancel show_list">
                        <div class="Home_show_date">2022년 5월 24일 23:30 결제</div> | 
                        <div class="Home_show_num"> 구매수량 : <span>1</span></div>
                        <div class="Home_show_detail"><a href="orderdetail.jsp">주문상세 보기 ></a></div>
                        <div class="Home_show_wrapper">
                            <img src="/img/image.jpeg" alt="" class="Home_show_order_img">
                            <span class="Home_refund"><span>환불완료</span></span>
                            <a href="orderdetail.jsp">
                                <div class="Home_show_order_info">
                                    <div>신사 / 가로수길 칵테일 클래스</div>
                                    <div>6월 1일 (일) 오후 2시 30분</div>
                                    
                                    <div></div>
                                    </div>
                                <div class="Home_change_con">
                                    <div>
                                        <button type="button" class="Home_change_btn_refund" disabled>환불하기</button>
                                    </div>
                                    <div>
                                        <button  type="button" class="Home_change_btn_refund" disabled>리뷰쓰기</button>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <hr class="Home_divhr">
                    </div>   

                    <div class="Home_show_container_cancel show_list">
                        <div class="Home_show_date">2022년 5월 24일 23:30 결제</div> | 
                        <div class="Home_show_num"> 구매수량 : <span>1</span></div>
                        <div class="Home_show_detail"><a href="orderdetail.jsp">주문상세 보기 ></a></div>
                        <div class="Home_show_wrapper">
                            <img src="/img/image.jpeg" alt="" class="Home_show_order_img">
                            <span class="Home_refund"><span>환불완료</span></span>
                            <a href="orderdetail.jsp">
                                <div class="Home_show_order_info">
                                    <div>신사 / 가로수길 칵테일 클래스</div>
                                    <div>6월 1일 (일) 오후 2시 30분</div>
                                    
                                    <div></div>
                                    </div>
                                <div class="Home_change_con">
                                    <div>
                                        <button type="button" class="Home_change_btn_refund" disabled>환불하기</button>
                                    </div>
                                    <div>
                                        <button  type="button" class="Home_change_btn_refund" disabled>리뷰쓰기</button>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <hr class="Home_divhr">
                    </div>   

                    <div class="Home_show_container show_list">
                        <div class="Home_show_date">2022년 5월 24일 23:30 결제</div> | 
                        <div class="Home_show_num"> 구매수량 : <span>1</span></div>
                        <div class="Home_show_detail"><a href="orderdetail.jsp">주문상세 보기 ></a></div>
                        <div class="Home_show_con">
                            <div class="Home_show_wrapper">
                                <img src="/img/image.jpeg" alt="" class="Home_show_order_img">
                                <a >
                                    <div class="Home_show_order_info">
                                    <div>신사 / 가로수길 칵테일 클래스</div>
                                    <div>6월 1일 (일) 오후 2시 30분</div>
                                    <div></div>
                                    </div>
                                </a>
                                <div class="Home_change_con">
                                    <div>
                                        <button class="Home_change_btn" onclick="location.href='refund.html';">환불하기</button>
                                    </div>
                                    <div>
                                        <button class="Home_change_btn"  onclick="location.href='reviewwrite.html';">리뷰쓰기</button>
                                    </div>
                                </div>
                            </div>
                            <div class="Home_show_wrapper">
                                <img src="/img/image.jpeg" alt="" class="Home_show_order_img">
                                <a >
                                    <div class="Home_show_order_info">
                                    <div>신사 / 가로수길 칵테일 클래스</div>
                                    <div>6월 1일 (일) 오후 2시 30분</div>
                                    <div></div>
                                    </div>
                                </a>
                                <div class="Home_change_con">
                                    <div>
                                        <button class="Home_change_btn">환불하기</button>
                                    </div>
                                    <div>
                                        <button class="Home_change_btn">리뷰쓰기</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr class="Home_divhr">
                    </div>

                    <div class="Home_show_container_cancel show_list">
                        <div class="Home_show_date">2022년 5월 24일 23:30 결제</div> | 
                        <div class="Home_show_num"> 구매수량 : <span>1</span></div>
                        <div class="Home_show_detail"><a href="orderdetail.jsp">주문상세 보기 ></a></div>
                        <div class="Home_show_wrapper">
                            <img src="/img/image.jpeg" alt="" class="Home_show_order_img">
                            <span class="Home_refund"><span>환불완료</span></span>
                            <a href="orderdetail.jsp">
                                <div class="Home_show_order_info">
                                    <div>신사 / 가로수길 칵테일 클래스</div>
                                    <div>6월 1일 (일) 오후 2시 30분</div>
                                    
                                    <div></div>
                                    </div>
                                <div class="Home_change_con">
                                    <div>
                                        <button type="button" class="Home_change_btn_refund" disabled>환불하기</button>
                                    </div>
                                    <div>
                                        <button  type="button" class="Home_change_btn_refund" disabled>리뷰쓰기</button>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <hr class="Home_divhr">
                    </div>   
                </div>

                <div class="Home_show_con_btn">
                    <button class="Home_show_more show_btn">더보기</button>
                </div>
            </div>
        </div>
    </div>

    <!-- 본문 끝-->

<%@include file="../footer.jsp"%>