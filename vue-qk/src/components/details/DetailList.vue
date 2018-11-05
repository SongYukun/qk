<template>
  <div class="app-details-list">
    <div class="details-title">
      <img src="../../assets/study/title.png">
      <div class="fg">
        <img src="../../assets/study/play.png" class="ig">
      </div>
    </div>
    <div class="d_d">
      <div class="d_t">
        <p>能帮你赚到钱的50节商业提升课</p>
        <div class="d_b">
          <span>网上云课堂出品</span>
          <span>8161人参加</span>
        </div>
      </div>
      <div style="width:100%;height:10px;background:#f5f5f5;"></div>
      <div class="d_i">
        <p>课程简介</p>
        <p><span id="auto-id-1541421670311">你平均每年读多少本书？<br>全世界每年阅读书籍数量排名第一的是犹太人，平均每人一年读书64本。而中国13亿人口出去教科书，平均每人一年读书1本都不到。一个爱读书的民族，自然是优秀的。<br><br>在职场上，相信每个人都曾经有过很见那的时候，度过这种煎熬，有一个法宝就是躲进书中，躲进自己的精神世界里。第二天再精神饱满地去上班，继续奋斗。<br><br>在你工作过程中陷入瓶颈，找不到人生方向，不妨在上班路上听听卡尔·纽波特的《深度工作》之后，可以充实自信和方向。<br>因为每天听过一本书，明天将成为你升职加薪的筹码。<br><br>陈药师：说书名家<br>前《芭莎男士》杂志报道总监<br>青年学者，财经作家、管理学讲师。毕业于外交学院；<br>人民大学金融学在职硕士；<br>日本早稻田大学访问学者，外交学院国际关系客座讲师。<br><br>他将会把各个领域的必读经典书浓缩出来，通过简明易懂的事例、经典知识的串讲搭配风趣幽默的讲解风格，帮你快速打开认知的疆界。</span></p>
      </div>
      <button class="d_btn"><span>立即参加</span></button>
    </div>
  </div> 
</template>
<script>
  export default{
    data(){
      return {
        list:[],
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
.d_d{
  background: #fff;
}
.d_t{
  height: 70px;
}
.d_t>p{
  width: 100%;
  height: 24px;
  font-size: 19px;
  color: #000;
  padding: 9px 0 0 15px;
}
.d_b{
  color: #999999;
  font-size: 14px;
  display: flex;
  justify-content: space-between;
  padding: 0 15px;
  margin-top: 20px;
}
.d_b span{
  display: block;
}
.d_i p:first-child{
  font-size: 20px;
  color:#000;
  margin: 10px 0 0 10px;
  padding-bottom: 10px;
  border-bottom: 1px solid #ccc;
}
.d_i p:last-child{
  margin: 10px 10px 0 10px;
}
.d_btn{
  width: 100%;
  height: 50px;
  color: #fff;
  background-color: #FF7A3E;
  border-radius: 5px;
}
.d_btn span{
  font-size: 18px;
}
</style>
