import Vue from "vue";
import Router from "vue-router";
import Home from "./views/Home.vue";
import Nav from './views/Nav.vue';
Vue.component("index-nav", Nav)
Vue.use(Router);

export default new Router({
  mode: "history",
  base: process.env.BASE_URL,
  routes: [{
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
      path: '/Society',
      component: () => import("@/components/Society.vue")
    },
    // 企业法律顾问
    {
      path: '/Company',
      component: () => import("@/components/Company.vue")
    },
    // 教师资格证
    {
      path: '/Teacher',
      component: () => import("@/components/Teacher.vue")
    },
    // 助理社会工作师
    {
      path: '/Assistant-society',
      component: () => import("@/components/Assistant-society.vue")
    },
    // 一级建造师
    {
      path: '/One-constructor',
      component: () => import("@/components/One-constructor.vue")
    },
    // 二级建造师
    {
      path: '/Two-constructor',
      component: () => import("@/components/Two-constructor.vue")
    },
    // 考研
    {
      path: '/Research',
      component: () => import("@/components/Research.vue")
    },
    // 高考
    {
      path: '/College',
      component: () => import("@/components/College.vue")
    },
    // 会计从业资格
    {
      path: '/Accounting-work',
      component: () => import("@/components/Accounting-work.vue")
    },
    // 中级会计师
    {
      path: '/Semi-senior',
      component: () => import("@/components/Semi-senior.vue")
    },
    // 注册会计师CPA
    {
      path: '/CPA',
      component: () => import("@/components/CPA.vue")
    },
    // 中级经济师
    {
      path: '/Intermediate-economist',
      component: () => import("@/components/Intermediate-economist.vue")
    },
    // 初级会计师
    {
      path: '/Junior-accountant',
      component: () => import("@/components/Junior-accountant.vue")
    },
    // 计算机四级
    {
      path: '/Computer-level',
      component: () => import("@/components/Computer-level.vue")
    },
    // 警察招考
    {
      path: '/Police-test',
      component: () => import("@/components/Police-test.vue")
    },
    // 政法干警
    {
      path: '/Police-officers',
      component: () => import("@/components/Police-officers.vue")
    },
    // 国考
    {
      path: '/National-exam',
      component: () => import("@/components/National-exam.vue")
    },
    // 临床执业医师
    {
      path: '/Clinical-practitioner',
      component: () => import("@/components/Clinical-practitioner.vue")
    },
    // 临床助理医师
    {
      path: '/Clinical-assistant',
      component: () => import("@/components/Clinical-assistant.vue")
    },
    // 执业中药师
    {
      path: '/Chinese-medicine',
      component: () => import("@/components/Chinese-medicine.vue")
    },
    // 执业西药师
    {
      path: '/Western-medicine',
      component: () => import("@/components/Western-medicine.vue")
    },
    // 护士资格
    {
      path: '/Nurse-qualification',
      component: () => import("@/components/Nurse-qualification.vue")
    },
    // 我的首页
    {
      path: '/my',
      component: () => import("@/components/My.vue")
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
    }, {
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
      children: [{
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
    },
    // 助理社会工作师
    {
      path: "/assistantsociety",
      component: () => import("./views/Assistantsociety.vue")
    },
    // 一级建筑师
    {
      path: '/oneconstructor',
      component: () => import("./views/Oneconstructor.vue")
    },
    // 二级建筑师
    {
      path: '/twoconstructor',
      component: () => import('./views/Twoconstructor.vue')
    },
    // 会计从业资格
    {
      path: '/accountingwork',
      component: () => import('./views/Accountingwork.vue')
    },
    // 中级会计师
    {
      path: '/semisenior',
      component: () => import('./views/Semisenior.vue')
    },
    // 注册会计师CPA
    {
      path: '/pa',
      component: () => import('./views/Cpa.vue')
    },
    // 中级经济师
    {
      path: '/Intermediateeconomist',
      component: () => import('./views/Intermediateeconomist.vue')
    }
  ]
});