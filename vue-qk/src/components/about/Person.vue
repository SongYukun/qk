<template>   
  <div class="app_person">
    <header class="mui-bar mui-bar-nav">
			<header id="head" class="mui-bar mui-bar-transparent">
				<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/account">
				</router-link>
				<h1 class="mui-title">个人中心</h1>
			</header>
		</header>
    <ul class="mui-table-view">
      <li class="mui-table-view-cell mui-media" style="margin-top:44px">
          <a href="javascript:;">
              <img class="mui-media-object mui-pull-left" src="../../assets/head.png">
              <div class="mui-media-body">
                  <span>dingidng</span>
                  <p>欢迎您登录网上课堂</p>
              </div>
          </a>
      </li>
    </ul>
    <ul class="mui-table-view">
      <li class="mui-table-view-cell">
          <a class="mui-navigate-right">我的订单</a>
      </li>
      <li class="mui-table-view-cell">
          <a class="mui-navigate-right">我的优惠券</a>
      </li>
      <li class="mui-table-view-cell">
          <a class="mui-navigate-right">我的购物车</a>
      </li>
      <li class="mui-table-view-cell">
          <a class="mui-navigate-right">我的学习卡</a>
      </li>
      <div style="height:10px;background-color:#ddd;margin-top:-1px"></div>
      <li class="mui-table-view-cell">
          <a class="mui-navigate-right">分享赚学费</a>
      </li>
    </ul> 
  </div>
</template>
<script>
  export default{
    data(){
      return {
        islogin:false,
        uname:""
      }
    },
    mounted() {
      var self=this;
      this.$http.post("http://localhost:3000/users/islogin").then(res=>{
        if(res.data.ok==1){
          self.islogin=true;
          self.uname=res.data.uname;
        }
        else
          self.islogin=false;
      })
    },
    methods:{
      
    },
    created(){
        
    }
  }
</script>
<style>
/* .mui-table-view {
  margin-top: 44px;
} */
.mui-table-view-cell {
  padding: 15px 15px;
}
</style>