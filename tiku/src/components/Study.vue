<template>
  <div class="study">
    <!-- 导航 -->
    <index-nav></index-nav>

    <div style="margin-top: 22px;" class="study-body">
      <!-- 切换 -->
      <div class="table">
        <el-menu
          :default-active="activeIndex2"
          class="el-menu-demo"
          mode="horizontal"
          @select="handleSelect"
          background-color="#cccccc"
          text-color="#303133;"
          active-text-color="none"
          style="height: 40px;background-color: #f0f0f0;"
        >
          <div class="subject">科目：</div>
          <el-menu-item
            style="margin-right: 10px;height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
            index="1"
          >理科數學</el-menu-item>
          <el-menu-item
            style="margin-right: 10px;height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
            index="2"
          >文科數學</el-menu-item>
          <el-menu-item
            style="margin-right: 10px;height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
            index="3"
          >物理</el-menu-item>
          <el-menu-item
            style="margin-right: 10px;height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
            index="4"
          >化学</el-menu-item>
          <el-menu-item
            style="margin-right: 10px;height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
            index="5"
          >生物</el-menu-item>
          <el-menu-item
            style="margin-right: 10px;height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
            index="6"
          >数学</el-menu-item>
          <el-menu-item
            style="margin-right: 10px;height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
            index="7"
          >政治</el-menu-item>
          <el-menu-item
            style="margin-right: 10px;height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
            index="8"
          >历史</el-menu-item>
          <el-menu-item
            style="margin-right: 10px;height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
            index="9"
          >地理</el-menu-item>
        </el-menu>
        <!-- <hr style="border:1px solid #e0e0e0" /> -->
        <el-menu
          :default-active="activeIndex2"
          class="el-menu-demo"
          mode="horizontal"
          @select="handleSelect"
          background-color="#cccccc"
          text-color="#303133;"
          active-text-color="none"
          style="margin-top: 10px;height: 40px;background-color: #f0f0f0;"
        >
          <div class="subject">结构：</div>
          <el-menu-item
            style="margin-right: 10px;height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
            index="0"
          >按知识点</el-menu-item>
        </el-menu>
      </div>
      <!-- 菜单 -->
      <div class="menu">
        <!-- <el-col :span="12"> -->
        <el-menu
          default-active="2"
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
          active-text-color="#f0f0f0"
          style="width: 330px;text-color: #f0f0f0;background-color: #f0f0f0; border:1px solid #e5e5e5;"
        >
          <el-submenu index="1">
            <template slot="title">
              <i class="el-icon-circle-plus-outline"></i>
              <span>第一章 集合与常用逻辑用语</span>
            </template>
            <el-menu-item-group>
              <template slot="title"></template>
              <el-menu-item
                style="height: 30px;line-height: 30px;color: #333333;"
                index="1-1"
              >1 集合的概念及运算</el-menu-item>
              <el-menu-item
                style="height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
                index="1-2"
              >2 命题及其关系、充分条件与必要事件</el-menu-item>
              <el-menu-item
                style="height: 30px;line-height: 30px;color: #333333;background-color: #f0f0f0;"
                index="1-3"
              >3 简单的逻辑联结词、全称量词与存在量词</el-menu-item>
            </el-menu-item-group>
          </el-submenu>
        </el-menu>
        <!-- </el-col> -->

        <el-main class="-menu-main">
          <router-view></router-view>
        </el-main>
      </div>
    </div>
  </div>
</template>

<script>
// import "../views/Nav.vue";
export default {
  methods: {
    handleOpen(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath);
    }
  }
};
</script>

<style>
#app {
  height: 100%;
  background-color: #f0f0f0;
}

.table {
  width: 1180px;
  height: 100px;
  margin: auto;
  /* background-color: pink; */
}

.subject {
  float: left;
  height: 30px;
  line-height: 30px;
  font-size: 14px;
}

.el-menu-item.is-active {
  background-color: #11a68d !important;
}

.menu {
  width: 1180px;
  height: 100px;
  margin: auto;
  margin-top: 3px;
  background-color: rebeccapurple;
}

.el-submenu__title {
  height: 70px;
  line-height: 70px;
  border: 1px solid #e5e5e5;
  font-size: 14px;
  color: #303133;
  /* padding: 0 20px; */
  cursor: pointer;
  /* -webkit-transition: border-color 0.3s, background-color 0.3s, color 0.3s;
  transition: border-color 0.3s, background-color 0.3s, color 0.3s;
  -webkit-box-sizing: border-box; */
  box-sizing: border-box;
}

.menu .el-menu-item.is-active {
  background-color: #d2e6e2 !important;
}

.menu .el-menu {
  float: left;
}

.el-main {
  float: left;
  width: 848px;
  /* height: 100px; */
  background-color: #ffffff;
}
</style>