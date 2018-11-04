<template>
  <div class="app">
    <!-- 主页的组件HomeContainer.vue -->
    <!-- 0:头部 -->
    <div class="h_h">
      <p><img src="../../assets/index/logo.png"></p>
      <p @click="search()"><span class="mui-icon mui-icon-search"></span></p>
    </div>
    <!-- 1:轮播图 -->
    <mt-swipe :auto="4000">
      <mt-swipe-item v-for="item in list" :key="item.id">
        <img :src="item.img_url" />
      </mt-swipe-item>
    </mt-swipe>
    <!-- 列表 -->
    <div class='index-nav'>
      <router-link v-for="item in nav" :key="item.id" :to="item.href" class='nav-item'>
        <img :src='item.img_url'>
        <span>{{item.title}}</span>
      </router-link>
    </div>
    <!-- 畅销好课 -->
    <div class="mui-content" style="background-color:#fff">
      <div style="background-color:#efeff4;height:10px;"></div>
      <!--<h5 style="background-color:#efeff4"></h5>-->
      <h4>畅销好课</h4>
      <ul class="mui-table-view mui-grid-view">
        <li v-for="item in productt" :key="item.id" class="mui-table-view-cell mui-media mui-col-xs-6">
          <router-link :to="item.href">
            <img class="mui-media-object" :src="item.img_url">
            <div class="mui-media-body">{{item.title}}</div>
          </router-link>
        </li>
      </ul>    
		</div>
    <div style="background-color:#efeff4;height:10px;"></div>
    <!--专题-->
    <div class="custom-name">专题</div>
    <div class="mui-card">
      <div class="mui-card-content">
        <router-link v-for="item in topic" :key="item.id" :to="item.href">
          <img :src="item.img_url" alt="" width="100%" height="136px">
        </router-link>
      </div>
    </div>
    <!--职业发展-->  
    <div style="background-color:#efeff4;height：10px"></div>
    <div class="mui-content" style="background-color:#fff;height:510px;">
      <h4>畅销好课</h4>
      <ul class="mui-table-view mui-grid-view">  
        <div style="padding:10px 0 0 10px;">
          <router-link :to="lesson[0].href">
            <img src="../../assets/index/sub05.png" style="width:100%;">
          </router-link>
          <p style="margin-left:10px;color:#000;font-size:15px">{{lesson[0].title}}</p>
        </div>
        <li v-for="item in productb" :key="item.id" class="mui-table-view-cell mui-media mui-col-xs-6">
          <router-link :to="item.href">
            <img class="mui-media-object" :src="item.img_url">
            <div class="mui-media-body">{{item.title}}</div>
          </router-link>
        </li>
      </ul>    
		</div>
  </div>
</template>
<script>
  //加载当前组件需要第三方模块
  import {Toast} from "mint-ui";
  export default{
    data(){
      return {
        list:[],
        nav:[],
        productt:[],
        topic:[],
        productb:[],
        lesson:[
          {
            href:'home/details/DetailList',
            img:'../../assets/index/sub05.png',
            title:'职场人的理财必修课'
          }
        ]
      }
    },
    methods:{
      getImageList(){
        //获取图片轮播数据
        var url="http://127.0.0.1:3000/imagelist/list";
        this.$http.get(url).then(result=>{
          //node.js发送json字符串
          //通过vueresource接收自动将json字符串转换js对象
          if(result.body.code==1){
            this.list=result.body.msg;
          }else{
            //提示出错信息
            Toast("加载轮播图片失败...");
          }
        })
      },
      getNavList(){
        var url="http://127.0.0.1:3000/imagelist/nav";
        this.$http.get(url).then(result=>{
          if(result.body.code==1){
            this.nav=result.body.msg;
          }else{
            Toast("导航图片加载失败...");
          }
        })
      },
      getProducttList(){
        var url="http://127.0.0.1:3000/imagelist/productt";
        this.$http.get(url).then(result=>{
          if(result.body.code==1){
            this.productt=result.body.msg;
          }else{
            Toast("图片加载失败...");
          }
        })
      },
      getTopicList(){
        var url="http://127.0.0.1:3000/imagelist/topic";
        this.$http.get(url).then(result=>{
          if(result.body.code==1){
            this.topic=result.body.msg;
          }else{
            Toast("图片加载失败...");
          }
        })
      },
      getProductbList(){
        var url="http://127.0.0.1:3000/imagelist/productb";
        this.$http.get(url).then(result=>{
          if(result.body.code==1){
            this.productb=result.body.msg;
          }else{
            Toast("图片加载失败...");
          }
        })
      },
      search(){
         this.$router.push({
          path:"/search"
        })
      }
    },
    created(){
      this.getImageList();
      this.getNavList();
      this.getProducttList();
      this.getTopicList();
      this.getProductbList();
    }
  }
</script>
<style>
.h_h{
  height: 49px;
  line-height: 49px;
  background-color: #FFFFFF;
  display: flex;
  justify-content: space-around;
}
.h_h p img{
  display: block;
  width: 160px;
  height: 35px;
  margin-top: 7px;
}
.mui-icon-search:before {
  display: block;
  padding-top: 14px;
}
/*图片轮播组件高度为0*/
.app{
  background-color: #fff;
}
.app .mint-swipe{
  height: 200px;
}
.app .mint-swipe img{
  width: 100%;
  height: 100%;
}
/*列表*/
.index-nav{
  display: flex;
  flex-wrap: wrap;
}
.index-nav .nav-item{
  display: flex;
  width: 25%;
  height: 200rpx;
  box-sizing: border-box;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  font-size: 14px;
  color: #000;
  /*border-right: 1rpx solid #ddd;*/
  border-bottom: 1rpx solid #ddd;
  /*position: relative;*/
}
.index-nav .nav-item span{
  display: block;
  margin-top: 10px;
}
.index-nav .nav-item img{
  width: 45px;
  height: 45px;
  margin-top: 20px;
}
.index-nav .nav-item::after{
  content:"";
  width: 1rpx;
  height: 100%;
  position: absolute;
  right: 0;
  top: 0;
  background-color: #ccc;
}
/*畅销好课*/
.mui-content{
  height: 456px;
}
h4{
  padding-top: 8px;
  padding-left: 5px;
  text-indent: 12px;
}
.mui-table-view.mui-grid-view .mui-table-view-cell .mui-media-body{
font-size: 15px;
margin-top:8px;
color: #333;
}
/*专题*/
.custom-name {
  line-height: 21px;
  font-size: 17px;
  font-weight: bold;
  color: #3c4a55;
  padding-left: 10px;
  margin-top: 10px;
}
</style>

