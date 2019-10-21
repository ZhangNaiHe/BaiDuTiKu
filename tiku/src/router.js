import Vue from "vue";
import Router from "vue-router";
import Home from "./views/Home.vue";
import Nav from './views/Nav.vue';
Vue.component("index-nav", Nav)
import chuizhi from "./components/chuizhilunbo.vue";
Vue.component("chui-zhi", chuizhi);

import Footer from "./components/Bottom.vue";
Vue.component("index-footer", Footer);
import nins from "./components/nins.vue";
Vue.component("nins-hit", nins);
Vue.use(Router);

export default new Router({
  mode: "history",
  base: process.env.BASE_URL,
  routes: [{
      path: "/",
      name: "home",
      component: Home
    },
    {
      path: '/ccc',
      component: chuizhi
    },
    {
      path: '/nins',
      component: nins
    },
    // 导航栏
    {
      path: "/nav",
      name: "nav",
      component: Nav,
    },
    // 退出
    {
      path: '/logout',
      component: () => import("@/components/Logout.vue")
    },
    {
      path: "/about",
      name: "about",
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () =>
        import( /* webpackChunkName: "about" */ "./views/About.vue")
    }, {
      path: '/login',
      component: () => import("@/components/Login.vue")
    },
    {
      path: '/register',
      component: () => import("@/components/Register.vue")
    },
    {
      path: "/r",
      name: "recruit",
      component: () => import("./views/Recruit.vue")
    },
    // 高考
    {
      path: '/colleges',
      name: 'colleges',
      component: () => import("./views/Colleges.vue"),
      redirect: '/mathmath',
      children: [{
          path: '/mathmath',
          component: () => import('./components/Mathmath.vue'),
        },

        {
          path: '/chinesemath',
          component: () => import('./components/Chinesemath.vue')
        },
        {
          path: '/physics',
          component: () => import('./components/Physics.vue')
        },
        {
          path: '/chemistry',
          component: () => import('./components/Chemistry.vue')
        },
        {
          path: '/bios',
          component: () => import('./components/Bios.vue')
        },
        {
          path: '/politics',
          component: () => import('./components/Politics.vue')
        },
        {
          path: '/history',
          component: () => import('./components/History.vue')
        },
        {
          path: '/where',
          component: () => import('./components/Where.vue')
        },

        // 助理社会工作师
        {
          path: "/ass",
          component: () => import("./views/Ass.vue"),

        },
        // 一级建筑师
        {
          path: '/one',
          component: () => import("./views/One.vue"),
          redirect: "/mathmath"
        },
        // 二级建筑师
        {
          path: '/two',
          component: () => import('./views/Two.vue'),
          redirect: "/mathmath"
        },
        // 会计从业资格
        {
          path: '/acc',
          component: () => import('./views/Acc.vue'),
          redirect: "/mathmath"
        },
        // 中级会计师
        {
          path: '/semisenior',
          component: () => import('./views/Semisenior.vue'),
          redirect: "/mathmath"
        },
        // 注册会计师CPA
        {
          path: '/pa',
          component: () => import('./views/Cpa.vue'),
          redirect: "/mathmath"
        },
        // 中级经济师
        {
          path: '/int',
          component: () => import('./views/Inter.vue'),
          redirect: "/mathmath"
        },
        // 初级会计师
        {
          path: "/jun",
          component: () => import('./views/Junior.vue'),
          redirect: "/mathmath"
        },
        // 计算机四级
        {
          path: '/com',
          component: () => import('./views/Computer.vue'),
          redirect: "/mathmath"
        },
        // 警察招考
        {
          path: '/pot',
          component: () => import('./views/Police-test.vue'),
          redirect: "/mathmath"
        },
        // 政法干警
        {
          path: '/pol',
          component: () => import('./views/Politics.vue'),
          redirect: "/mathmath"
        },
        // 国考
        {
          path: '/state',
          component: () => import('./views/State.vue'),
          redirect: "/mathmath"
        },
        // 临床执业医师
        {
          path: '/pra',
          component: () => import('./views/Practice.vue'),
          redirect: "/mathmath"
        },
        // 临床助理医师
        {
          path: '/aid',
          component: () => import('./views/Aid.vue'),
          redirect: "/mathmath"
        },
        // 职业中药医师
        {
          path: '/tcm',
          component: () => import('./views/Tcm.vue'),
          redirect: "/mathmath"
        },
        // 执业西药师
        {
          path: '/wes',
          component: () => import('./views/Western.vue'),
          redirect: "/mathmath"
        },
        // 护士资格
        {
          path: '/nurse',
          component: () => import('./views/Nurse.vue'),
          redirect: "/mathmath"
        },
        // 考研
        {
          path: '/res',
          component: () => import('./views/Research.vue'),
          redirect: "/mathmath"
        }
      ]
    },

  ]
});