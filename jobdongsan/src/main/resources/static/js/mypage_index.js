// mypage_index.js

$(document).ready(function(){
    // 정보 수정 버튼 눌렀을 때
    $('.btn_mypage_update').click(function(){
    	$('#mypage_index_form').submit();
    });

    // 로그아웃 버튼 눌렀을 때
    $('.btn_logout').click(function(){
        location.href='/logout';
    });

    // 흥미 탐색 하러가기 버튼 눌렀을 때
    $('.btn_interest_add').click(function(){
        location.href='/interest_index';
    });

    // 직업 탐색 하러가기 버튼 눌렀을 때
    $('.btn_job_add').click(function(){
        location.href='/job_index';
    });

    // 데이터 연동 후 추가 필요****************************************
    // 직업 정보 보러가기 버튼 눌렀을 때 (jsp에서 구현)
   

    // 진로 직업 영상 찜하러 가기 버튼 눌렀을 때
    $('.btn_video').click(function(){
        location.href='/video_index';
    });

    // 직업 정보 체험 찜하러 가기 버튼 눌렀을 때
    $('.btn_map').click(function(){
        location.href='/map_index';
    });
    
    // 프로필 사진이 있을때
    if($('.my_profile_img').attr('src') != "/upload/"){
		$('.my_profile_img').show();
		$('.my_jobdongsan_pic').hide();
	}
    
     // 흥미 유형이 있을 때
    if($('#interest_chk').text() != "") {
        $('.my_interest_add').hide();
        $('.my_interest_content').show();
        $('.btn_interest_add').hide();
        $('.btn_interest').show();
    }

    // 찜한 직업이 있을 때
    if($('#job_chk').text() != "") {
        $('.my_job_add').hide();
        $('.my_job_like').show();
        $('.btn_job_add').hide();
        $('.btn_job').show();
    }

    // 찜한 진로 직업 영상 있을 때
    var my_video_list = $('.my_video_list p').length;

    if(my_video_list != 0) {
        $('.my_video_list_text').hide();
        $('.my_video_list').css('display', 'flex');
        if(my_video_list > 3) {
            $('#my_video_right').css('visibility', 'visible');
        }
    } else {
        $('.my_video_list_text').show();
        $('.my_video_list').hide();
        $('#my_video_left').css('visibility', 'hidden');
        $('#my_video_right').css('visibility', 'hidden');
    }
    
    // 진로 영상 리스트 좌 우 클릭 시 슬라이드
    var video_idx = 0;

    $('#my_video_right').click(function(){
        $('.my_video_list div:nth-child(1)').animate({marginLeft:  '-=350px' }, '1000');
        $('#my_video_left').css('visibility', 'visible');
        video_idx++;
        if(video_idx == (my_video_list - 3))
            $('#my_video_right').css('visibility', 'hidden');
    });

    $('#my_video_left').click(function(){
        $('.my_video_list div:nth-child(1)').animate({marginLeft:  '+=350px' }, '1000');
        $('#my_video_right').css('visibility', 'visible');
        video_idx--;
        if(video_idx == 0)
            $('#my_video_left').css('visibility', 'hidden');
    });

    // 찜한 직업 체험 장소 있을 때
    var my_map_list = $('.my_map_list p').length;

    if(my_map_list != 0) {
        $('.my_map_list_text').hide();
        $('.my_map_list').css('display', 'flex');
        if(my_map_list > 3) {
            $('#my_map_right').css('visibility', 'visible');
        }
    } else {
        $('.my_map_list_text').show();
        $('.my_map_list').hide();
        $('#my_map_left').css('visibility', 'hidden');
        $('#my_map_right').css('visibility', 'hidden');
    }
    
    // 직업 체험 장소 리스트 좌 우 클릭 시 슬라이드
    var map_idx = 0;
    var my_map_list = $('.my_map_list p').length;

    $('#my_map_right').click(function(){
        $('.my_map_list').children('.my_map_content').first().animate({marginLeft:  '-=350px' }, '1000');
        $('#my_map_left').css('visibility', 'visible');
        map_idx++;
        if(map_idx == (my_map_list - 3))
            $('#my_map_right').css('visibility', 'hidden');
    });

    $('#my_map_left').click(function(){
        $('.my_map_list').children('.my_map_content').first().animate({marginLeft:  '+=350px' }, '1000');
        $('#my_map_right').css('visibility', 'visible');
        map_idx--;
        if(map_idx == 0)
            $('#my_map_left').css('visibility', 'hidden');
    });
});