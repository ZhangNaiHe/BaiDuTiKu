import Vue from "vue";
import Router from "vue-router";
import Home from "./views/Home.vue";
import Nav from './views/Nav.vue';

Vue.use(Router);
Vue.component('index-nav',Nav)
export default new Router({
  mode: "history",
  base: process.env.BASE_URL,
  routes: [
    {
      path: "/",
      name: "home",
      component: Home
    },
    // 导航栏
    {
      path: "/nav",
      name: "nav",
      component: Nav,
    },
    // 社会工作师
    {
      path:'/Society',
      component: () => import("@/components/Society.vue")
    },
    // 企业法律顾问
    {
      path:'/Company',
      component: () => import("@/components/Company.vue")
    },
    // 教师资格证
    {
      path:'/Teacher',
      component: () => import("@/components/Teacher.vue")
    },
    // 助理社会工作师
    {
      path: "/about",
      name: "about",
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () =>
        import(/* webpackChunkName: "about" */ "./views/About.vue")
    }, {
      path: '/login',
      component: () => import("@/components/Login.vue")
    }, {
      path: '/register',
      component: () => import("@/components/Register.vue")
    },
    {
      path:"/r",
      name:"recruit",
      component:()=> import("./views/Recruit.vue")
    },
    {
      path:'/colleges',
      name:'colleges',
      component: () => import("./views/Colleges.vue"),
      children: [
      {
         path: '/mathmath',
         component: () => import('./components/Mathmath.vue')     
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
    }
      ]
    }
  ]
});
