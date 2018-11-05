<template>
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
				<button id='login' type="button" class="mui-btn mui-btn-block mui-btn-primary" @click="per()">登录</button>
				<div class="link-area"><a id='reg' @click="login()">注册账号</a> <span class="spliter">|</span> <a id='forgetPassword'>忘记密码</a>
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
        // keyword:"",
        // islogin:false
        uname:"",
        upwd:""
      }
    },
    // mounted() {
    //   var self=this;
    //   this.$http.get("http://localhost:3000/users/islogin").then(res=>{
    //     if(res.data.ok==1)
    //       self.islogin=true;
    //     else
    //       self.islogin=false;
    //   })
    // },
    methods:{
      per(){
        var self=this;
        this.$http.post("http://localhost:3000/users/signin",qs.stringify({uname:self.uname,upwd:self.upwd})).then(res=>{
          if(res.data.ok==1){
            Toast('登录成功,返回首页');
            self.$router.push({path:"/person"})
          }else{
            Toast('用户名或密码错误！');
          }
        })
        // this.$router.push({
        //   path:"/about/person"
        // })
      },
      login(){
        this.$router.push({
          path:"/about"
        })
      },
      person(){
        this.$router.push({
          path:"/person"
        })
      }
    },
    created(){}
  }
</script>
<style>
.area {
  margin: 20px auto 0px auto;
}

.mui-input-group {
  margin-top: 10px;
}

.mui-input-group:first-child {
  margin-top: 20px;
}

.mui-input-group label {
  width: 22%;
}

.mui-input-row label~input,
.mui-input-row label~select,
.mui-input-row label~textarea {
  width: 78%;
}

.mui-checkbox input[type=checkbox],
.mui-radio input[type=radio] {
  top: 6px;
}

.mui-content-padded {
  margin-top: 25px;
}

.mui-btn {
  padding: 10px;
}

.link-area {
  display: block;
  margin-top: 25px;
  text-align: center;
}

.spliter {
  color: #bbb;
  padding: 0px 8px;
}

.oauth-area {
  position: absolute;
  bottom: 20px;
  left: 0px;
  text-align: center;
  width: 100%;
  padding: 0px;
  margin: 0px;
}

.oauth-area .oauth-btn {
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

.oauth-area .oauth-btn:active {
  border: solid 1px #aaa;
}

.oauth-area .oauth-btn.disabled {
  background-color: #ddd;
}
</style>
