import Vue from 'vue'
import Router from 'vue-router'
//src/router.js配置组件访问路由
//1.引入自定义组件
import HomeContainer from "../components/tabbar/HomeContainer"
import StudyContainer from "../components/tabbar/StudyContainer"
import PersonContainer from "../components/tabbar/PersonContainer"
import LoginContainer from "../components/person/LoginContainer"
import RegisterContainer from "../components/person/RegisterContainer"
import DetailContainer from "../components/details/DetailContainer"
import ListContainer from "../components/details/ListContainer"
import SearchContainer from "../components/search/SearchContainer"
Vue.use(Router)

//2.指定该组件的访问路径
export default new Router({
  routes: [
    {path: '/',redirect:"/home"},
    {path:'/home',component:HomeContainer},
    {path:'/study',component:StudyContainer},
    {path:'/person',component:PersonContainer},
    {path:'/login',component:LoginContainer},
    {path:'/register',component:RegisterContainer},
    {path:'/home/details/list',component:ListContainer},
    {path:'/home/details/DetailList/:id',component:DetailContainer},
    {path:'/search',component:SearchContainer},
    {path:'*',redirect:"/home"}
  ],linkActiveClass:"mui-active" //覆盖默认路由高亮类
})

