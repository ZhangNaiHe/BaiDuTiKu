<template>
  <el-container>
    <!-- 头部开始 -->
    <el-header>
      <index-nav></index-nav>
    </el-header>
    <!-- 头部结束 -->
    <!-- <el-main> -->
    <!-- 轮播图start -->
    <!-- ************** -->
    <!-- 轮播图end -->

    <!-- 中部start -->
    <!-- <el-card class="box-card"> -->
    <span class="headtext" style="font-size : 30px">伴您走过</span>
    <br />
    <span class="headtexttwo" style="font-size : 10px">学习中每一个阶段</span>
    <div class="tag-group">
      <el-tag
        class="headdiv"
        style="width:70px ; height: 5px;"
        v-for="item in items"
        :key="item.label"
        :type="item.type"
        effect="dark"
      >{{ item.label }}</el-tag>
    </div>

    <div class="withyou-main">
      <a class="withyou-box withyou-box-learn log-withyou-box" href data-info="kp">
        <div class="box-title">
          <p class="box-title-name">章节学习</p>
          <p class="box-title-detail">考点各个击破</p>
          <div class="box-title-bg"></div>
        </div>
        <p class="box-content">
          串考点
          <span class="box-content-icon iconfont icon-right"></span>
        </p>
      </a>
      <a class="withyou-box withyou-box-paper log-withyou-box" href data-info="zhenti">
        <div class="withyou-box-mod-triangle">
          <div class="triangle-border"></div>
          <div class="triangle-inset"></div>
        </div>
        <div class="box-title">
          <p class="box-title-name">真题模拟</p>
          <p class="box-title-detail">巩固核心重点</p>
          <div class="box-title-bg"></div>
        </div>
        <p class="box-content">
          练重点
          <span class="box-content-icon iconfont icon-right"></span>
        </p>
      </a>
      <a class="withyou-box withyou-box-score log-withyou-box" href data-info="yuce">
        <div class="withyou-box-mod-triangle">
          <div class="triangle-border"></div>
          <div class="triangle-inset"></div>
        </div>
        <div class="box-title">
          <p class="box-title-name">考前押题</p>
          <p class="box-title-detail">成功斩获得分数</p>
          <div class="box-title-bg"></div>
        </div>
        <p class="box-content">
          去冲刺
          <span class="box-content-icon iconfont icon-right"></span>
        </p>
      </a>
    </div>

    <div class="search-subject">
      <span class="page-study">章节学习</span>
      <div class="search-subject-choose">
        <p class="choose-subject">
          <!-- 子路由 -->
          <router-link class="subject-demo" to="/mathmath">中级经济法</router-link>
          <router-link class="subject-demo" to="/chinesemath">中级会计实务</router-link>
          <router-link class="subject-demo" to="/physics">中级财政管理</router-link>
        </p>
        <div>
          <!-- 子组件显示 -->
          <router-view></router-view>
        </div>
      </div>
    </div>
    <!-- 章节学习结束 -->

    <!-- </el-main> -->
    <!-- 中部结束 -->
    <el-footer>Footer</el-footer>
  </el-container>
</template>

 <script>
import "../assets/css/zhangnaiheniubi.css";
export default {
  name: "Index",
  data() {
    return {
      paperonelist: [],
      papertwolist: [],
      paperthreelist: []
    };
  },
  methods: {
    async getPaperoneList() {
      const { data: res } = await this.$http.get("paper");
      this.paperonelist = res.data.historySum;
      console.log(this.paperonelist);
    },
    async getPapertwoList() {
      const { data: res } = await this.$http.get("paper");
      this.papertwolist = res.data.paperSum;
      console.log(this.papertwolist);
    },
    async getPaperthreeList() {
      const { data: res } = await this.$http.get("paper");
      this.paperthreelist = res.data.hotSum;
      console.log(this.paperthreelist);
    }
  },
  created() {
    this.getPaperoneList();
    this.getPapertwoList();
    this.getPaperthreeList();
  }
};
</script>

<style scoped>
* {
  color: black;
}

body {
  overflow-x: hidden;
}

.el-container {
  /* width: 1519.2px; */
  height: 100%;
}

.el-main {
  padding: 0;
  margin: 0;
}
.el-header {
  padding: 0px 0px;
}

/* .el-card {
  width: 100%;
   height:800px; 
}  */
.headtext {
  margin-left: 701px;
  font-weight: bold;
}
.headtexttwo {
  margin-left: 724px;
}
.headdiv {
  width: 10px;
  height: 10px;
  background-color: green;
}

.tag-group {
  width: 70px;
  height: 5px;
  margin-left: 719px;
}

.withyou-main {
  padding-top: 20px;
  height: 170px;
  padding-bottom: 25px;
  /* border-bottom: 1px solid #e6e6e6; */
  margin-top: 20px;
}

.withyou-box-learn {
  background: url(../assets/images/timu1.png) no-repeat;
  display: block;
  float: left;
  width: 370px;
  height: 172px;
  color: #fff;
  position: relative;
  margin-right: 35px;
}
.withyou-box-paper {
  background: url(../assets/images/timu2.png) no-repeat;
  display: block;
  float: left;
  width: 370px;
  height: 172px;
  color: #fff;
  position: relative;
  margin-right: 35px;
  background-position: -1410px -270px;
}

.withyou-box-score {
  background: url(../assets/images/timu2.png) no-repeat;
  display: block;
  float: left;
  width: 370px;
  height: 172px;
  color: #fff;
  position: relative;
  background-position: -1410px -540px;
}

.withyou-main {
  margin-left: 160px;
}

.withyou-main p {
  margin-left: 35px;
  margin-top: 2px;
  color: #fff;
}

.box-title-name {
  font-size: 30px;
  padding-bottom: 11px;
  line-height: 85px;
  height: 45px;
  text-decoration: none;
}

.box-title-detail {
  font-size: 14px;
  line-height: 40px;
  height: 60px;
}

.box-content {
  font-size: 15px;
}

.search-subject {
  background-color: #f0f0f0;
  width: 100%;
  height: 654px;
}

.page-study {
  font-size: 30px;
  font-weight: bold;
  margin-left: 701px;
}

.el-tab-pane {
  margin-left: 200px;
}

.search-subject-choose {
  margin-left: 459px;
  margin-right: 459px;
}

.choose-subject {
  display: block;
  font-size: 14px;
  width: 1182px;
  overflow: hidden;
  margin-left: -20px;
  margin-top: 20px;
}

.subject-demo {
  color: #11a68d;
  /* padding-bottom: 10px; */
  /* margin-right: 30px; */
  border-bottom: 4px solid transparent;
  height: 30px;
  line-height: 30px;
  margin-left: 110px;
  padding-bottom: 5px;
}
</style>