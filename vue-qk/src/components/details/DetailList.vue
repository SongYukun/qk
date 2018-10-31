<template>
  <div class="app-details-list">
    <div class="details-title">
      <img src="../../assets/study/title.png">
      <div class="fg">
        <img src="../../assets/study/play.png" class="ig">
      </div>
    </div>
    <mt-navbar v-model="selected">
      <mt-tab-item id="1">介绍</mt-tab-item>
      <mt-tab-item id="2">目录</mt-tab-item>
      <mt-tab-item id="3">评价</mt-tab-item>
    </mt-navbar>
    <!-- tab-container -->
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1">
        <div class="it_p">
          <div class="j-j-t">
            <p>能帮你赚到钱的50节商业提升课</p>
          </div>
        </div>
      </mt-tab-container-item>
      <mt-tab-container-item id="2">
        <div class="it_p">
          <div class="m-l-t">
            <p>课程学习指南</p>
          </div>
        </div>
      </mt-tab-container-item>
      <mt-tab-container-item id="3">
        <div class="it_p">
          <div class="p-j-t">
            <p>全部评价</p>
            <p>共48个评价</p>
          </div>
        </div>
      </mt-tab-container-item>
    </mt-tab-container>
  </div> 
</template>
<script>
  export default{
    data(){
      return {
        list:[],
        selected:1
      }
    },
    methods:{
      
    },
    created(){

    }
  }
  //点击当前商品跳转，商品详细信息组件
  
</script>
<style>
.details-title{
  position: relative;
}
.details-title>img{
  width: 100%;
  height: 211px;
}
.details-title .fg{
  width: 100%;
  height: 98%;
  position: absolute;;
  top: 0;
  left: 0;
  background-repeat: no-repeat;
  background-position: center;
  background-color: rgba(0, 0, 0, 0.4);
}
.details-title .fg .ig{
  width: 65px;
  position: absolute;
  top: 73px;
  left: 155px;
}
.mui-card .mui-control-content {
  padding: 10px;
}
.mui-control-content {
  height: 150px;
}
.mint-tab-item .mint-tab-item-label{
  font-size: 18px;
  color: #333;
}
.mint-tab-item .mint-tab-item-label:hover{
  font-size: 18px;
  color: #2cc17b;
}
.mint-navbar .mint-tab-item.is-selected{
  margin-bottom: 0px !important;
  border-bottom: 3px solid #2cc17b !important;
}
.it_p{
  width: 100%;
  margin: 0 auto;
  height: 450px;
  background: #fff;
  margin-top: 1px;
}
</style>
