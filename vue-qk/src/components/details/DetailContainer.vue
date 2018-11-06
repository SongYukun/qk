<template>
  <div class="app-details-list">
    <header>
    	<header id="head" class="mui-bar mui-bar-transparent">
				<router-link class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" to="/home">
				</router-link>
				<h1 class="mui-title">课程检索</h1>
			</header>
		</header>
    <div style="height:45px;"></div>
    <div class="details-title">
      <img :src="detail[0].img_url">
      <div class="fg">
        <img src="../../assets/study/play.png" class="ig">
      </div>
    </div>
    <div class="d_d">
      <div class="d_t">
        <p>{{detail[0].title}}</p>
        <div class="d_b">
        <span>{{detail[0].make}}</span>
      <span>{{detail[0].per}}人参加</span>
        </div>
      </div>
      <div style="width:100%;height:10px;background:#f5f5f5;"></div>
      <div class="d_i">
        <p>课程简介</p>
        <p v-html='detail[0].detail'></p>
      </div>
      <button class="d_btn" @click="jumpstudy"><span>立即参加</span></button>
    </div>
  </div> 
</template>
<script>
  export default{
    data(){
      return {
        id:this.$route.params.id,
        detail:[]
      }
    },
    methods:{
      getDetail(){
        var url="http://127.0.0.1:3000/imagelist/productt1?id="+this.id;
        this.$http.get(url).then(result=>{
          if(result.body.code==1){
             console.log(result.body.msg)
            this.detail=result.body.msg;
             console.log(this.detail)
          }else{
            Toast("图片加载失败...");
          }
        })
      },
      getDetail2(){
        var url="http://127.0.0.1:3000/imagelist/productb1?id="+this.id;
        this.$http.get(url).then(result=>{
          if(result.body.code==1){
             console.log(result.body.msg)
            this.detail=result.body.msg;
             console.log(this.detail)
          }else{
            Toast("图片加载失败...");
          }
        })
      },
      jumpstudy(){
        this.$router.push({
          path:"/study"
        })
      },
    },
    created(){
      this.getDetail();
      this.getDetail2();
    }
  }
  //点击当前商品跳转，商品详细信息组件
  
</script>
<style>
.app-details-list .details-title{
  position: relative;
}
.app-details-list .details-title>img{
  width: 100%;
  height: 211px;
}
.app-details-list .details-title .fg{
  width: 100%;
  height: 98%;
  position: absolute;;
  top: 0;
  left: 0;
  background-repeat: no-repeat;
  background-position: center;
  background-color: rgba(0, 0, 0, 0.4);
}
.app-details-list .details-title .fg .ig{
  width: 65px;
  position: absolute;
  top: 73px;
  left: 155px;
}
.app-details-list .d_d{
  background: #fff;
}
.app-details-list .d_t{
  height: 70px;
}
.app-details-list .d_t>p{
  width: 100%;
  height: 24px;
  font-size: 19px;
  color: #000;
  padding: 9px 0 0 15px;
}
.app-details-list .d_b{
  color: #999999;
  font-size: 14px;
  display: flex;
  justify-content: space-between;
  padding: 0 15px;
  margin-top: 20px;
}
.app-details-list .d_b span{
  display: block;
}
.app-details-list .d_i p:first-child{
  font-size: 20px;
  color:#000;
  margin: 10px 0 0 10px;
  padding-bottom: 10px;
  border-bottom: 1px solid #ccc;
}
.app-details-list .d_i p:last-child{
  margin: 10px 10px 0 10px;
}
.app-details-list .d_btn{
  width: 100%;
  height: 50px;
  color: #fff;
  background-color: #FF7A3E;
  border-radius: 5px;
}
.app-details-list .d_btn span{
  font-size: 18px;
}
</style>
