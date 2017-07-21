// 메인 슬라이드
$(document).ready(function(){
    var sn = 0;
    var slideTimer = setInterval(fadeAni, 4500);
	$(".main_arrow").hover(
		function(){
			clearInterval(slideTimer);
		},
		function(){
			slideTimer = setInterval(fadeAni, 4500);
		}
	);

	function fadeAni(){
    	$(".main_slide").eq(sn).removeClass("main_slide_on");
    	sn++;
        if( sn == $(".main_slide").length ) {
            sn = 0;
        }
        $(".main_slide").eq(sn).addClass("main_slide_on");
        var about = "url('/img/main/slide0"+(sn+1)+"_about.png')";
        var career = "url('/img/main/slide0"+(sn+1)+"_career.png')";
        var gallery = "url('/img/main/slide0"+(sn+1)+"_gallery.png')";
        var sns = "url('/img/main/slide0"+(sn+1)+"_sns.png')";
        var contact = "url('/img/main/slide0"+(sn+1)+"_contact.png')";
        $(".about").stop().fadeOut(500);
        $(".career").stop().fadeOut(500);
        $(".gallery").stop().fadeOut(500);
        $(".sns").stop().fadeOut(500);
        $(".contact").stop().fadeOut(500);
        setTimeout(function(){
        	$(".about").css("background-image", about).fadeIn(500);
        	$(".career").css("background-image", career).fadeIn(500);
        	$(".gallery").css("background-image", gallery).fadeIn(500);
        	$(".sns").css("background-image", sns).fadeIn(500);
        	$(".contact").css("background-image", contact).fadeIn(500);
        }, 500);
    }
	
	function fadeAni2(){
    	$(".main_slide").eq(sn).removeClass("main_slide_on");
    	sn--;
        if( sn == -1 ) {
            sn = $(".main_slide").length-1;
        }
        $(".main_slide").eq(sn).addClass("main_slide_on");
        var about = "url('/img/main/slide0"+(sn+1)+"_about.png')";
        var career = "url('/img/main/slide0"+(sn+1)+"_career.png')";
        var gallery = "url('/img/main/slide0"+(sn+1)+"_gallery.png')";
        var sns = "url('/img/main/slide0"+(sn+1)+"_sns.png')";
        var contact = "url('/img/main/slide0"+(sn+1)+"_contact.png')";
        $(".about").stop().fadeOut(500);
        $(".career").stop().fadeOut(500);
        $(".gallery").stop().fadeOut(500);
        $(".sns").stop().fadeOut(500);
        $(".contact").stop().fadeOut(500);
        setTimeout(function(){
        	$(".about").css("background-image", about).fadeIn(500);
        	$(".career").css("background-image", career).fadeIn(500);
        	$(".gallery").css("background-image", gallery).fadeIn(500);
        	$(".sns").css("background-image", sns).fadeIn(500);
        	$(".contact").css("background-image", contact).fadeIn(500);
        }, 500);
    }

	$(".main_arrow_next").click(function(){
		fadeAni();
    });
    $(".main_arrow_prev").click(function(){
    	fadeAni2();
    });
});

// gallery view 닫기
$(document).ready(function(){
    $(".gp_close").click(function(){
        $(".gallery_popup").fadeToggle();
        $("body").css("overflow", "auto");
    });
});

// gallery more
var gallery_num = 1;
function gallery_more(){
	gallery_num++;
	$.ajax({
		type : "post",
		url : "/gallery/more/"+gallery_num,
		async : false,
		success : function(txt){
			console.log(txt.length);
			var $txt = $(txt);
			msny.append($txt).masonry("appended", $txt);
			if(gallery_num*4 >= galleryPicNum){
				$(".gallery_page .page_inner .more_arrow_wrap").hide();
			}
		}
	});
}

// gallery view
function gallery_view(pic){
	var img = "<img src='/file/gallery/"+pic+"'/>";
	$(".gp_img").html(img);
	$(".gallery_popup").show();
	$("body").css("overflow", "hidden");
}

// gallery masonry
var msny;
$(document).ready(function(){
	msny = $(".gallery_page .page_inner .contents").masonry({
		itemSelector : ".gallery_page .page_inner .contents .item",
		columWidth : 390,
		gutter: 15
	});
});

// contact send
function contact_send(){
	var tel = $("#contact_tel").val();
	var name = $("#contact_name").val();
	var mail = $("#contact_mail").val();
	var phone = $("#contact_phone").val();
	if(tel == "" || name == "" || mail == "" || phone == ""){
		alert("입력하지 않은 항목이 있습니다.");
		return;
	}
	alert("send");
}

// career 슬라이드
$(document).ready(function(){
	var slide_length1 = $("#cslide1 .cslide").length;
	var slide_length2 = $("#cslide2 .cslide").length;
	var slide_length3 = $("#cslide3 .cslide").length;
	var slide_length4 = $("#cslide4 .cslide").length;
	
	$("#cslide1").width( 325*(slide_length1+2) );
	$("#cslide2").width( 325*(slide_length2+2) );
	$("#cslide3").width( 325*(slide_length3+2) );
	$("#cslide4").width( 325*(slide_length4+2) );
	
	$first1 = $("#cslide1 .cslide").first().clone();
    $last1 = $("#cslide1 .cslide").last().clone();
    $first2 = $("#cslide2 .cslide").first().clone();
    $last2 = $("#cslide2 .cslide").last().clone();
    $first3 = $("#cslide3 .cslide").first().clone();
    $last3 = $("#cslide3 .cslide").last().clone();
    $first4 = $("#cslide4 .cslide").first().clone();
    $last4 = $("#cslide4 .cslide").last().clone();

    $("#cslide1").append($first1);
    $("#cslide1").prepend($last1);
    $("#cslide2").append($first2);
    $("#cslide2").prepend($last2);
    $("#cslide3").append($first3);
    $("#cslide3").prepend($last3);
    $("#cslide4").append($first4);
    $("#cslide4").prepend($last4);
    
    $("#cslide1").css("left", -325);
    $("#cslide2").css("left", -325);
    $("#cslide3").css("left", -325);
    $("#cslide4").css("left", -325);
	
	var careerTimer1 = setInterval(career_slide_next1, 2500);
	var careerTimer2 = setInterval(career_slide_next2, 2500);
	var careerTimer3 = setInterval(career_slide_next3, 2500);
	var careerTimer4 = setInterval(career_slide_next4, 2500);
	
	$("#cslide_next1").hover(
		function(){
			clearInterval(careerTimer1);
		},
		function(){
			careerTimer1 = setInterval(career_slide_next1, 2500);
		}
	);
	$("#cslide_next2").hover(
			function(){
				clearInterval(careerTimer2);
			},
			function(){
				careerTimer2 = setInterval(career_slide_next2, 2500);
			}
	);
	$("#cslide_next3").hover(
			function(){
				clearInterval(careerTimer3);
			},
			function(){
				careerTimer3 = setInterval(career_slide_next3, 2500);
			}
	);
	$("#cslide_next4").hover(
			function(){
				clearInterval(careerTimer4);
			},
			function(){
				careerTimer4 = setInterval(career_slide_next4, 2500);
			}
	);
	
	$("#cslide_prev1").hover(
		function(){
			clearInterval(careerTimer1);
		},
		function(){
			careerTimer1 = setInterval(career_slide_next1, 2500);
		}
	);
	$("#cslide_prev2").hover(
			function(){
				clearInterval(careerTimer2);
			},
			function(){
				careerTimer2 = setInterval(career_slide_next2, 2500);
			}
	);
	$("#cslide_prev3").hover(
			function(){
				clearInterval(careerTimer3);
			},
			function(){
				careerTimer3 = setInterval(career_slide_next3, 2500);
			}
	);
	$("#cslide_prev4").hover(
			function(){
				clearInterval(careerTimer4);
			},
			function(){
				careerTimer4 = setInterval(career_slide_next4, 2500);
			}
	);
	
	$("#cslide1").hover(
		function(){
			clearInterval(careerTimer1);
		},
		function(){
			careerTimer1 = setInterval(career_slide_next1, 2500);
		}
	);
	$("#cslide2").hover(
			function(){
				clearInterval(careerTimer2);
			},
			function(){
				careerTimer2 = setInterval(career_slide_next2, 2500);
			}
	);
	$("#cslide3").hover(
			function(){
				clearInterval(careerTimer3);
			},
			function(){
				careerTimer3 = setInterval(career_slide_next3, 2500);
			}
	);
	$("#cslide4").hover(
			function(){
				clearInterval(careerTimer4);
			},
			function(){
				careerTimer4 = setInterval(career_slide_next4, 2500);
			}
	);
	
	$("#cslide_next1").click(function(){
		career_slide_next1();
	});
	$("#cslide_prev1").click(function(){
		career_slide_prev1();
	});
	$("#cslide_next2").click(function(){
		career_slide_next2();
	});
	$("#cslide_prev2").click(function(){
		career_slide_prev2();
	});
	$("#cslide_next3").click(function(){
		career_slide_next3();
	});
	$("#cslide_prev3").click(function(){
		career_slide_prev3();
	});
	$("#cslide_next4").click(function(){
		career_slide_next4();
	});
	$("#cslide_prev4").click(function(){
		career_slide_prev4();
	});
	
	var slide_num1 = 1;
	var slide_num2 = 1;
	var slide_num3 = 1;
	var slide_num4 = 1;
	function career_slide_next1(){
		slide_num1++;
		$("#cslide1").stop().animate({
            left: -325 * slide_num1
        }, function(){
            if ( slide_num1 == slide_length1 + 1 ) {
                slide_num1 = 1;
                $("#cslide1").css("left", -325 * slide_num1 );
            }
        });
	}
	function career_slide_prev1(){
		slide_num1--;
		$("#cslide1").stop().animate({
            left: -325 * slide_num1
        }, function(){
            if ( slide_num1 == 0 ) {
                slide_num1 = slide_length1;
                $("#cslide1").css("left", -325 * slide_num1 );
            }
        });
	}
	function career_slide_next2(){
		slide_num2++;
		$("#cslide2").stop().animate({
			left: -325 * slide_num2
		}, function(){
			if ( slide_num2 == slide_length2 + 1 ) {
				slide_num2 = 1;
				$("#cslide2").css("left", -325 * slide_num2 );
			}
		});
	}
	function career_slide_prev2(){
		slide_num2--;
		$("#cslide2").stop().animate({
			left: -325 * slide_num2
		}, function(){
			if ( slide_num2 == 0 ) {
				slide_num2 = slide_length2;
				$("#cslide2").css("left", -325 * slide_num2 );
			}
		});
	}
	function career_slide_next3(){
		slide_num3++;
		$("#cslide3").stop().animate({
			left: -325 * slide_num3
		}, function(){
			if ( slide_num3 == slide_length3 + 1 ) {
				slide_num3 = 1;
				$("#cslide3").css("left", -325 * slide_num3 );
			}
		});
	}
	function career_slide_prev3(){
		slide_num3--;
		$("#cslide3").stop().animate({
			left: -325 * slide_num3
		}, function(){
			if ( slide_num3 == 0 ) {
				slide_num3 = slide_length3;
				$("#cslide3").css("left", -325 * slide_num3 );
			}
		});
	}
	function career_slide_next4(){
		slide_num4++;
		$("#cslide4").stop().animate({
			left: -325 * slide_num4
		}, function(){
			if ( slide_num4 == slide_length4 + 1 ) {
				slide_num4 = 1;
				$("#cslide4").css("left", -325 * slide_num4 );
			}
		});
	}
	function career_slide_prev4(){
		slide_num4--;
		$("#cslide4").stop().animate({
			left: -325 * slide_num4
		}, function(){
			if ( slide_num4 == 0 ) {
				slide_num4 = slide_length4;
				$("#cslide4").css("left", -325 * slide_num4 );
			}
		});
	}
});

// career print btn
function career_print(){
	alert("준비중입니다.\n프린트를 원하실경우 'ctrl+p'를 눌러주세요.");
	return;
//	var html = $(".career_page .inner").html();
//	console.log(html);
//	var style = '<link rel="stylesheet" href="/css/style.css" type="text/css">';
//	var win = window.open();
//	self.focus();
//	win.document.open();
//	win.document.write("<html><head><title></title>"+style+"</head><body><div><div class='career_page'><div class='inner'>");
//	win.document.write(html);
//	win.document.write("</div></div></body></html>");
//	win.document.close();
//	win.print();
//	win.close();
}

// about img view
function about_img(pic, num){
	$("#about_bigImg").attr("src", "/file/about/"+pic);
	$(".thumb").removeClass("thumb_sel");
    $("#about_img"+num).addClass("thumb_sel");
}

// login
function login(){
	var id = $("#login_id").val();
	var pw = $("#login_pw").val();
	if(id == "" || pw == ""){
		alert("아이디 또는 비밀번호를 확인해주세요.");
		return;
	}
	$.ajax({
		type : "post",
		url : "/admin/login/"+id+"/"+pw,
		async : false,
		success : function(txt){
			if(txt){
				location.href="/";
			} else {
				alert("아이디 또는 비밀번호를 확인해주세요.");
			}
		}
	});
}

// login pw에서 엔터
$(document).ready(function(){
	$("#login_pw").keydown(function(e){
		if(e.keyCode == 13){
			login();
		}
	});
});

// about print
function about_print(){
	alert("준비중입니다.\n프린트를 원하실경우 'ctrl+p'를 눌러주세요.");
	return;
//	$("#about_printSection").printThis({
//		loadCSS: "http://localhost/css/style.css"
//	});
//	var html = $("#about_printSection").html();
//	var style = '<link rel="stylesheet" href="/css/style.css" type="text/css">';
//	var win = window.open();
//	win.document.open();
//	win.document.write("<html><head>"+style+"</head><body>");
//	win.document.write("<div class='page_inner'>"+html+"</div>");
//	win.document.write("</body></html>");
//	win.document.close();
}

// upload 이미지 변경
function uploadPic(input){
	var id = input.id.substring(input.id.indexOf('e')+1);
	var name = input.value;
	name = name.substring(name.indexOf('.')+1).toLowerCase();
	if(name != "jpg" && name != "png" && name != "gif" && name != "jpeg"){
		alert(".jpg / .jpeg / .png / .gif 파일만 등록가능합니다.");
	} else {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	$("#upload"+id).css("background-image", "url('"+e.target.result+"')");
	        	$("#upload"+id).css({"background-size" : "cover", "background-position" : "center", "background-repeat" : "no-repeat"});
	        }
	        reader.readAsDataURL(input.files[0]);
	        $("#upload_label"+id).hide();
	        $("#upload_file"+id).hide();
	        $("#ms_minus"+id).show();
	    }
	}
}

// upload 이미지 제거
function uploadMinus(input){
	var id = input.id.substring(input.id.indexOf('us')+2);
	$("#upload"+id).css("background-image", "none");
	$("#upload_label"+id).show();
	$("#upload_file"+id).show();
	$("#ms_minus"+id).hide();
}

// upload 이미지 저장
function upload_save(){
	var imgAr = new Array();
	for(var i=1; i<=7; i++){
		var img = $("#upload"+i).css("background-image");
		img = img.substring(img.indexOf("main/")+5, img.lastIndexOf('\"'));
		if(img != "none" && !img.startsWith("\"data")){
			imgAr[imgAr.length] = img;
		}
	}
	if(imgAr.length==0){
		imgAr[0] = "aa";
	}
	$("#uploadForm").ajaxForm({
		url : "/admin/upload?imgAr="+imgAr,
		enctype : "multipart/form-data",
		success : function(txt){
			if(txt){
				alert("변경되었습니다.");
				location.href='/';
			} else {
				alert("변경에 실패하였습니다.\n잠시후 다시 시도해주세요.");
			}
		}
	});
	$("#uploadForm").submit();
}

// about 이미지 변경
function aboutPic(input){
	var id = input.id.substring(input.id.indexOf('e')+1);
	var name = input.value;
	name = name.substring(name.indexOf('.')+1).toLowerCase();
	if(name != "jpg" && name != "png" && name != "gif" && name != "jpeg"){
		alert(".jpg / .jpeg / .png / .gif 파일만 등록가능합니다.");
	} else {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	$("#aboutDiv"+id).css("background-image", "url('"+e.target.result+"')");
	        	$("#aboutDiv"+id).css({"background-size" : "cover", "background-position" : "center", "background-repeat" : "no-repeat"});
	        }
	        reader.readAsDataURL(input.files[0]);
	        $("#aboutLabel"+id).hide();
	        $("#aboutFile"+id).hide();
	        $("#aboutMinus"+id).show();
	    }
	}
}

// about 이미지 제거
function aboutMinus(input){
	var id = input.id.substring(input.id.indexOf('us')+2);
	$("#aboutDiv"+id).css("background-image", "none");
	$("#aboutLabel"+id).show();
	$("#aboutFile"+id).show();
	$("#aboutMinus"+id).hide();
}

// about 이미지 저장
function about_save(){
	var born = $("#about_born").val();
	var height = $("#about_height").val();
	var weight = $("#about_weight").val();
	var agency = $("#about_agency").val();
	var education = $("#about_education").val();
	if(born == "" || height == "" || weight == "" || agency == "" || education == ""){
		alert("입력하지 않은 항목이 있습니다.");
		return;
	}
	var imgAr = new Array();
	for(var i=1; i<=3; i++){
		var img = $("#aboutDiv"+i).css("background-image");
		img = img.substring(img.indexOf("about/")+6, img.lastIndexOf('\"'));
		if(img != "none" && !img.startsWith("data")){
			imgAr[imgAr.length] = img;
		}
	}
	if(imgAr.length==0){
		imgAr[0] = "aa";
	}
	$("#aboutForm").ajaxForm({
		url : "/admin/aboutUpload?imgAr="+imgAr,
		enctype : "multipart/form-data",
		success : function(txt){
			if(txt){
				alert("변경되었습니다.");
				location.href='/about';
			} else {
				alert("변경에 실패하였습니다.\n잠시후 다시 시도해주세요.");
			}
		}
	});
	$("#aboutForm").submit();
}

// career minus
function career_minus(num){
	$.ajax({
		type : "post",
		url : "/admin/career/delete/"+num,
		async : false,
		success : function(txt){
			if(txt){
				$("#ct_txt"+num).hide();
			} else {
				alert("삭제에 실패하였습니다.\n잠시후 다시 시도해주세요.");
			}
		}
	});
}

// career add
function career_add(){
	var type = $("#career_type").val();
	var syear = $("#career_syear").val();
	var eyear = $("#career_eyear").val();
	var content = $("#career_content").val();
	if(type == "choose" || syear == "" || eyear == "" || content == ""){
		alert("입력하지 않은 항목이 있습니다.");
		return;
	}
	$.ajax({
		type : "post",
		url : "/admin/career/add/"+type+"/"+syear+"/"+eyear+"/"+content,
		async : false,
		success : function(txt){
			if(txt){
				alert("추가되었습니다.");
				location.reload();
			} else {
				alert("추가에 실패하였습니다.\n잠시후 다시 시도해주세요.");
			}
		}
	});
}

// career pic change popup
var career_pic_type;
function career_pic(type){
	career_pic_type = type;
	$("#careerDiv_"+type).css({
		"visibility" : "visible",
		"opacity" : 1
	});
	$("#career_"+type+"_title").html("※ "+career_pic_type+" 슬라이드 수정");
	$("body").css("overflow", "hidden");
}

// career pic Change Div close
function career_picClose(){
	$("#careerDiv_"+career_pic_type).css({
		"visibility" : "hidden",
		"opacity" : 0
	});
	$("body").css("overflow", "auto");
}

// career pic change
function career_pic_change(input){
	var id = input.id.substring(input.id.indexOf('le')+2);
	var name = input.value;
	name = name.substring(name.indexOf('.')+1).toLowerCase();
	if(name != "jpg" && name != "png" && name != "gif" && name != "jpeg"){
		alert(".jpg / .jpeg / .png / .gif 파일만 등록가능합니다.");
	} else {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	$("#career_"+career_pic_type+id).css("background-image", "url('"+e.target.result+"')");
	        	$("#career_"+career_pic_type+id).css({"background-size" : "cover", "background-position" : "center", "background-repeat" : "no-repeat"});
	        }
	        reader.readAsDataURL(input.files[0]);
	        $("#career_"+career_pic_type+"_label"+id).hide();
	        $("#career_"+career_pic_type+"_file"+id).hide();
	        $("#career_"+career_pic_type+"_minus"+id).show();
	    }
	}
}

//career pic change minus
function career_pic_minus(input){
	var id = input.id.substring(input.id.indexOf('us')+2);
	$("#career_"+career_pic_type+id).css("background-image", "none");
	$("#career_"+career_pic_type+"_label"+id).show();
	$("#career_"+career_pic_type+"_file"+id).show();
	$("#career_"+career_pic_type+"_minus"+id).hide();
}

// career pic save
function career_pic_save(){
	var imgAr = new Array();
	for(var i=1; i<=20; i++){
		var img = $("#career_"+career_pic_type+i).css("background-image");
		img = img.substring(img.indexOf("career/")+6, img.lastIndexOf('\"'));
		if(img != "none" && !img.startsWith("data")){
			imgAr[imgAr.length] = img;
		}
	}
	if(imgAr.length==0){
		imgAr[0] = "aa";
	}
	$("#career_"+career_pic_type+"_form").ajaxForm({
		url : "/admin/career/pic/"+career_pic_type+"?imgAr="+imgAr,
		enctype : "multipart/form-data",
		success : function(txt){
			if(txt){
				alert("저장되었습니다.");
				location.reload();
			} else {
				alert("저장에 실패하였습니다.\n잠시후 다시 시도해주세요.");
			}
		}
	});
	$("#career_"+career_pic_type+"_form").submit();
}

var gallery_save_num = 1;
// gallery add btn click
function gallery_add_btn(){
	if(gallery_save_num == 0){
		alert("완료를 먼저 진행해주세요.");
		return;
	}
	$(".minus_img").hide();
	$(".admin_gallery .ag_img_wrap .ag").show();
	gallery_save_num = 0;
}

// gallery delete btn click
function gallery_delete_btn(){
	if(gallery_save_num == 0){
		alert("완료를 먼저 진행해주세요.");
		return;
	}
	$(".minus_img").show();
	$(".admin_gallery .ag_img_wrap .ag_add").hide();
	gallery_save_num = 0;
}

// gallery 이미지 변경
var galleryPicNum = 0;
$(document).ready(function(){
	$.ajax({
		type : "post",
		url : "/admin/galleryNum",
		async : false,
		success : function(num){
			console.log(num);
			if(num != 0){
				galleryPicNum = num;
			}
		}
	});
});
function galleryPic(){
	console.log(galleryPicNum);
	if(galleryPicNum>=1000){
		alert("사진은 최대 1000장까지 등록가능합니다.");
		return;
	}
	galleryPicNum++;
	$("#gallery_file"+galleryPicNum).trigger("click");
}
function galleryPic2(input){
	console.log(galleryPicNum);
	var name = input.value;
	name = name.substring(name.indexOf('.')+1).toLowerCase();
	if(name != "jpg" && name != "png" && name != "gif" && name != "jpeg"){
		alert(".jpg / .jpeg / .png / .gif 파일만 등록가능합니다.");
	} else {
	    var style;
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	var html = "<div class='ag' id='gallery_div"+galleryPicNum+"'>";
	        	html += "<label for='gallery_file"+galleryPicNum+"' id='gallery_label"+galleryPicNum+"' style='display: none; '></label>";
	        	html += "<div class='minus_img' style='display: block; ' id='gallery_minus"+galleryPicNum+"' onclick='galleryMinus(this)'>";
	        	html += "<img src='/img/admin/minus.png'></div></div>";
	        	$("#gallery_wrap").prepend(html);
	        	setTimeout(function(){
	        		$("#gallery_div"+galleryPicNum).css({
	        			"background-image" : "url('"+e.target.result+"')",
	        			"background-size" : 'cover',
	        			"background-position" : "center center"
	        		});
	        	}, 10);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
}

// gallery 이미지 제거
function galleryMinus(input){
	console.log(galleryPicNum);
	var id = input.id.substring(input.id.indexOf('us')+2);
	$("#gallery_div"+id).remove();
	$("#gallery_file"+id).remove();
	for(var i=1; i<=galleryPicNum; i++){
		if(i<=id){
			continue;
		}
		$("#gallery_div"+i).prop("id", "gallery_div"+(i-1));
		$("#gallery_label"+i).prop("id", "gallery_label"+(i-1));
		$("#gallery_minus"+i).prop("id", "gallery_minus"+(i-1));
	}
	galleryPicNum--;
}

// gallery 이미지 저장
function gallery_save(){
	console.log(galleryPicNum);
	var imgAr = new Array();
	for(var i=1; i<=galleryPicNum; i++){
		var img = $("#gallery_div"+i).css("background-image");
		img = img.substring(img.indexOf("gallery/")+8, img.lastIndexOf('\"'));
		if(img != "none" && !img.startsWith("ta:image")){
			imgAr[imgAr.length] = img;
		}
	}
	if(imgAr.length==0){
		imgAr[0] = "aa";
	}
	$("#galleryForm").ajaxForm({
		url : "/admin/galleryUpload?imgAr="+imgAr,
		enctype : "multipart/form-data",
		success : function(num){
			if(num==0){
				gallery_save_num++;
				alert("변경되었습니다.");
			} else if(num==1) {
				alert("변경에 실패하였습니다.\n잠시후 다시 시도해주세요.");
			} else if(num==2){
				alert("변경된 데이터가 없습니다.");
			}
			location.reload();
		}
	});
	$("#galleryForm").submit();
}