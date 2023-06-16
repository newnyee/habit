
// 해빗 명 체크
const contNameCheck = () => {
    let cont_name = document.getElementById('cont_name')
    let cont_name_small = document.getElementById('cont_name_small')
    if(cont_name.value.length < 1) {
        cont_name_small.removeAttribute('hidden')
        cont_name.focus()
        return
    } else {
        cont_name_small.setAttribute('hidden', true)
    }
}

// 판매 종료일 이벤트
const contEndateOptionCheck1 = (e) => {
    let endate_option2 = document.getElementById('endate_option2')
    endate_option2.setAttribute('disabled', true)
}
const contEndateOptionCheck2 = (e) => {
    let endate_option2 = document.getElementById('endate_option2')
    endate_option2.removeAttribute('disabled')
}


document.addEventListener("DOMContentLoaded", () => {

    // 판매종료일 : 지정한 날짜까지 판매일 최대 날짜 현재일로 부터 한달 지정
    let now = new Date()
    let maxDate = new Date(now.setMonth(now.getMonth() + 1)).toISOString().split("T")[0]
    document.getElementById('endate_option2').setAttribute('max', maxDate)


    // 판매 유형 이벤트
    $('#one').on('click', ()=>{
        if (confirm('기존에 입력하신 옵션들이 초기화 됩니다. 유형을 변경하시겠습니까?')) {
            // 원데이클래스 옵션창 보여주기
            document.getElementById('cont_option_one').removeAttribute('hidden')
            // 인원권/회차권 옵션창 숨기기
            document.getElementById('cont_option_prod').setAttribute('hidden', true)
            // 인원권/회차권 옵션창 reset
            let prod_name = $('input[name="prod_name"]')
            prod_name[0].value = null
            let prod_qty = $('input[name="prod_qty"]')
            prod_qty[0].value = null
            let prod_price = $('input[name="prod_price"]')
            prod_price[0].value = null
            let option_row_prod = document.getElementById('option_row_prod')
            option_row_prod.replaceChildren()
        } else {
            return false
        }
    })

    $('#prod').on('click', ()=>{
        if (confirm('기존에 입력하신 옵션들이 초기화 됩니다. 유형을 변경하시겠습니까?')) {
            // 인원권/회차권 옵션창 보여주기
            document.getElementById('cont_option_one').setAttribute('hidden', true)
            // 원데이클래스 옵션창 숨기기
            document.getElementById('cont_option_prod').removeAttribute('hidden')
            // 원데이클래스 옵션창 reset
            let one_date = $('input[name="one_date"]')
            one_date[0].value = null
            let one_maxqty = $('input[name="one_maxqty"]')
            one_maxqty[0].value = null
            let one_price = $('input[name="one_price"]')
            one_price[0].value = null
            let option_row_one = document.getElementById('option_row_one')
            option_row_one.replaceChildren()
        } else {
            return false
        }
    })


    // 옵션 목록 이벤트 : 인원권/회차권
    let row_prod = "<tr>\n" +
        "                      <td><input class=\"form-check-input\" type=\"checkbox\" name=\"cont_option_prod\" id=\"\"></td>\n" +
        "                      <td>\n" +
        "                        <div>\n" +
        "                          <input type=\"text\" name='prod_name' class=\"form-control\">\n" +
        "                        </div>\n" +
        "                      </td>\n" +
        "                      <td>\n" +
        "                        <div>\n" +
        "                          <input type=\"number\" name='prod_qty' min='0' class=\"form-control\">\n" +
        "                        </div>\n" +
        "                      </td>\n" +
        "                      <td>\n" +
        "                        <div class=\"input-group mb-2\">\n" +
        "                          <span class=\"input-group-text\">판매가</span>\n" +
        "                          <input type=\"number\" class=\"form-control\" name='prod_price' min='0' aria-label=\"Amount (to the nearest dollar)\">\n" +
        "                          <span class=\"input-group-text\">원</span>\n" +
        "                        </div>\n" +
        "                      </td>\n" +
        "                    </tr>"
    $('#add_option_prod').on('click', ()=>{
        $('#option_row_prod').append(row_prod)
    })

    $('#option_remove_prod').on('click', () => {
        let checked = $('input:checkbox[name="cont_option_prod"]:checked')

        if(checked.length === 0) {
            alert("삭제할 항목을 선택해 주세요")
            return
        }
        let checkedSize = checked.length
        if(confirm('선택된 ' + checkedSize + '개의 옵션을 삭제하시겠습니까?')) {
            checked.each((i, value)=>{
                let checkRow = value.parentElement.parentElement
                $(checkRow).remove()
            })
        }
    })

    // 옵션 목록 이벤트 : 원데이 클래스
    let row_one = "<tr>\n" +
        "                      <td><input class=\"form-check-input\" type=\"checkbox\" name=\"cont_option_one\" id=\"\"></td>\n" +
        "                      <td>\n" +
        "                        <div>\n" +
        "                          <input class=\"form-control\" name=\"one_date\" type=\"datetime-local\">\n" +
        "                        </div>\n" +
        "                      </td>\n" +
        "                      <td>\n" +
        "                        <div>\n" +
        "                          <input type=\"number\" name='one_maxqty' min='0' class=\"form-control\">\n" +
        "                        </div>\n" +
        "                      </td>\n" +
        "                      <td>\n" +
        "                        <div class=\"input-group mb-2\">\n" +
        "                          <span class=\"input-group-text\">판매가</span>\n" +
        "                          <input type=\"number\" class=\"form-control\" name='one_price' min='0' aria-label=\"Amount (to the nearest dollar)\">\n" +
        "                          <span class=\"input-group-text\">원</span>\n" +
        "                        </div>\n" +
        "                      </td>\n" +
        "                    </tr>"
    $('#add_option_one').on('click', ()=>{
        $('#option_row_one').append(row_one)
    })

    $('#option_remove_one').on('click', () => {
        let checked = $('input:checkbox[name="cont_option_one"]:checked')

        if(checked.length === 0) {
            alert("삭제할 항목을 선택해 주세요")
            return
        }
        let checkedSize = checked.length
        if(confirm('선택된 ' + checkedSize + '개의 옵션을 삭제하시겠습니까?')) {
            checked.each((i, value)=>{
                let checkRow = value.parentElement.parentElement
                $(checkRow).remove()
            })
        }
    })
})


// 대표 이미지 체크 (onChange)
function contImgCheck(imgs) {
    let cont_img_small = document.getElementById('cont_img_small')
    if(imgs.files.length>3) { // 파일을 4개 이상 첨부한 경우
        for (let i = 0; i < 3; i++) {
            $('#preview_cont_img' + i).attr('src', '/img/no-image01.gif')
        }
        cont_img_small.removeAttribute('hidden')
        imgs.outerHTML = imgs.outerHTML; // 선택된 input:type=file 초기화
        return
    } else {
        cont_img_small.setAttribute('hidden', true)
        for(let i=0; i<imgs.files.length; i++) {
            if(imgs.files && imgs.files[i]) {
                const reader = new FileReader()
                reader.onload = function (e) {
                    document.getElementById('preview_cont_img' + (i+1)).src = e.target.result
                }
                reader.readAsDataURL(imgs.files[i])
            } else {
                document.getElementById('preview_cont_img' + (i+1)).src = ""
            }
        }
    }
}


/* 썸머 노트 config */
$(document).ready(()=>{
    $('#summernote').summernote({
        height: 300, // 에디터 높이
        minHeight: null, // 최소 높이
        maxHeight: null, // 최대 높이
        focus: false, // 에디터 로딩후 포커스를 맞출지 여부
        lang: "ko-KR", // 한글 설정
        placeholder: '호스트님의 상품을 소개해주세요 :)',	//placeholder 설정
        toolbar:[
            ['fontname', ['fontname']],
            ['fontsize', ['fontsize']],
            ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
            ['color', ['forecolor','color']],
            ['table', ['table']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['height', ['height']],
            ['insert',['picture','link']],
            ['view', ['codeview', 'help']]
        ],
        fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
        fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
        callbacks: {
            onImageUpload: function (files) { //이미지 업로드 처리
                RealTimeImageUpdate(files, this);
            },
            onChange: function(contents, $editable){ //텍스트 글자수 및 이미지등록개수
                setContentsLength(contents, 0);
            }
        }
    })
    //글자수 체크
    //태그와 줄바꿈, 공백을 제거하고 텍스트 글자수만 가져옵니다.
    function setContentsLength(str, index) {
        var status = false;
        var textCnt = 0; //총 글자수
        var maxCnt = 2048; //최대 글자수
        var editorText = f_SkipTags_html(str); //에디터에서 태그를 삭제하고 내용만 가져오기
        editorText = editorText.replace(/\s/gi,""); //줄바꿈 제거
        editorText = editorText.replace(/&nbsp;/gi, ""); //공백제거

        textCnt = editorText.length;
        if(maxCnt > 0) {
            if(textCnt > maxCnt) {
                status = true;
            }
        }

        if(status) {
            var msg = "글자수는 최대 "+maxCnt+"까지 등록이 가능합니다. / 현재 글자수 : "+textCnt+"자";
            alert(msg)
        }
    }

    function RealTimeImageUpdate(files, editor) {
        var reg = /(.*?)\.(gif|jpg|png|jepg)$/; //허용할 확장자
        var formData = new FormData();
        var fileArr = Array.prototype.slice.call(files);
        var filename = "";
        var fileCnt = 0;
        fileArr.forEach(function(f){
            filename = f.name;
            if(filename.match(reg)) {
                formData.append('file[]', f);
                fileCnt++;
            }
        });
        formData.append('tempFolder', $('#tempFolder').val());



    }

    //에디터 내용 텍스트 제거
    function f_SkipTags_html(input, allowed) {
        // 허용할 태그는 다음과 같이 소문자로 넘겨받습니다. (<a><b><c>)
        allowed = (((allowed || "") + "").toLowerCase().match(/<[a-z][a-z0-9]*>/g) || []).join('');
        var tags = /<\/?([a-z][a-z0-9]*)\b[^>]*>/gi,
            commentsAndPhpTags = /<!--[\s\S]*?-->|<\?(?:php)?[\s\S]*?\?>/gi;
        return input.replace(commentsAndPhpTags, '').replace(tags, function ($0, $1) {
            return allowed.indexOf('<' + $1.toLowerCase() + '>') > -1 ? $0 : '';
        });
    }
})


//habit_create 유효성 검사
const habitCreateCheck = () => {

    // 카테고리 : 대분류
    let cate_large = $('#cate_large')
    if(cate_large.val() === '0') {
        alert('카테고리를 선택해주세요.')
        cate_large.focus()
        return false
    }

    // 카테고리 : 중분류
    let cate_middle = $('#cate_middle')
    if(cate_middle.val() === '0') {
        alert('카테고리를 선택해주세요.')
        cate_middle.focus()
        return false
    }

    // 해빗명
    // let cont_name = $('#cont_name')
    let cont_name = document.getElementById('cont_name')
    if(cont_name.value.length<1 || cont_name.value.length>50) {
        alert('해빗명은 필수입니다. 40자 이내로 입력해주세요.')
        cont_name.focus()
        return false
    }

    // 진행장소
    let zipcode = $('#zipcode')
    let address2 = $('#address2')
    if (zipcode.val().length<1) {
        alert('진행장소를 입력해주세요.')
        address2.focus()
        return false
    }

    // 옵션 목록 입력
    let pro = $('input[name="cont_type"]:checked')
    if(pro.attr('id') === 'prod') { // 선택된 옵션이 날짜 조율형 일때
        let prod_names = $('input[name="prod_name"]')
        let count_prod_name = 0
        for (let prod_name of prod_names) {
            if(prod_name.value.length <1 ) {
                count_prod_name++
            }
        }
        if(count_prod_name>0) {
            alert('옵션명을 입력해주세요')
            return false
        }

        // 옵션 수량
        let prod_qtys = $('input[name="prod_qty"]')
        let count_prod_qty = 0
        for (let prod_qty of prod_qtys) {
            if(prod_qty.value.length <1 ) {
                count_prod_qty++
            }
        }
        if(count_prod_qty>0) {
            alert('옵션의 수량을 입력해주세요')
            return false
        }

        // 옵션 가격
        let prod_prices = $('input[name="prod_price"]')
        let count_prod_price = 0
        for (let prod_price of prod_prices) {
            if(prod_price.value.length <1 ) {
                count_prod_price++
            }
        }
        if(count_prod_price>0) {
            alert('옵션의 금액을 입력해주세요')
            return false
        }

    } else if(pro.attr('id') === 'one') { // 선택된 옵션이 날짜 지정형 일때
        let one_dates = $('input[name="one_date"]')
        let count_one_date = 0
        for (let one_date of one_dates) {
            if(one_date.value.length <1 ) {
                count_one_date++
            }
        }
        if(count_one_date>0) {
            alert('옵션명을 입력해주세요')
            return false
        }

        // 옵션 수량
        let one_maxqtys = $('input[name="one_date"]')
        let count_one_maxqty = 0
        for (let one_maxqty of one_maxqtys) {
            if(one_maxqty.value.length <1 ) {
                count_one_maxqty++
            }
        }
        if(count_one_maxqty>0) {
            alert('옵션명을 입력해주세요')
            return false
        }

        // 옵션 가격
        let one_prices = $('input[name="one_price"]')
        let count_one_price = 0
        for (let one_price of one_prices) {
            if(one_price.value.length <1 ) {
                count_one_price++
            }
        }
        if(count_one_price>0) {
            alert('옵션명을 입력해주세요')
            return false
        }
    }

    // 대표 이미지
    let cont_img = document.getElementById('cont_img').files
    if(cont_img.length<1) {
        alert('해빗 대표 이미지를 1개 이상 첨부해주세요.')
        return false
    }

    // 해시태그
    let hashtag2 = $('input:checkbox[name="cont_hashtag2"]:checked')
    let hashtag4 = $('input:checkbox[name="cont_hashtag4"]:checked')

    // let summernote = $('#summernote')
    // if(summernote.value.length<10) {
    //     alert('해빗 상세 설명을 10자 이상 입력해주세요.')
    // }

    if (hashtag2.length === 0 || hashtag4.length === 0) {
        alert("해시태그를 문항당 한개 이상 체크해주세요.")
        return false
    }

    if (confirm('해빗을 등록하시겠습니까?')) {
        return true
    }
}