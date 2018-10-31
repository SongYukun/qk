<template>
  <div class="app_study">
    <header class="mui-bar mui-bar-nav">
		<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
		<h1 class="mui-title">我的课堂</h1>
	</header>
	<div class="mui-content">
		<div class="mui-slider">
			<div class="mui-slider-item">
				<ul class="mui-table-view mui-grid-view">
					<li class="mui-table-view-cell mui-media mui-col-xs-6"><a href="#"><img class="mui-media-object" src="../../assets/study/ke01.png">
					<div class="mui-media-body">Office高级应用</div></a></li>
					<li class="mui-table-view-cell mui-media mui-col-xs-6"><a href="#"><img class="mui-media-object" src="../../assets/study/ke02.png">
					<div class="mui-media-body">Python语言程序设计</div></a></li>
				</ul>
			</div>
			<div class="mui-slider-item">
				<ul class="mui-table-view mui-grid-view">
					<li class="mui-table-view-cell mui-media mui-col-xs-6"><a href="#"><img class="mui-media-object" src="../../assets/study/ke03.png">
					<div class="mui-media-body">金融学</div></a></li>
					<li class="mui-table-view-cell mui-media mui-col-xs-6"><a href="#"><img class="mui-media-object" src="../../assets/study/ke04.png">
					<div class="mui-media-body">大学日语</div></a></li>
				</ul>
			</div>
			<div class="mui-slider-item">
				<ul class="mui-table-view mui-grid-view">
					<li class="mui-table-view-cell mui-media mui-col-xs-6"><a href="#"><img class="mui-media-object" src="../../assets/study/ke05.png">
					<div class="mui-media-body">高等数学(一)</div></a></li>
					<li class="mui-table-view-cell mui-media mui-col-xs-6"><a href="#"><img class="mui-media-object" src="../../assets/study/ke06.png">
					<div class="mui-media-body">程序设计入门————C语言</div></a></li>
				</ul>
			</div>
			<div class="mui-slider-item">
				<ul class="mui-table-view mui-grid-view">
					<li class="mui-table-view-cell mui-media mui-col-xs-6"><a href="#"><img class="mui-media-object" src="../../assets/study/ke07.png">
					<div class="mui-media-body">统计热力学</div></a></li>
					<li class="mui-table-view-cell mui-media mui-col-xs-6"><a href="#"><img class="mui-media-object" src="../../assets/study/ke08.png">
					<div class="mui-media-body">探索心理学</div></a></li>
				</ul>
			</div>
			<div class="mui-slider-item">
				<ul class="mui-table-view mui-grid-view">
					<li class="mui-table-view-cell mui-media mui-col-xs-6"><a href="#"><img class="mui-media-object" src="../../assets/study/ke09.png">
					<div class="mui-media-body">土木工程制图I</div></a></li>
					<li class="mui-table-view-cell mui-media mui-col-xs-6"><a href="#"><img class="mui-media-object" src="../../assets/study/ke10.png">
					<div class="mui-media-body">画法几何</div></a></li>
				</ul>
			</div>
		</div>
	</div>
  </div>
</template>
<script>
  export default{
    data(){
      return {}
    },
    methods:{},
    created(){}
  }
</script>
<style>
.mui-bar-nav ~ .mui-content{
	padding-top: 0 !important;
}
.app-container{
	overflow-x: visible !important;
}
.app-container .app_study .mui-content .mui-slider{
	height: 768px;
}
.app-container .app_study .mui-content .mui-slider {
    height: 768px;
    margin-top: 44px;
}
</style>

