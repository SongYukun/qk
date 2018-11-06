<template>
  <div class="app-list" style="width:100%;height:overflow;">
    <div class="mui-content">
			<ul class="mui-table-view mui-table-view-striped mui-table-view-condensed">
				<li class="mui-table-view-cell" v-for="item in list" :key="item.id">
					<div class="mui-slider-cell">
						<div class="oa-contact-cell mui-table">
							<div class="oa-contact-avatar mui-table-cell">
								<img :src="item.img_url" />
							</div>
              <div style="position:absolute;top:20px;left:145px;">
                <p style="color:#000;">{{item.title}}</p>
                <p>{{item.detail}}</p>
              </div>
              <div style="display:flex;justify-content: space-between;width: 200px;position: absolute;top: 68px;left: 146px;">
                <p>{{item.person}}</p>
                <p style="color:#84b706">{{item.week}}</p>
              </div>
						</div>
					</div>
				</li>
			</ul>
		</div>
  </div>
</template>
<script>
  export default{
    data(){
      return {
        list:[]
      }
    },
    methods:{
      getList(){
        var url="http://127.0.0.1:3000/list/list";
        this.$http.get(url).then(result=>{
          if(result.body.code==1){
            this.list=result.body.msg;
          }else{
            Toast("加载失败");
          }
        })
      }
    },
    created(){
      this.getList();
    }
  }  
</script>
<style>
.app-list .mui-content > .mui-table-view:first-child {
    margin-top: 0;
}
.app-list .oa-contact-cell.mui-table .mui-table-cell {
  padding: 11px 0;
  vertical-align: middle;
  margin-left: 20px;
}
.app-list .oa-contact-cell {
  position: relative;
  margin: -11px 0;
}
.app-list .oa-contact-avatar {
  width: 75px;
}
.app-list .oa-contact-avatar img {
  width: 124px;
  height: 82px;
}
.app-list .oa-contact-content {
  width: 100%;
}
.app-list .oa-contact-name {
  margin-right: 20px;
}
.app-list .oa-contact-name, oa-contact-position {
  float: left;
}
</style>
