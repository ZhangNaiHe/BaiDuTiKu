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

new Vue({
  router,
  render: h => h(App)
}).$mount("#app");
