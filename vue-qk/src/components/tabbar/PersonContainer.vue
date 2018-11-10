<template>
    <!--登录注册-->
    <div class="app_user">
        <div class="app_search" v-show="islogout" id="appsearch">
            <header class="mui-bar mui-bar-nav">
              <header id="head" class="mui-bar mui-bar-transparent">
                <h1 class="mui-title">登录</h1>
              </header>
            </header>
            <div style="margin-top:50px;">
                <input type="text" name="uname" placeholder="请输入您的账号" v-model="uname"><br>
                <input type="password" name="upwd" placeholder="请输入6~9位密码"  v-model="upwd"><br>
                <mt-button type="primary" size="large" @click="login()">登录</mt-button>
            </div>
            <div class="search_login">
                <a href="#"><p style="font-size:18px;">忘记密码?</p></a>
                <router-link to="/register"><p style="font-size:18px;">去注册</p></router-link>
            </div>
            <div class="search_tip">
                <p>第三方账号直接登录</p>
            </div>
        </div>
        <div v-show="islogin" id="applogin" style="width:100%;">
          <header class="mui-bar mui-bar-nav">
            <header id="head" class="mui-bar mui-bar-transparent">
              <h1 class="mui-title">个人中心</h1>
            </header>
		      </header>
            <ul class="mui-table-view">
                <li class="mui-table-view-cell mui-media" style="margin-top:44px">
                    <a href="javascript:;">
                        <img class="mui-media-object mui-pull-left" src="../../assets/head.png">
                        <div class="mui-media-body">
                            <span v-text="uname"></span>
                            <p>欢迎您登录</p>
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
            <mt-button style="margin-top:25px;" type="primary" size="large" @click="signout()">注销</mt-button>
        </div>
    </div> 
</template>
<script>
    import {Toast} from "mint-ui";
    export default{
        name:"login",
        data(){
          return {
              islogin:false,
              islogout:true,
              info:"",
              uname:"",
              upwd:""
          }
        },
        mounted(){
        
        },
        methods:{
           login(){
               var self=this;
               var uname=this.uname;
               var upwd=this.upwd;
               var obj={uname:uname,upwd:upwd};
               this.$http.post("users/signin",obj).then(res=>{
                   if(res.data.code==1){
                    Toast("登录成功")
                    self.islogin=true;
                    self.islogout=false;
                   }else{
                      Toast("用户名或密码错误")
                   }
               })
           },
           signout(){
               this.$http.get("users/signout").then(res=>{
                   if(res.data.ok==1){
                       Toast("注销成功")
                       this.uname="",
                       this.upwd="",
                       self.islogin=false;
                       self.islogout=true;
                   }
               })
           }
        },
        created(){
            
        } 
    }
</script>
<style scoped>
.app_search .search_title{
  text-align:center;
  margin-top: 15px;
  padding-bottom:20px;
}
.app_search .search_title p{
  color:black;
  font-size:16px;
}
.app_search .search_login{
  display:flex;
  justify-content: space-between;
  padding:25px 10px 0;
}
.app_search .search_tip{
  text-align: center;
  padding-top:20px;
}
.app_search .search_other{
  display:flex;
  justify-content: space-around;
  padding-top:50px;
}
.app_search .search_other img{
  width:32px;
  height:32px;
}

.mui-table-view-cell {
  padding: 15px 15px;
}
</style>