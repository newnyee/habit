<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=6cd9ccbff69ea4ecff8c4d402d1d27ad&libraries=services"></script>
<script src="/js/host/contentDetailModal.js"></script>
<link rel="stylesheet" href="/css/summernote/summernote-lite.min.css">
<!-- 썸머 노트 js, css 추가 종료 -->
<%-- update modal 시작 --%>
<div class="detail-modal">
  <div class="update-modal-body">
    <div class="container">
      <!-- 페이지 이름 -->
      <p class="page-name">해빗 상세</p>

      <!-- main 시작 -->
      <!-- 기본 정보 -->
      <div class="content-wrap">
        <div class="content">
          <p class="content-name">기본 정보</p>
          <div class="content-flex">
            <div class="item-name">
              <p>카테고리</p>
            </div>
            <div>
              <div class="content-flex">
                <div style="width: 200px; margin-right: 10px;">
                  <input type="text" class="form-control" id="detail_cate_large" value="대분류" readonly>
                </div>
                <div>
                  <p style="font-size: large; font-weight: bold">&gt;</p>
                </div>
                <div style="width: 200px;">
                  <input type="text" class="form-control" id="detail_cate_middle" value="중분류" readonly>
                </div>
              </div>
            </div>
          </div><hr>
          <div class="content-flex">
            <div class="item-name">
              <p>해빗명</p>
            </div>
            <div>
              <div style="width: 400px">
                <input type="text" class="form-control" id="detail_cont_name" readonly>
              </div>
            </div>
          </div><hr>
          <div>
            <div class="item-name" style="margin: 50px 30px 0">
              <p>진행 장소</p>
            </div>
            <div style="font-weight: bold; margin: 0 30px 30px">
              <div id="map" style="width:100%; height:350px;"></div>
              <div id="detail_cont_addr" class="address"></div>
              <button class="btn btn-outline-primary" onclick="relayout()">relayout 호출하기</button>
            </div>
          </div><hr>
          <div class="content-flex">
            <div class="item-name">
              <p>해시태그</p>
            </div>
            <div>
              <p class="item2-info" style="color: gray;">해빗 이용자들에게 해시태그로 보여지는 정보입니다.</p>
            </div>
            <div>
              <div class="item">
                <div class="item-name-sm">
                  <p>클래스 참여에 적합한 성별</p>
                </div>
                <div class="checkbox">
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="cont_hashtag1" id="hashtag1-1" value="M" disabled>
                    <label class="form-check-label" for="hashtag1-1">
                      남자
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="cont_hashtag1" id="hashtag1-2" value="W" disabled>
                    <label class="form-check-label" for="hashtag1-2">
                      여자
                    </label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input" type="radio" name="cont_hashtag1" id="hashtag1-3" value="N" disabled>
                    <label class="form-check-label" for="hashtag1-3">
                      상관없음
                    </label>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-name-sm">
                  <p>클래스 참여에 적합한 나이대 (다중선택 가능)</p>
                </div>
                <div class="checkbox">
                  <div>
                    <input class="form-check-input" type="checkbox" name="cont_hashtag2" id="hashtag2-1" value="20" disabled>
                    <label class="form-check-label" for="hashtag2-1">
                      20대
                    </label>
                  </div>
                  <div>
                    <input class="form-check-input" type="checkbox" name="cont_hashtag2" id="hashtag2-2" value="30" disabled>
                    <label class="form-check-label" for="hashtag2-2">
                      30대
                    </label>
                  </div>
                  <div>
                    <input class="form-check-input" type="checkbox" name="cont_hashtag2" id="hashtag2-3" value="40" disabled>
                    <label class="form-check-label" for="hashtag2-3">
                      40대
                    </label>
                  </div>
                  <div>
                    <input class="form-check-input" type="checkbox" name="cont_hashtag2" id="hashtag2-4" value="50" disabled>
                    <label class="form-check-label" for="hashtag2-4">
                      50대 이상
                    </label>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-name-sm">
                  <p>클래스 활동 범위</p>
                </div>
                <div class="checkbox">
                  <div>
                    <input class="form-check-input" type="radio" name="cont_hashtag3" id="hashtag3-1" value="IN" disabled>
                    <label class="form-check-label" for="hashtag3-1">
                      실내 활동
                    </label>
                  </div>
                  <div>
                    <input class="form-check-input" type="radio" name="cont_hashtag3" id="hashtag3-2" value="OUT" disabled>
                    <label class="form-check-label" for="hashtag3-2">
                      실외 활동
                    </label>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-name-sm">
                  <p>함께하기 좋은 멤버 (다중선택 가능)</p>
                </div>
                <div class="checkbox">
                  <div>
                    <input class="form-check-input" type="checkbox" value="WC" name="cont_hashtag4" id="hashtag4-1" disabled>
                    <label class="form-check-label" for="hashtag4-1">
                      연인과 함께
                    </label>
                  </div>
                  <div>
                    <input class="form-check-input" type="checkbox" value="WF" name="cont_hashtag4" id="hashtag4-2" disabled>
                    <label class="form-check-label" for="hashtag4-2">
                      친구와 함께
                    </label>
                  </div>
                  <div>
                    <input class="form-check-input" type="checkbox" value="WA" name="cont_hashtag4" id="hashtag4-3" disabled>
                    <label class="form-check-label" for="hashtag4-3">
                      혼자
                    </label>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-name-sm">
                  <p>개설 클래스 평균 금액대</p>
                </div>
                <div class="checkbox">
                  <div>
                    <input class="form-check-input" type="radio" name="cont_hashtag5" id="hashtag5-1" value="P3" disabled>
                    <label class="form-check-label" for="hashtag5-1">
                      3만원 미만
                    </label>
                  </div>
                  <div>
                    <input class="form-check-input" type="radio" name="cont_hashtag5" id="hashtag5-2" value="P5" disabled>
                    <label class="form-check-label" for="hashtag5-2">
                      3만원 ~ 5만원 미만
                    </label>
                  </div>
                  <div>
                    <input class="form-check-input" type="radio" name="cont_hashtag5" id="hashtag5-3" value="P7" disabled>
                    <label class="form-check-label" for="hashtag5-3">
                      5만원 ~ 7만원 미만
                    </label>
                  </div>
                  <div>
                    <input class="form-check-input" type="radio" name="cont_hashtag5" id="hashtag5-4" value="PP" disabled>
                    <label class="form-check-label" for="hashtag5-4">
                      7만원 이상
                    </label>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- 판매 정보 -->
        <div class="content">
          <p class="content-name">판매 정보</p>
          <div class="content-flex">
            <div class="item-name">
              <p>판매 기간</p>
            </div>
            <div>
              <div class="item" style="align-items: center;">
                <div>
                  <input class="form-control" type="datetime-local" id="detail_cont_stdate" readonly>
                </div>
                <div style="font-weight: bold; font-size: large">
                  <span>~</span>
                </div>
                <div>
                  <input class="form-control" type="datetime-local" id="detail_cont_endate" readonly>
                </div>
                <div>
                  <span id="date"></span>
                </div>
              </div>
            </div>
          </div><hr>
          <div>
            <div class="item-name" style="margin: 50px 30px 0">
              <p>판매 유형</p>
            </div>
            <div style="display: flex; align-items: center; justify-content: center;">
              <div id="detail_prod" class="select" style="display: none; flex-direction: column; align-items: center; justify-content: center">
                <input type="radio" id="detail_type-prod" name="cont_type" value="prod" disabled>
                <label for="detail_type-prod" style="height: 100%; min-height: 170px; display: flex; flex-direction: column; align-items: center; justify-content: center">
                  <p>날짜 조율형</p>
                  <p>호스트님이 회원 연락처로 별도 연락하여 일정을 조율하는 형태의 해빗입니다. (에스테틱, 네일 등에 적합)</p>
                </label>
              </div>
              <div id="detail_one" class="select" style="display: none; flex-direction: column; align-items: center; justify-content: center">
                <input type="radio" id="detail_type-one" name="cont_type" value="one" disabled>
                <label for="detail_type-one" style="height: 100%; min-height: 170px; display: flex; flex-direction: column; align-items: center; justify-content: center">
                  <p>날짜 지정형</p>
                  <p>호스트님께서 날짜와 옵션을 등록하여 가능한 날에만 예약을 받을 수 있는 해빗입니다.<br>일정 관리 및 고객 관리를 더 간편하게 하실 수 있습니다. (에스테틱, 네일 제외한 대부분의 해빗)</p>
                </label>
              </div>
            </div>
          </div><hr>
          <div style="position: relative">
            <div class="update-block">
              <p>옵션 수정 완료</p>
            </div>
            <div class="item-name" style="margin: 50px 30px 0">
              <p>옵션 목록</p>
            </div>

            <!-- 콘텐츠 옵션 : 인원권/회차권 시작 -->
            <div id="detail_cont_option_prod" style="margin: 0 30px" hidden>
              <div>
                <table class="table" style="text-align: center;" >
                  <thead>
                    <tr class="table-secondary">
                      <th>(예시) 1인권, 1회권 등</th>
                      <th>(예시) 판매수량</th>
                      <th>가격</th>
                    </tr>
                  </thead>
                  <!-- 옵션목록 추가 태그 시작 -->
                  <tbody id="detail_option_row_prod">
                  </tbody>
                  <!-- 옵션목록 추가 태그 종료 -->
                </table>
              </div>
            </div>
            <!-- 콘텐츠 옵션 : 인원권/회차권 종료 -->

            <!-- 콘텐츠 옵션 : 원데이 클래스 시작 -->
            <div id="detail_cont_option_one" style="margin: 0 30px" hidden>
              <div>
                <table class="table" style="text-align: center;">
                  <thead>
                    <tr class="table-secondary">
                      <th>(예시) 클래스 실행 일시</th>
                      <th>(예시) 최대 모집인원</th>
                      <th>가격</th>
                    </tr>
                  </thead>
                  <!-- 옵션목록 추가 태그 시작 -->
                  <tbody id="detail_option_row_one">
                  </tbody>
                  <!-- 옵션목록 추가 태그 종료 -->
                </table>
              </div>
            </div>
            <!-- 콘텐츠 옵션 : 원데이 클래스 종료 -->
          </div>
        </div>

        <!-- 해빗 설명 -->
        <div class="content">
          <p class="content-name">해빗 설명</p>
          <div>
            <div class="item-name" style="margin: 50px 30px 0">
              <p>대표 이미지</p>
            </div>
            <div>
              <div class="item" id="detail_preview_img_container" style="display: flex; align-items: center; justify-content: center;">
              </div>
            </div>
          </div><hr>

          <div>
            <div class="item-name" style="margin: 50px 30px 0">
              <p>해빗 상세 설명</p>
            </div>
            <!-- 썸머노트 사용 textarea -->
            <div style="margin: 20px 30px">
              <div id="detail_cont_content"></div>
            </div>
          </div>
        </div>

        <!-- 환불 규정 -->
        <div class="content">
          <p class="content-name">환불 규정</p>
          <div style="display: flex; justify-content: center;">
            <div style="width: 80%;">
            <textarea class="form-control" name="" id="" rows="9" cols="80" style="resize: none; color: rgb(129, 129, 129);" disabled>
[날짜 조율형]
1. 결제 후 7일 이내 취소 시 : 전액 환불
(단, 결제 후 14일 이내라도 호스트와 해빗 진행일 예약 확정 후 환불 불가)
2. 결제 후 14일 이후 취소 시 : 환불 불가
※ 상품의 유효기간 만료 시 연장은 불가합니다.
※ 다회권의 경우, 1회라도 사용시 부분 환불이 불가합니다.

[날짜 지정형]
1. 구매한 클래스 이용권 사용일 전 취소 시 : 전액 환불
2. 구매한 클래스 이용권 사용일 이후 취소 시 : 환불 불가
※ 상품의 유효기간 만료 시 연장은 불가합니다.

[환불 신청 방법]
1. 해당 해빗 결제한 계정으로 로그인
2. 마이해빗 - 신청내역 or 결제내역
            </textarea>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<%--<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=6cd9ccbff69ea4ecff8c4d402d1d27ad&libraries=services"></script>--%>
<%--<script>--%>
<%--  var mapContainer = document.getElementById('map'), // 지도를 표시할 div--%>
<%--          mapOption = {--%>
<%--            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표--%>
<%--            level: 3 // 지도의 확대 레벨--%>
<%--          };--%>

<%--  // 지도를 생성합니다--%>
<%--  var map = new kakao.maps.Map(mapContainer, mapOption);--%>

<%--  // 주소-좌표 변환 객체를 생성합니다--%>
<%--  var geocoder = new kakao.maps.services.Geocoder();--%>

<%--  function relayout() {--%>

<%--    // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다--%>
<%--    // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다--%>
<%--    // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다--%>
<%--    map.relayout();--%>
<%--  }--%>

<%--  // 주소로 좌표를 검색합니다--%>
<%--  geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {--%>

<%--    // 정상적으로 검색이 완료됐으면--%>
<%--    if (status === kakao.maps.services.Status.OK) {--%>

<%--      var coords = new kakao.maps.LatLng(result[0].y, result[0].x);--%>

<%--      // 결과값으로 받은 위치를 마커로 표시합니다--%>
<%--      var marker = new kakao.maps.Marker({--%>
<%--        map: map,--%>
<%--        position: coords--%>
<%--      });--%>

<%--      // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다--%>
<%--      map.setCenter(coords);--%>
<%--    }--%>
<%--  });--%>
<%--</script>--%>