// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router/index'

import 'mint-ui/lib/style.css'
import './lib/mui/css/mui.css'
import './lib/mui/css/mui.min.css'
import './lib/mui/css/icons-extra.css'
import axios from 'axios'

axios.default.withCredentials=true;

Vue.config.productionTip = false

//1.引入组件
import {Header,Swipe,SwipeItem,Button,TabContainer,TabContainerItem,Navbar,TabItem,Search} from "mint-ui"
//2.注册组件
Vue.component(Header.name,Header);
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
Vue.component(Button.name,Button);
Vue.component(Navbar.name, Navbar);
Vue.component(TabItem.name, TabItem);
Vue.component(TabContainer.name, TabContainer);
Vue.component(TabContainerItem.name, TabContainerItem);
Vue.component(Search.name, Search);
//3.引入VueResource到当前的项目中
import VueResource from "vue-resource";
//4.加载VueResource
Vue.use(VueResource);
//5.定义全局过滤器
Vue.filter("dateFormat",function(datestr,pattern="YYYY-MM-DD"){
  return new Date(datestr).toLocaleString();
})
//6.设置全局ajax访问基础路径
Vue.http.options.root="http://127.0.0.1:3000";
//7.设置全局ajax post访问格式
Vue.http.options.emulateJSON=true;

import Vuex from "vuex";//引入Vuex组件
Vue.use(Vuex); //注册组建中所有内容
////创建Vuex对象：共享数据，操作方法，获取并监听数据方法
var store=new Vuex.Store({
  state:{     //共享数据
    cartCount:0    //共享数据购物车中数量
  },  
  mutations:{   //操作共享数据方法
    increment(state,num){state.cartCount+num},
    substract(state){state.cartCount--},
    clearcount(state){state.cartCount=0}
  },
  getters:{     //获取并监听数据方法
    optCount:function(state){
      return state.cartCount;
    }
  }
})

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  store, //将Vuex对象注册vue对象中
  template: '<App/>'
})
