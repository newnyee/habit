window.addEventListener('load',function() {

    // 페이지 로드 후 페이징 초기화
    onPageClick(1);


});//================window.onload 끝


$(document).ready(function () {

    let selectedCategory = localStorage.getItem("newCategory") || localStorage.getItem("selectedCategory");
    let selectedMiddle = localStorage.getItem("selectedMiddle");


        if (selectedMiddle && selectedCategory) {
            localStorage.removeItem("newCategory");
            localStorage.setItem("selectedCategory", selectedCategory);


            // 필터단 유동 적용
            // const productSectionTitle_all = ` ${selectedMiddle} 해빗`;
            // $(".ProductSectionHeader_Title_mid_a").text(productSectionTitle);

            const productSectionTitle1 = `금주 ${selectedMiddle}`;
            $(".ProductSectionHeader_Title_mid_b").text(productSectionTitle1);

            const productSectionTitle2 = `신규 ${selectedMiddle}`;
            $(".ProductSectionHeader_Title_mid_c").text(productSectionTitle2);

            const ButtonLinkAllProduct = `${midHotListCount}개의 ${selectedMiddle} 전체보기 `;
            $('.ButtonLinkAllProduct_mid').text(ButtonLinkAllProduct);

            const productSectionTitle = ` ${selectedMiddle} 해빗`;
            $(".ProductSectionHeader_Title_all").text(productSectionTitle);

        }

    // 중분류 버튼 클릭 이벤트
    $(".midbtn").on("click", function (event) {
        event.preventDefault();

        const selectedMiddle = $(this).text();
        localStorage.setItem("selectedMiddle", selectedMiddle);

        // 전체 클릭 시 기본 url 반환
        if (selectedMiddle === "전체") {
            window.location.href = `/category/${selectedCategory}`;
        } else {
            // 원하는 페이지로 이동
            window.location.href = `/category/${selectedCategory}/${selectedMiddle}`;
        }
    });

    function closeModal() {
        $('.modal_root').css('display', 'none');
        $('body').css('overflow', 'auto');
    }

    $('.CategoryNav_Wrapper').on('click', function () {
        $('.modal_root').css('display', 'block');
        $('body').css('overflow', 'hidden');
    });

    $('button[name="CloseBtn"]').on('click', closeModal);

    $(".CategoryItem-A").on("click", function (event) {
        event.preventDefault();
        const selectedCategory = $(event.currentTarget).data("category");
        localStorage.setItem("newCategory", selectedCategory);
        const newUrl = `/category/${selectedCategory}`;
        location.href = newUrl;
    });

});

// 페이징 함수
function paginate(page) {
    var itemsPerPage = 8; // 페이지당 아이템 수
    var items = document.getElementsByClassName('Home_product_recommend_p');
    var numPages = Math.ceil(items.length / itemsPerPage); // 전체 페이지 수

    // 보여줄 아이템 계산
    var start = (page - 1) * itemsPerPage;
    var end = start + itemsPerPage;

    // 아이템 숨기기
    for (var i = 0; i < items.length; i++) {
        items[i].style.display = 'none';
    }

    // 현재 페이지 아이템 보여주기
    for (var j = start; j < end; j++) {
        if (items[j]) {
            items[j].style.display = 'block';
        }
    }
}

var currentPage = 1;
// 페이지 버튼 클릭 이벤트 처리
function onPageClick(page) {

// 이전 버튼을 클릭한 경우 currentPage에서 1을 빼줍니다.
    if (page === -1) {
        currentPage = currentPage > 1 ? currentPage - 1 : 1;
    }
// 다음 버튼을 클릭한 경우 currentPage 1을 더해줍니다.
    else if (page === -2) {
        var numPages = Math.ceil(document.getElementsByClassName('Home_product_recommend_p').length / 8);
        currentPage = currentPage < numPages ? currentPage + 1 : numPages;
    }
    else {
        currentPage = page;
    }

    paginate(currentPage);

}

