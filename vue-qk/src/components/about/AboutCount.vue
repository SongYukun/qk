<template>   
    <div class="app_search">
        <header class="mui-bar mui-bar-nav">
			<header id="head" class="mui-bar mui-bar-transparent">
				<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/account">
				</router-link>
				<h1 class="mui-title">注册</h1>
			</header>
		</header>
		<div class="mui-content">
			<form class="mui-input-group" action="/user/add">
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
				<button id='reg' class="mui-btn mui-btn-block mui-btn-primary" @click="click()" type="submit">注册</button>
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
            click(){
                this.$router.push({
                path:"/account"
                })
            }
        },
        created(){
            
        }
    }
</script>
<style>
.area {
    margin: 20px auto 0px auto;
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
</style>