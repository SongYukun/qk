import Vue from 'vue'
import Router from 'vue-router'
//src/router.js配置组件访问路由
//1.引入自定义组件
import HomeContainer from "../components/tabbar/HomeContainer"
import StudyContainer from "../components/tabbar/StudyContainer.vue"
import ShopContainer from "../components/tabbar/ShopContainer.vue"
import AccountContainer from "../components/tabbar/AccountContainer.vue"
import DetailList from "../components/details/DetailList.vue"
import List from "../components/details/List.vue"
import AboutCount from "../components/about/AboutCount.vue"
Vue.use(Router)
import Search from "../components/search/Search.vue"
import Person from "../components/about/Person.vue"

//2.指定该组件的访问路径
export default new Router({
  routes: [
    {path: '/',redirect:"/home"},
    {path:'/home',component:HomeContainer},
    {path:'/study',component:StudyContainer},
    {path:'/shop',component:ShopContainer},
    {path:'/account',component:AccountContainer},
    {path:'/home/details/List',component:List},
    {path:'/home/details/DetailList',component:DetailList},
    {path:'/about',component:AboutCount},
    {path:'/person',component:Person},
    {path:'/search',component:Search},
    {path:'*',redirect:"/home"}
  ],linkActiveClass:"mui-active" //覆盖默认路由高亮类
})
