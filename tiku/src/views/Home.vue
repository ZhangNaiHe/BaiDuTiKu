<template>
  <div class="home">
    <!-- 布局 -->
    <el-container>
      <el-header>
        <!-- 导航栏 -->
      </el-header>
      <el-main>
        <!-- 轮播图 -->
        <el-carousel height="350px">
          <el-carousel-item v-for="item in 2" :key="item"></el-carousel-item>
        </el-carousel>
        <!-- 菜单 -->
        <!-- <el-menu class="el-menu-list">
          <el-menu-item v-for="item in MenusList" :key="item.cat_father_id">
            <span slot="title">{{item.cat_name}}</span>
            <i class="el-icon-arrow-right" style="float:right;line-height:49px;"></i>
          </el-menu-item>
        </el-menu>-->
        <!-- 隐藏菜单 -->
        <!-- <el-menu class="el-menu-list-send" v-for="(subitem,i) in this.MenusLists" :key="i">
          <el-menu-item>
            <span slot="title">{{subitem}}</span>
          </el-menu-item>
        </el-menu>-->
        <el-menu
          default-active="1"
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
          background-color="#545c64"
          text-color="#fff"
          active-text-color="#ffd04b"
          style="width:230px;position:absolute;top:60px;left:17.5%;z-index: 99;"
          unique-opened="false"
        >
          <el-submenu :index="index" v-for="(item,index) in MenusList" :key="item.cat_father_id">
            <template slot="title">
              <span slot="title">{{item.cat_name}}</span>
            </template>
            <el-menu-item
              v-for="(subitem) in item.cat_son_name"
              :key="subitem.cat_son_id"
            >
              <span slot="title">{{subitem}}</span>
            </el-menu-item>
          </el-submenu>
        </el-menu>
        <!-- 高考专区-->
        <div class="division">
          <p class="dip">高考专区</p>
          <div class="division_end"></div>
          <div class="gaokao_main">
            <div class="gaokao_erea">
              <p>
                章节学习
                <span>考点各个击破,重难点自测</span>
              </p>
            </div>
            <!-- 课程 -->
            <div class="box-con">
              <div class="class-box">
                <a href="#">
                  <!-- 图片 -->
                  <div class="icon"></div>
                  <p class="icon-p">文科数学</p>
                  <p class="icon-s">
                    <span>495</span>个考点
                  </p>
                </a>
              </div>
            </div>
          </div>
        </div>
      </el-main>
      <el-footer>Footer</el-footer>
    </el-container>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // 菜单列表数据
      MenusList: [],
      // 隐藏列表数据
      MenusLists: []
    };
  },
  created() {
    this.getmenusList();
  },
  methods: {
    // 获取菜单列表
    async getmenusList() {
      // 发起axios
      const { data: res } = await this.$http.get("tabsmenu");
      // 判断状态
      if (res.code !== 200) {
        // 提示
        return this.$message.error("获取列表菜单失败");
      }
      //把获取到的数据给MenusLsit
      this.MenusList = res.data.tabs;
      // console.log(this.MenusList)
      // 把cat_son_name用split切割 用逗号隔开
      this.MenusList.forEach(item => {
        item.cat_son_name = item.cat_son_name
          ? item.cat_son_name.split(",")
          : [];
        this.MenusLists = item.cat_son_name;
      });
      // console.log(this.MenusLists);
    }
  }
};
</script>

<style scoped>
.el-carousel__item:nth-child(2n + 1) {
  background-image: url("../assets/images/lunbo_1.png");
  background-repeat: no-repeat;
  background-size: 100%;
  opacity: 0.75;
}
.el-carousel__item:nth-child(2n) {
  background-image: url("../assets/images/lunbo_2.jpg ");
  background-repeat: no-repeat;
  background-size: 100%;
  opacity: 0.75;
}
el-main {
  position: relative;
}
.el-main {
  padding: 0;
}
.dip {
  height: 30px;
  font-size: 30px;
  text-align: center;
  line-height: 30px;
  color: #333;
  font-weight: 700;
  margin-bottom: 15px;
}
.el-menu-list {
  position: absolute;
  width: 230px;
  top: 59px;
  z-index: 999;
  left: 17.5%;
}
.el-menu-list .el-menu-item {
  height: 50px;
  line-height: 50px;
  color: #fff;
  font-size: 14px;
  padding-left: 20px;
  background-color: #000;
  opacity: 0.65;
  border-bottom: 1px solid #1e1e1e;
  box-sizing: border-box;
}
.el-menu-list-send {
  position: absolute;
  width: 230px;
  height: 350px;
  top: 59px;
  z-index: 999;
  left: 29.6%;
  background-color: red;
}
.division_end {
  width: 40px;
  height: 4px;
  background-color: #11a68d;
  margin: 0 auto;
}
.gaokao_main {
  width: 1182px;
  margin: 0 auto;
  padding-top: 30px;
}
.gaokao_erea p {
  /* display: block; */
  font-weight: 700;
  font-size: 24px;
  color: #333;
  height: 24px;
  line-height: 24px;
}
.gaokao_erea span {
  /* display: block; */
  color: #666;
  font-size: 12px;
  font-weight: 400;
  margin-left: 10px;
}
.box-con {
  float: left;
  width: 796px;
}
.class-box {
  float: left;
  width: 198px;
  height: 198px;
  background-color: red;
  text-align: center;
  border: 1px #f0f0f0 solid;
  box-sizing: border-box;
}
.class-box a {
  text-decoration: none;
}
.icon {
  width: 59px;
  height: 59px;
  margin: 0 auto;
  margin-top: 45px;
  background-color: black;
}
.icon-p {
  line-height: 0px;
  font-size: 18px;
  color: #333;
}
.icon-s {
  font-size: 12px;
  color: #666;
  height: 12px;
  line-height: 12px;
}
</style>
