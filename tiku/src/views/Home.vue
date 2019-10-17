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
          <el-submenu :index="i" v-for="(item,i) in MenusList" :key="item.cat_father_id">
            <template slot="title">
              <span slot="title">{{item.cat_name}}</span>
            </template>
            <el-menu-item v-for="(subitem) in item.cat_son_name" :key="subitem.cat_son_id">
              <span slot="title">{{subitem}}</span>
            </el-menu-item>
          </el-submenu>
        </el-menu>
        <!-- 高考专区-->
        <div class="division">
          <p class="dip">高考专区</p>
          <div class="division_end"></div>
          <!-- 章节学习 -->
          <div class="gaokao_main">
            <div class="gaokao_erea">
              <p>
                章节学习
                <span>考点各个击破,重难点自测</span>
              </p>
            </div>
            <!-- 课程 -->
            <div class="box-con">
              <!-- 跳转连接el-link -->
              <el-link :underline="false">
                <div class="class-box" v-for="(item1,i) in lists" :key="i">
                  <img :src="ss+lists[0].subject_pic" alt id="icon" />
                  <!-- 图标 -->
                  <!-- <div id="icon" :class="imgs[i]"></div> -->
                  <!-- <img id="icon" :src="icons[i]" alt /> -->
                  <!-- <i id="icon" :class="icons[i]"></i> -->
                  <p class="icon-p">{{item1.subject_title}}</p>
                  <p class="icon-s">
                    <span>{{item1.total}}</span>个考点
                  </p>
                </div>
              </el-link>
            </div>
            <!-- 大家都在学 -->
            <div class="some">
              <!-- 标题 -->
              <div class="sometit">
                <h3>
                  大家都在学
                  <a href="#">我也要学</a>
                </h3>
              </div>
              <!-- 轮播 -->
              <div class="someconn"></div>
            </div>
          </div>
          <!-- 考试资源 -->
          <div class="kaoshi">
            <div class="kaoshi_main">
              <p>
                试卷资源
                <span>一考知底，高分必刷，全面提分</span>
                <span>当前位置: 北京</span>
                <a href="#">更多地区></a>
              </p>
              <div class="linian">
                <!-- 真题 -->
                <div class="lizhen">
                  <div class="year">
                    <h3>
                      历年真题
                      <a href="#" class="more">更多真题试卷></a>
                    </h3>
                    <!-- 试卷 -->
                    <ul>
                      <li class="parer_list" v-for="(item3,i3) in liNians" :key="i3">
                        <p class="nian_p">{{item3.paper_name}}</p>
                        <p class="nian_s">解析|下载|估分</p>
                      </li>
                    </ul>
                  </div>
                </div>
                <!-- 模拟 -->
                <div class="lizhen" style="padding-left: 80px;">
                  <div class="year">
                    <h3>
                      模拟试卷
                      <a href="#" class="more">更多模拟试卷></a>
                    </h3>
                    <!-- 试卷 -->
                    <ul>
                      <li class="parer_list" v-for="(item4,i4) in liMonis" :key="i4">
                        <p class="nian_p">{{item4.paper_name}}</p>
                        <p class="nian_s">解析|下载</p>
                      </li>
                    </ul>
                  </div>
                </div>
                <!-- 热门 -->
                <div class="lizhen" style="padding-left: 40px;padding-right: 0px;border: none;">
                  <div class="year">
                    <h3>
                      热门试卷
                      <a href="#" class="more">更多热门试卷></a>
                    </h3>
                    <!-- 试卷 -->
                    <ul>
                      <li
                        class="parer_list"
                        v-for="(item5,i5) in hots"
                        :key="i5"
                        style=" list-style:none;margin-bottom: 30px;"
                      >
                        <i
                          class="el-icon-wind-power"
                          style="float:left;margin-top:-6px;color:#11a68d;margin-right:3px"
                        ></i>
                        <p class="nian_p">{{item5.paper_name}}</p>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <!-- 名校精品试卷 -->
            <div class="ming" style="clear:both">
              <div class="ming_tit">
                <h3>
                  名校精品试卷
                  <a href="#">更多名校精品卷></a>
                </h3>
              </div>
              <!-- 名校 -->
              <div class="bj">
                <div class="tu">
                  <div class="tu_tit">
                    <p>北京大学附属中学</p>
                    <p>同地区推荐共8套试卷</p>
                  </div>
                </div>
                <ul class="tu_ul">
                  <li>语文 海淀区2016年高三期末试卷</li>
                  <li>英语 海淀区2016年高三期末试卷</li>
                  <li>理科数学 海淀区2016年高三期末试卷</li>
                </ul>
              </div>
              <div class="bj">
                <div class="tu_o">
                  <div class="tu_tit">
                    <p>北京市第一零一中学</p>
                    <p>同地区推荐共1套试卷</p>
                  </div>
                </div>
                <ul class="tu_ul">
                  <li>化学 海淀区2016年高三期末试卷</li>
                </ul>
              </div>
              <div class="bj" style="margin-right:0px;">
                <div class="tu_w">
                  <div class="tu_tit">
                    <p>北京市第四中学</p>
                    <p>同地区推荐共9套试卷</p>
                  </div>
                </div>
                <ul class="tu_ul">
                  <li>语文 西城区2016年高三期末试卷</li>
                  <li>英语 西城区2016年高三期末试卷</li>
                  <li>理科数学 西城区2016年高三期末试卷</li>
                </ul>
              </div>
              <!-- 各种名校 -->
              <div class="bj_list">
                <el-tag>北京市八一学校</el-tag>
                <el-tag type="success">北京师范大学第二附属中学</el-tag>
                <el-tag type="info">东北师范大学附属中学</el-tag>
                <el-tag type="warning">上海中学</el-tag>
                <el-tag type="success">衡水中学</el-tag>
                <el-tag type="info">南京外国语学校</el-tag>
                <el-tag type="warning">成都市第七中学</el-tag>
              </div>
            </div>
          </div>
        </div>
        <!-- 资格考试专区 -->
        <div class="cation">
          <p>资格考试专区</p>
          <div class="cation_end"></div>
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
      MenusLists: [],
      // 章节学习
      lists: [],
      // 历年真题
      liNians: [],
      // 模拟试卷
      liMonis: [],
      // 热门试卷
      hots: [],
      // 图片
      ss: "/img/"
    };
  },
  created() {
    this.getmenusList();
    this.getLists();
    this.getliNians();
    this.getliMonis();
    this.getHots();
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
    },
    // 获取章节学习
    async getLists() {
      // 发起axios
      const { data: res } = await this.$http.get("subject");
      window.console.log(res);
      this.lists = res.data;
      window.console.log(this.lists[0].subject_pic);
      // window.console.log(res.data.total);
      // window.console.log(res.data[0].total);
      // 判断
      for (let i = 0; i < this.lists.length; i++) {
        if (this.lists[i].total == null) {
          this.lists[i].total = 0;
        }
      }
    },
    // 获取历年真题
    async getliNians() {
      // 发起axios
      const { data: res } = await this.$http.get("paper");
      // window.console.log(res);
      // 判断状态
      if (res.code !== 200) {
        // 提示
        return this.$message.error("获取历年真题失败");
      }
      // 把数据给this.liNians
      this.liNians = res.data.historySum;
    },
    // 获取模拟试卷
    async getliMonis() {
      // 发起axios
      const { data: res } = await this.$http.get("paper");
      // window.console.log(res);
      // 判断状态
      if (res.code !== 200) {
        // 提示
        return this.$message.error("获取模拟试卷失败");
      }
      // 把数据给this.liMonis
      this.liMonis = res.data.paperSum;
    },
    // 获取热门试卷
    async getHots() {
      // 发起axios
      const { data: res } = await this.$http.get("paper");
      // console.log(res);
      // 把数据给hots
      this.hots = res.data.hotSum;
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
  background-color: #ffffff;
  text-align: center;
  border: 1px #f0f0f0 solid;
  box-sizing: border-box;
}
#icon {
  display: block;
  width: 59px;
  height: 59px;
  margin: 0 auto;
  margin-top: 45px;
  /* background-color: black; */
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
.class-box:hover {
  background-color: #fafafa;
}
.some {
  float: left;
  margin-left: 75px;
}
.sometit {
  width: 310px;
}
.sometit h3 {
  font-size: 20px;
  color: #333;
  height: 20px;
  line-height: 20px;
  font-weight: 400;
}
.sometit a {
  display: block;
  text-decoration: none;
  color: #666;
  font-size: 12px;
  float: right;
}
.kaoshi {
  width: 1200px;
  margin: 0 auto;
  clear: both;
  padding-top: 20px;
}
.kaoshi_main {
  font-weight: 700;
  font-size: 24px;
  height: 24px;
  line-height: 24px;
  color: #333;
}
.kaoshi span {
  color: #666;
  font-size: 12px;
  font-weight: 400;
  margin-right: 30px;
  margin-left: 10px;
}
.kaoshi a {
  text-decoration: none;
  margin-left: -15px;
  font-size: 12px;
  color: #11a68d;
}
.someconn {
  width: 310px;
  height: 364px;
}
.linian {
  padding-top: 10px;
}
.lizhen {
  float: left;
  padding-right: 70px;
  border-right: 1px solid #f0f0f0;
}
.year {
  width: 289px;
}
.year h3 {
  font-size: 20px;
  color: #333;
  line-height: 20px;
  height: 20px;
  font-weight: 400;
}
.more {
  float: right;
  font-size: 12px;
}
.parer_list {
  list-style: square;
  margin: 20px 0;
}
.parer_list .nian_p:hover {
  color: #11a68d;
}
.nian_p {
  font-size: 14px;
  height: 14px;
  line-height: 14px;
  color: #333;
}
.nian_s {
  font-size: 12px;
  height: 12px;
  line-height: 12px;
  letter-spacing: 3px;
  color: #11a68d;
}
.ming_tit {
  padding-top: 20px;
}
.ming_tit h3 {
  padding-bottom: 15px;
  font-size: 20px;
  color: #333;
  height: 20px;
  line-height: 20px;
  font-weight: 400;
}
.ming_tit a {
  text-decoration: none;
  font-size: 12px;
  color: #666;
  float: right;
}
.ming_tit a:hover {
  color: #11a68d;
}
.bj {
  width: 370px;
  height: 226px;
  border: 1px solid #f0f0f0;
  float: left;
  margin-right: 42px;
}
.tu {
  height: 100px;
  background-image: url("../assets/images/beijing01.png");
  background-repeat: no-repeat;
  background-size: 100%;
  position: relative;
}
.tu_o {
  height: 100px;
  background-image: url("../assets/images/beijing02.png");
  background-repeat: no-repeat;
  background-size: 100%;
  position: relative;
}
.tu_w {
  height: 100px;
  background-image: url("../assets/images/beijing03.png");
  background-repeat: no-repeat;
  background-size: 100%;
  position: relative;
}
.tu_tit {
  position: absolute;
  left: 30px;
  top: 10px;
}
.tu_tit p:nth-child(1) {
  font-size: 16px;
  height: 16px;
  line-height: 16px;
  color: #333;
  font-weight: 700;
  margin-bottom: 0px;
}
.tu_tit p:nth-child(2) {
  font-size: 12px;
  color: #333;
  height: 12px;
  line-height: 12px;
}
.tu_ul {
  font-size: 14px;
  color: #333;
}
.tu_ul li {
  line-height: 14px;
  height: 14px;
  padding-bottom: 20px;
}
.bj_list {
  clear: both;
  margin-top: 20px;
}
</style>
