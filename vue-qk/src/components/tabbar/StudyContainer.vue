<template>
  <div class="app_study">
    <header class="mui-bar mui-bar-nav">
		<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"></a>
		<h1 class="mui-title">我的课堂</h1>
		</header>
		<div class="shop">
			<div class="s_l">
				<img src="../../assets/study/ke01.png" alt="">
			</div>
			<div class="s_r">
				<span>Office高级应用</span><br>
				<span>进行至第4周</span>
				<p>成都信息工程大学</p>
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
.app_study .shop{
	margin-top: 45px;
	padding: 5px 15px;
	background: #fff;
	display: flex;
	justify-content: flex-start;
}
.app_study .s_l img{
	width: 161px;
	height: 89px;
}
.app_study .s_r{
	padding-left: 15px;
}
.app_study .s_r span{
	display: inline-block;
	padding-top: 6px;
	font-size: 16px;
}
.app_study .s_r p{
	margin-top: 7px;
	color: #1eb41f;
}
</style>

