<template>
  <div class="app_search">
    <header class="mui-bar mui-bar-nav">
			<h1 class="mui-title">课程检索</h1>
		</header>
   <mt-search></mt-search>
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
.mint-search {
  height: 100%;
  height: 100vh;
  overflow: hidden;
  margin-top: 46px;
}
input[type="search"] {
  font-size: 16px;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  height: 25px;
  text-align: center;
  border: 0;
  border-radius: 6px;
  background-color: #fff;
  margin-top: 15px;
}
</style>
