<!--<template>
  <div class="mui-content">
    <header class="mui-bar mui-bar-nav">
			<h1 class="mui-title">登录</h1>
		</header>
		<div class="mui-content" style="padding-top:44px !important;">
			<form id='login-form' class="mui-input-group">
				<div class="mui-input-row">
					<label>账号</label>
					<input id='account' type="text" class="mui-input-clear mui-input" placeholder="请输入账号" name="uname" v-model="uname">
				</div>
				<div class="mui-input-row">
					<label>密码</label>
					<input id='password' type="password" class="mui-input-clear mui-input" placeholder="请输入密码" name="upwd" v-model="upwd">
				</div>
			</form>
			<div class="mui-content-padded">
				<button id='login' type="button" class="mui-btn mui-btn-block mui-btn-primary" @click="login()">登录</button>
				<div class="link-area"><a id='reg' @click="register">注册账号</a> <span class="spliter">|</span> <a id='forgetPassword'>忘记密码</a>
				</div>
			</div>
			<div class="mui-content-padded oauth-area">

			</div>
		</div>
  </div>
</template>
<script>
  import qs from "qs";
  import { Toast } from 'mint-ui';
  export default{
    data(){
      return {
        uname:"",
        upwd:""
      }
    },
    methods:{
      // per(){
      //   var self=this;
      //   this.$http.post("http://localhost:3000/users/signin",qs.stringify({uname:self.uname,upwd:self.upwd})).then(res=>{
      //     console.log(res.data)
      //     if(res.data.ok==1){
      //       Toast('登录成功');
      //       self.$router.push({path:"/home"})
      //     }else{
      //       Toast('用户名或密码错误！');
      //     }
      //   })
      // },
      login(){
        this.$router.push({
          path:"/home"
        })
      },
      register(){
        this.$router.push({
          path:"/register"
        })
      }
    },
    created(){

    }
  }
</script>
<style>
.mui-content .area {
  margin: 20px auto 0px auto;
}

.mui-content .mui-input-group {
  margin-top: 10px;
}

.mui-content .mui-input-group:first-child {
  margin-top: 20px;
}

.mui-content .mui-input-group label {
  width: 22%;
}

.mui-content .mui-input-row label~input,
.mui-content .mui-input-row label~select,
.mui-content .mui-input-row label~textarea {
  width: 78%;
}

.mui-content .mui-checkbox input[type=checkbox],
.mui-content .mui-radio input[type=radio] {
  top: 6px;
}

.mui-content .mui-content-padded {
  margin-top: 25px;
}

.mui-content .mui-btn {
  padding: 10px;
}

.mui-content .link-area {
  display: block;
  margin-top: 25px;
  text-align: center;
}

.mui-content .spliter {
  color: #bbb;
  padding: 0px 8px;
}

.mui-content .oauth-area {
  position: absolute;
  bottom: 20px;
  left: 0px;
  text-align: center;
  width: 100%;
  padding: 0px;
  margin: 0px;
}

.mui-content .oauth-area .oauth-btn {
  display: inline-block;
  width: 50px;
  height: 50px;
  background-size: 30px 30px;
  background-position: center center;
  background-repeat: no-repeat;
  margin: 0px 20px;
  /*-webkit-filter: grayscale(100%); */
  border: solid 1px #ddd;
  border-radius: 25px;
}

.mui-content .oauth-area .oauth-btn:active {
  border: solid 1px #aaa;
}

.mui-content .oauth-area .oauth-btn.disabled {
  background-color: #ddd;
}
</style>-->


<template>
    <div class="app_login">
        <div class="login-wrap" v-show="showLogin">
            <h3>登录</h3>
            <p v-show="showTishi">{{tishi}}</p>
            <input type="text" placeholder="请输入用户名" v-model="username">
            <input type="password" placeholder="请输入密码" v-model="password">
            <button v-on:click="login">登录</button>
            <span v-on:click="ToRegister">没有账号？马上注册</span>
        </div>
 
        <div class="register-wrap" v-show="showRegister">
            <h3>注册</h3>
            <p v-show="showTishi">{{tishi}}</p>
            <input type="text" placeholder="请输入用户名" v-model="newUsername">
            <input type="password" placeholder="请输入密码" v-model="newPassword">
            <button v-on:click="register">注册</button>
            <span v-on:click="ToLogin">已有账号？马上登录</span>
        </div>
    </div>
</template>
 
<style>
  .app_login .login-wrap {
	text-align:center;
}
.app_login input {
	display:block;
	width:250px;
	height:40px;
	line-height:40px;
	margin:0 auto;
	margin-bottom:10px;
	outline:none;
	border:1px solid #888;
	padding:10px;
	box-sizing:border-box;
}
.app_login p {
	color:red;
}
.app_login button {
	display:block;
	width:250px;
	height:40px;
	line-height:40px;
	margin:0 auto;
	border:none;
	background-color:#41b883;
	color:#fff;
	font-size:16px;
	margin-bottom:5px;
}
.app_login span {
	cursor:pointer;
}
.app_login span:hover {
	color:#41b883;
}
</style>
 
<script>
    export default{
        data(){
            return{
                showLogin: true,
                showRegister: false,
                showTishi: false,
                tishi: '',
                username: '',
                password: '',
                newUsername: '',
                newPassword: ''
            }
        },
        mounted(){
        /*页面挂载获取cookie，如果存在username的cookie，则跳转到主页，不需登录*/
          if(getCookie('username')){
              this.$router.push('/home')
          }
        },
        methods:{
          login(){
              if(this.username == "" || this.password == ""){
                  alert("请输入用户名或密码")
              }else{
                  let data = {'username':this.username,'password':this.password}
                  /*接口请求*/
                  this.$http.post('http://localhost:3000/users/islogin',data).then((res)=>{
                      console.log(res)
                  /*接口的传值是(-1,该用户不存在),(0,密码错误)，同时还会检测管理员账号的值*/
                    if(res.data == -1){
                        this.tishi = "该用户不存在"
                        this.showTishi = true
                    }else if(res.data == 0){
                        this.tishi = "密码输入错误"
                        this.showTishi = true
                    }else if(res.data == 'admin'){
                    /*路由跳转this.$router.push*/
                        this.$router.push('/main')
                    }else{
                        this.tishi = "登录成功"
                        this.showTishi = true
                        setCookie('username',this.username,1000*60)
                        setTimeout(function(){
                            this.$router.push('/home')
                        }.bind(this),1000)
                    }
                })
            }
          }
        }
    }
</script>

