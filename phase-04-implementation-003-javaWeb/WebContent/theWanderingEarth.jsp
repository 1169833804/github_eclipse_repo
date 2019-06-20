<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic008.jpg);
	background-color: #000000;    
}
*{				
margin: 0;				
padding: 0;				
font-size: 20px;			
}	

ul{
list-style: none;				
width: 200px;			
}						
a{
text-align:center;
text-decoration: none;
display: block;
height: 30px;
line-height: 30px;;
margin-bottom: 1px;
text-indent: 10px;
color:#0080FF;
}			
a:hover{				
background-color:rgba(245,245,245,0.1);
color: aliceblue;			
}
.btn1{
position:absolute;
right:50px;
bottom:50px;
}	
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.1',
			left : '180px',
			bottom : '100px'
		}, 12000);
		$('div').animate({fontSize:"+=30px"},15000);
		$('span').animate({fontSize:"+=30px"},15000);
		$("#intr").fadeOut('slow');
	}
	function onpoemEnd(){
		$('#poem-txt').fadeOut('slow');	
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		$("#menu").fadeIn('slow')
		$("#moviebox").fadeOut('slow');
		$("#moviebox2").fadeOut('slow');	
		$("#moviebox3").fadeOut('slow');	
		$("#universe")[0].play();
	}
	function proword(){
		$("#menu").fadeOut('slow');
		$("#plan").fadeIn('slow');
		$("#btn1").fadeIn('slow');
	}
	function back(){
		$("#menu").fadeIn('slow');
		$("#btn1").fadeOut('slow');
		$("#plan").fadeOut('slow');
	}
	function jianji(){
		$("#universe")[0].pause();
		$("#menu").fadeOut('slow');
		$("#moviebox2").show('slow');
		$("#jianji")[0].play();
	}
	function huaxu(){
		$("#universe")[0].pause();
		$("#menu").fadeOut('slow');
		$("#moviebox3").show('slow');
		$("#huaxu")[0].play();
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	
	<audio id="intr" controls="controls"
		src="/static/audio/introduction.mp3" autoplay="autoplay">
		</audio>
		
	<audio id="poem" src="/static/audio/wanderingEarch-poem.mp3" onended="onpoemEnd();"
		preload="auto">
		</audio>
		
	<span id="firstline" style="font-size: 26px; color: white">大家好，我准备设计和实现一个“<span
		style="font-size: 38px; color: red">流浪地球</span>”的漂亮网页！<br /> 欢迎大家观赏,谢谢！
		</span>
	
	<audio id="universe" src="/static/audio/Jannik - Universe.mp3" preload="auto">
		</audio>
	
	<div id="poem-txt"
		style=" display: none; font-size: 5px; color: orange;margin-top:250px " align="center">
		《诗词版"流浪地球"》<br /> <span style="font-size:1px; color: grey">
			-郭鹏 </span><br /> <br /> 西风吹皱东方河，万年地球白发多。 <br /> 流浪星际家何去，满船清梦出银河。
		</div>
	
	<img src="/static/imgs/earth.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 200px"
		onclick="run(this);return false" >
		
		
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="500px" controls="controls"
			src="static/video/movie.mp4" onended="onVideoEnd();" >
		</div>

	<div id='menu'
		class='menu'
		style="margin-top:250px;display:none"
		align='center'>
	<ul>			
		<li><a href="javascript:void(0);"style='text-align: center' onclick="proword();">《流浪地球》计划</a></li>			
		<li><a href="javascript:void(0);"style='text-align: center' onclick="jianji();">精彩剪辑</a></li>			
		<li><a href="javascript:void(0);"style='text-align: center' onclick="huaxu();">花絮</a></li>				
		</ul>
		</div>
	
	<div id="plan"
		style=" display: none;margin-top:50px " align="center">
		<span style="font-size:3px;color:#ADADAD;text-align:center">
		近年来，科学家们发现太阳急速衰老膨胀，短时间内包括地球在内的整个太阳系都将被太阳所吞没。<br /> 
		为了自救，人类提出一个名为“流浪地球”的大胆计划，即倾全球之力在地球表面建造上万座发动机和转向发动机，<br /> 
		推动地球离开太阳系，用2500年的时间奔往新家园——4.2光年外的比邻星。<br /> 
		本计划将持续一百代人。<br /> 
		尽管，我们不知道4.2光年外的新太阳，会带来什么样的新家园，但从今天开始，人类的勇气与坚毅，将永刻于星空之下，<br /> 
		这一绝望与希望并存，持续两千五百年的漫长宇宙之旅，<br /> 
		史称“流浪地球”计划。<br />
			 </span>
		</div>
	
	<button id="btn1" class="btn1" style="display:none" onclick="back();" >返回</button>	
	
	<div id="moviebox2" style="margin-top: 100px; display: none"
		align="center">
		<video id="jianji" height="500px" controls="controls"
			src="/static/video/jianji.mp4" onended="onVideoEnd();" >
		</div>
	<div id="moviebox3" style="margin-top: 100px; display: none"
		align="center">
		<video id="huaxu" height="500px" controls="controls"
			src="/static/video/huaxu.mp4" onended="onVideoEnd();" >
		</div>
</body>
</html>