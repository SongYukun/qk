<template>   
    <div class="app_register">
        <header class="mui-bar mui-bar-nav">
			<header id="head" class="mui-bar mui-bar-transparent">
				<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/login">
				</router-link>
				<h1 class="mui-title">注册</h1>
			</header>
		</header>
		<div class="mui-content" style="padding-top:44px !important;">
			<form class="mui-input-group" action="/add">
				<div class="mui-input-row">
					<label>账号</label>
					<input id='account' type="text" class="mui-input-clear mui-input" placeholder="请输入账号" name="uname">
				</div>
				<div class="mui-input-row">
					<label>密码</label>
					<input id='password' type="password" class="mui-input-clear mui-input" placeholder="请输入密码" name="upwd">
				</div>
				<div class="mui-input-row">
					<label>确认</label>
					<input id='password_confirm' type="password" class="mui-input-clear mui-input" placeholder="请确认密码" name="upwd">
				</div>
			</form>
			<div class="mui-content-padded">
				<button id='reg' class="mui-btn mui-btn-block mui-btn-primary" @click="register" type="submit">注册</button>
			</div>
		</div>
    </div>
</template>
<script>
	import { Toast } from 'mint-ui';
    export default{
        data(){
            return {}
        },
        methods:{
            register(){
                this.$router.push({
                	path:"/login"
                })
            }
        },
        created(){
        }
    }
</script>
<style>
.app_register .area {
    margin: 20px auto 0px auto;
}
.app_register .mui-input-group:first-child {
    margin-top: 20px;
}
.app_register .mui-input-group label {
    width: 22%;
}
.app_register .mui-input-row label~input,
.app_register .mui-input-row label~select,
.app_register .mui-input-row label~textarea {
    width: 78%;
}
.app_register .mui-checkbox input[type=checkbox],
.app_register .mui-radio input[type=radio] {
    top: 6px;
}
.app_register .mui-content-padded {
    margin-top: 25px;
}
.app_register .mui-btn {
    padding: 10px;
}
</style>