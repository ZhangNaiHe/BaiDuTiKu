import Vue from "vue";
import App from "./App.vue";
import router from "./router";
// 配置elementui框架
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);
Vue.config.productionTip = false;
import "./assets/css/base.css";
// 配置axios
import Axios from 'axios'
Vue.prototype.$http = Axios
Axios.defaults.baseURL = 'http://47.102.213.250:80/api/v1/'

// 请求拦截器
Axios.interceptors.request.use(
  function (config) {
    // Do something before request is sent
    // 当我们去获取需要权限的数据的时候 一定要把令牌传到服务器
    config.headers.Authorization = window.sessionStorage.getItem("token");
    return config;
  },
  function (error) {
    return Promise.reject(error);
  }
);


// 路由导航守卫
router.beforeEach((to, from, next) => {
  // 如果是登录 直接放行
  if (to.path == "/login") return next();
  // 如果是别的页面 先要看看是否登录
  const token = sessionStorage.getItem("token");
  // 如果没有登录 去登录
  if (!token) return next("/login");
  // 否则放行
  next();
});


new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
