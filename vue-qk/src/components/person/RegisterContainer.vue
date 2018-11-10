<template>
    <!--注册-->
    <div class="app_user">
        <header id="header" class="mui-bar mui-bar-transparent">
			<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/user"></router-link>
		</header>
		<div class="app_register"  id="appsearch">
			<header class="mui-bar mui-bar-nav">
				<header id="head" class="mui-bar mui-bar-transparent">
				<h1 class="mui-title">注册</h1>
				</header>
			</header>
			<div style="margin-top:50px;">
				<input type="text" name="uname" placeholder="请输入您的户名" v-model="uname" @blur="unameblur()"><br>
				<input type="password" name="upwd" placeholder="请输入您的6~9位数密码"  v-model="upwd"><br>
				<input type="password" name="cpwd" placeholder="请确认您的密码"  v-model="cpwd"><br>
				<mt-button type="primary" size="large" @click="myregister">注册</mt-button>
			</div>
		</div>  
    </div> 
</template>
<script>
    import {Toast} from "mint-ui";
    export default{
        name:"register",
        data(){
            return {
                uname:"",
                upwd:"",
                cpwd:"",
                regnews:"",
                isReg:false
            }
        },
        methods:{
            myregister(){
                if(this.uname=="" ||this.upwd=="" ||this.cpwd==""){
                    Toast("请完善信息")
                }else if(this.isReg){
                    let _this=this;
                    let url="http://127.0.0.1:3000/users/register";
                    let data={'uname':this.uname,'upwd':this.upwd,'cpwd':this.cpwd}
                    this.$http.post(url,data).then(result=>{
                        if(result.body.code==1){
                            Toast("注册成功");
                            setTimeout(function(){
                                _this.$router.push({path:"/person"})
                            },500)
                        }else{
                            Toast(result.body.msg)
                        }
                    })
                }
            },
             unameblur(){
                if(!this.uname==""){
                    let _this=this;
                    let url="http://127.0.0.1:3000/users/checkUname";
                    let data={'uname':this.uname}
                    this.$http.post(url,data).then(result=>{
                        if(result.body.code==1){
							Toast("用户名已存在");
							_this.isReg=false;
                        }else{
                            _this.regnews="";
                            _this.isReg=true;
                        }
                    })
                }
            },
         } ,   
        created(){
            
        } 
    }
</script>
<style scoped>
.search_title{
	text-align:center;
	padding-bottom:20px;
}
.search_title p{
	color:black;
	font-size:16px;
}
.search_login{
	padding-top:25px;
	display:flex;
	justify-content: space-between;
}
.search_tip{
	text-align: center;
	padding-top:20px;
}
.search_other{
	display:flex;
	justify-content: space-around;
	padding-top:50px;
}
.search_other img{
	width:32px;
	height:32px;
}
.mui-table-view-cell {
	padding: 15px 15px;
}
</style>