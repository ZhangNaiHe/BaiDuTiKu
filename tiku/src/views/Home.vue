<template>
  <div class="home">
    <!-- 布局 -->
    <el-container>
      <div class="he" style="    width: 1559px;
    margin: 0 auto;">
        <el-header
          style=" height: 46px;
    width: 1559px;
    margin-left: -20px;
    mardin:0 auto"
        >
          <index-nav></index-nav>
        </el-header>
      </div>
      <!-- <el-main> -->
      <!-- 轮播图 -->
      <!-- <el-carousel height="278px">
          <el-carousel-item v-for="item in 2" :key="item"></el-carousel-item>
      </el-carousel>-->
      <!-- 菜单 -->
      <div class="car" style="width: 1920px;margin: 0 auto;">
        <el-carousel height="350px" indicator-position="none">
          <el-carousel-item v-for="item in 2" :key="item"></el-carousel-item>
        </el-carousel>
      </div>

      <!-- <el-menu
          style="width:230px;position:absolute;top:46px;left:17.5%;z-index: 99;"
          :unique-opened="true"
        >
          <el-submenu :index="i" v-for="(item,i) in MenusList" :key="item.cat_father_id" style="color: #fff;opacity:.65;backgroundColor:#000">
            <template slot="title">
              <span slot="title">{{item.cat_name}}</span>
            </template>
            <el-menu-item v-for="(subitem) in item.cat_son_name" :key="subitem.cat_son_id">
              <span slot="title">{{subitem}}</span>
            </el-menu-item>
          </el-submenu>
      </el-menu>-->
      <!-- 菜单导航 -->
      <div class="non">
        <!-- 一级 -->
        <ul class="non_ul">
          <li>
            高考
            <span>></span>
          </li>
          <li>
            建筑类
            <span>></span>
          </li>
          <li>
            财会类
            <span>></span>
          </li>
          <li>
            计算机类
            <span>></span>
          </li>
          <li>
            公务员
            <span>></span>
          </li>
          <li>
            医药类
            <span>></span>
          </li>
          <li>
            其他
            <span>></span>
          </li>
        </ul>
        <!-- 二 -->
        <div class="stion">
          <ul>
            <li>
              <a href="/colleges">高考</a>
            </li>
          </ul>
        </div>
        <div class="stion">
          <ul>
            <li>
              <a href="/one">一级建造师</a>
            </li>
            <li>
              <a href="/two">二级建造师</a>
            </li>
          </ul>
        </div>
        <div class="stion">
          <ul>
            <li>
              <a href="/acc">会计从业资格</a>
            </li>
            <li>
              <a href="/semisenior">中级会计师</a>
            </li>
            <li>
              <a href="/pa">注册会计师CPA</a>
            </li>
            <li>
              <a href="/int">中级经济师</a>
            </li>
            <li>
              <a href="/jun">初级会计师</a>
            </li>
          </ul>
        </div>
        <div class="stion">
          <ul>
            <li>
              <a href="/com">计算机四级</a>
            </li>
          </ul>
        </div>
        <div class="stion">
          <ul>
            <li>
              <a href="/pot">警察招考</a>
            </li>
            <li>
              <a href="/pol">政法干警</a>
            </li>
            <li>
              <a href="/state">国考</a>
            </li>
          </ul>
        </div>
        <div class="stion">
          <ul>
            <li>
              <a href="/pra">临床执业医师</a>
            </li>
            <li>
              <a href="/aid">临床助理医师</a>
            </li>
            <li>
              <a href="/tcm">执业中药医师</a>
            </li>
            <li>
              <a href="/wes">执业西药药师</a>
            </li>
            <li>
              <a href="/nurse">护士资格</a>
            </li>
          </ul>
        </div>
        <div class="stion">
          <ul>
            <li>
              <a href="/res">考研</a>
            </li>
            <li>
              <a href="/colleges">高考</a>
            </li>
          </ul>
        </div>
      </div>
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
                <img :src="ss+lists[i].subject_pic" alt id="icon" />
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
            <div class="someconn">
              <ul class="som_ul">
                <li>
                  <img src="../assets/images/xiaogou.jpg" alt />
                  <div class="som_d">
                    <p>开心快乐已学完了244个知识点</p>
                    <p>今天学了不等式的综合应用等3个知识点</p>
                  </div>
                </li>
                <li>
                  <img src="../assets/images/xiaogou01.jpg" alt />
                  <div class="som_d">
                    <p>小美已学完了37个知识点</p>
                    <p>今天学了抛物线的定义及应用等4个知识点</p>
                  </div>
                </li>
                <li>
                  <img src="../assets/images/xiaogou02.jpg" alt />
                  <div class="som_d">
                    <p>Scorpio已学完了280个知识点</p>
                    <p>今天学了奇函数等8个知识点</p>
                  </div>
                </li>
                <li>
                  <img src="../assets/images/xiaogou03.jpg" alt />
                  <div class="som_d">
                    <p>VInegarooooooo已学完了111个知识点</p>
                    <p>今天学了从刀耕火种到精耕细作等1个知识点</p>
                  </div>
                </li>
                <li>
                  <img src="../assets/images/xiaogou04.jpg" alt />
                  <div class="som_d">
                    <p>坏猪灬已学完了263个知识点</p>
                    <p>今天学了竖直上抛运动等18个知识点</p>
                  </div>
                </li>
              </ul>
            </div>
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
                      style=" list-style:none;margin-bottom: 26px;"
                    >
                      <i
                        :class="fonts[i5]"
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
        <p class="cat_p">资格考试专区</p>
        <div class="cation_end"></div>
        <!-- 专区 -->
        <div class="accou">
          <!-- one -->
          <div class="accou_one">
            <div class="acc_cai">
              <div class="acc_img"></div>
              <div class="acc_p">
                <p>财会类</p>
                <p>5门考试</p>
              </div>
            </div>
            <div class="acc_kuai">
              <span>会计从业资格</span>
              <span>初级会计师</span>
              <span>中级会计师</span>
              <span>注册会计师CPA</span>
              <span>中级经济师</span>
            </div>
          </div>
          <!-- two -->
          <div class="accou_one" style="margin-left: 150px;">
            <div class="acc_cai">
              <div class="acc_imga"></div>
              <div class="acc_p">
                <p>建筑类</p>
                <p>2门考试</p>
              </div>
            </div>
            <div class="acc_kuai">
              <span>一级建造师</span>
              <span>二级建造师</span>
            </div>
          </div>
          <!-- three -->
          <div class="accou_one">
            <div class="acc_cai">
              <div class="acc_imgb"></div>
              <div class="acc_p">
                <p>职业资格类</p>
                <p>4门考试</p>
              </div>
            </div>
            <div class="acc_kuai" style="border:none;">
              <span>教师资格证</span>
              <span>企业法律顾问</span>
              <span>社会工作师</span>
              <span>助理社会工作师</span>
            </div>
          </div>
          <!-- four -->
          <div class="accou_one" style="margin-left: 150px;">
            <div class="acc_cai">
              <div class="acc_imgc"></div>
              <div class="acc_p">
                <p>公务员</p>
                <p>2门考试</p>
              </div>
            </div>
            <div class="acc_kuai" style="border:none;">
              <span>警察招考</span>
              <span>政法干警</span>
            </div>
          </div>
        </div>
      </div>
      <!-- 教材教辅专区 -->
      <div class="book">
        <p class="book_p">教材教辅专区</p>
        <div class="book_list"></div>
        <!-- 标题 -->
        <h3 class="book_h">
          中小学教辅资源
          <span class="book_s">90149本</span>
        </h3>
        <!-- 学校 -->
        <div class="school">
          <div class="gao">
            <div class="maxk"></div>
            <span>高中</span>
          </div>
          <div class="chu">
            <div class="maxk"></div>
            <span>初中</span>
          </div>
          <div class="xiao">
            <div class="maxk"></div>
            <span>小学</span>
          </div>
        </div>
      </div>
      <!-- 二级 -->
      <div class="book">
        <p class="book_p">教材教辅专区</p>
        <div class="book_list"></div>
        <!-- 标题 -->
        <h3 class="book_h">
          大学教辅资源
          <span class="book_s">6256本</span>
        </h3>
        <!-- 大学 -->
        <div class="coll">
          <a href="#" v-for="(item6,i6) in bigs" :key="i6">{{item6.big_teacher_name}}</a>
        </div>
      </div>
      <!-- 回到顶部 -->
       <!-- <el-backtop target=".page-component__scroll .el-scrollbar__wrap" > -->
      <!-- </el-main> -->
      <el-footer>
        <!-- <index-footer></index-footer> -->
        <div class="foot">
          <div class="f1">
            <div class="f1_tit">
              百度题库
              <p
                class="f1_p"
              >百度题库旨在为考生提供高效的智能备考服务，全面覆盖中小学财会类、建筑工程、职业资格、医卫类、计算机类等领域。拥有优质丰富的学习资料和备考全阶段的高效服务，助您不断前行！</p>
            </div>
          </div>
          <div class="f2">
            <div class="f1_tit">联系我们</div>
            <p>
              <i class="el-icon-user-solid"></i> 胡老师
            </p>
            <p>
              <i class="el-icon-message"></i> tiku01@baidu.com
            </p>
            <p>
              <i class="el-icon-s-home"></i> qq群：53811201
            </p>
          </div>
          <div class="f3">
            <div class="f1_tit">投诉建议</div>
            <p>
              <i class="el-icon-question"></i> 使用题库前必读
            </p>
            <p>
              <i class="el-icon-tickets"></i> 投诉中心
            </p>
            <p>
              <i class="el-icon-chat-dot-square"></i> 意见反馈
            </p>
          </div>
          <div class="f4">
            <div class="f1_tit">合作机构</div>
            <div class="f4_m">
              <ul>
                <li>
                  <img src="../../public/img/long.png" alt />
                </li>
                <li>
                  <img src="../../public/img/mu.png" alt />
                </li>
                <li>
                  <img src="../../public/img/wang.png" alt />
                </li>
                <li>
                  <img src="../../public/img/xi.png" alt />
                </li>
                <li>
                  <img src="../../public/img/yi.png" alt />
                </li>
                <li>
                  <img src="../../public/img/yao.png" alt />
                </li>
              </ul>
            </div>
          </div>
        </div>
        <p class="f5">京ICP证030173号 京网文[2013]0934-983号 Copyright © 2018 Baidu 使用百度前必读</p>
      </el-footer>
    </el-container>
  </div>
</template>

<script>
import "../css/box.css";
import "../css/iconfont/iconfont.css";
import "../js/box.js";
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
      ss: "/img/",
      // 大学教材
      bigs: [],
      // 图标
      fonts: [
        "iconfont icon-shuzi2",
        "iconfont icon-num-chart",
        "iconfont icon-shuzisan",
        "iconfont icon-shuzi5",
        "iconfont icon-shuzi6",
        "iconfont icon-shuzi3",
        "iconfont icon-shuzicai",
        "iconfont icon-3"
      ],
       myBackToTopStyle: {
        right: '50px',
        bottom: '50px',
        width: '40px',
        height: '40px',
        borderRadius: '4px',
        lineHeight: '45px', // 请保持与高度一致以垂直居中
        background: '#e7eaf1'// 按钮的背景颜色
      }
    };
  },
  created() {
    this.getmenusList();
    this.getLists();
    this.getliNians();
    this.getliMonis();
    this.getHots();
    this.getColls();
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

      res.data.tabs.forEach(item => {
        item.cat_son_name = item.cat_son_name
          ? item.cat_son_name.split(",")
          : [];
      });
      this.MenusLists = res.data.tabs;
      // window.console.log(this.MenusLists);
    },
    // 获取章节学习
    async getLists() {
      // 发起axios
      const { data: res } = await this.$http.get("subject");
      // window.console.log(res);
      this.lists = res.data;
      // window.console.log(this.lists[1].subject_pic);
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
    },
    // 获取大学资料
    async getColls() {
      // 发起axios
      const { data: res } = await this.$http.get("bigteacher");
      // window.console.log(res);
      this.bigs = res.data;
    }
  }
};
</script>

<style scoped>
.el-backtop {
    height: 100%;
        width: 100%;
        background-color: #f2f5f6;
        box-shadow: 0 0 6px rgba(0,0,0, .12);
        text-align: center;
        line-height: 40px;
        color: #1989fa;
      
}
.el-footer {
  width: 100%;
  height: 251px !important;
  background-color: #343f45;
  margin-top: 80px;
}
.f5 {
  color: #999;
  width: 1514px;
  height: 46px;
  margin: 0 auto;
  line-height: 46px;
  text-align: center;
  background-color: #39464d;
  margin-top: 165px;
  font-size: 12px;
  margin-left: -17px;
}
.foot {
  width: 1180px;
  margin: 0 auto;
  background-color: #343f45;
  font-size: 14px;
  padding-top: 40px;
  color: #ccc;
}
.f1_tit {
  color: #149987;
}
.foot p {
  line-height: 24px;
}
.f1_p {
  color: #ccc;
}
.f1 {
  float: left;
  width: 360px;
  height: 125px;
  border-right: 1px solid #39464d;
}
.f4_m ul {
  list-style: none;
  width: 366px;
  position: absolute;
  padding-left: 0px;
}
.f4_m li {
  float: left;
  width: 75px;
  height: 30px;
  margin-right: 9px;
  margin-bottom: 10px;
}
.f2 {
  box-sizing: border-box;
  width: 210px;
  height: 125px;
  padding-left: 25px;
  float: left;
  border-right: 1px solid #39464d;
}
.f3 {
  float: left;
  box-sizing: border-box;
  height: 125px;
  padding-left: 25px;
  float: left;
  border-right: 1px solid #39464d;
}
.f4 {
  float: left;
  padding-left: 50px;
  position: relative;
  width: 410px;
  box-sizing: border-box;
}
.someconn {
  width: 310px;
  height: 364px;
  margin-top: 45px !important;
}
.som_ul {
  list-style: none;
}
.som_ul li {
  margin-bottom: 30px;
}
.som_d p {
  height: 20px;
  line-height: 20px;
  color: #666;
  font-size: 12px;
  margin-top: -10px;
}
.som_ul img {
  width: 40px;
  height: 40px;
  float: left;
  margin-left: -20px;
  margin-right: 20px;
}
.non {
  width: 1182px;
  margin: 0 auto;
  position: relative;
  top: -350px;
  z-index: 99;
}
.non_ul {
  position: absolute;
  top: -16px;
  height: 350px;
  z-index: 99;
  width: 230px;
}
.non_ul > li {
  list-style: none;
  height: 49px;
  line-height: 49px;
  color: #fff;
  font-size: 14px;
  padding-left: 20px;
  background-color: #000;
  opacity: 0.65;
  border-bottom: 1px solid #1e1e1e;
  position: relative;
}
.non_ul li.active {
  background-color: #fff !important;
  color: #11a68d !important;
}
.non_ul span {
  position: absolute;
  right: 20px;
  top: -1px;
}
.stion {
  top: 0;
  position: absolute;
  z-index: 999;
  left: 270px;
  background-color: #fff;
  opacity: 0.95;
  height: 350px;
  box-shadow: 2px 0 5px rgba(0, 0, 0, 0.3);
}
.stion li {
  list-style: none;
}
.stion li > :hover {
  color: #11a68d;
}
.stion a {
  text-decoration: none;
  display: block;
  width: 130px;
  height: 50px;
  /* line-height: 50px; */
  color: #333;
  font-size: 14px;
}
.el-carousel__item:nth-child(2n + 1) {
  background-image: url("../assets/images/lunbo_1.png");
  background-repeat: no-repeat;
  background-size: 1920px 350px;
}
.el-carousel__item:nth-child(2n) {
  background-image: url("../assets/images/lunbo_2.jpg ");
  background-repeat: no-repeat;
  background-size: 1920px 350px;
}
/* el-main {
  position: relative;
}
.el-main {
  padding: 0;
} */
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
  margin-top: -13px;
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
  height: 375px;
  margin-top: -14px;
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
  list-style: none;
  margin: 20px 0;
}
.parer_list p:hover {
  cursor: pointer;
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
.year ul {
  margin-left: -38px;
  font-weight: 400;
}
/* .list_p {
  width: 3px;
  height: 3px;
  background-image: url("../assets/images/dian.png");
  background-repeat: no-repeat;
} */
.nian_p::before {
  content: "";
  width: 3px;
  height: 3px;
  background-image: url("../assets/images/dian.png");
  background-repeat: no-repeat;
  background-size: cover;
  display: inline-block;
  vertical-align: middle;
  margin-right: 4px;
}
.nian_s {
  font-size: 12px;
  height: 12px;
  line-height: 12px;
  letter-spacing: 3px;
  color: #11a68d;
  margin-left: 18px;
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
.bj div:nth-child(1):hover {
  cursor: pointer;
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
.tu_ul li:hover {
  cursor: pointer;
  color: #11a68d;
}
.bj_list {
  clear: both;
  margin-top: 20px;
}
.bj_list span:hover {
  cursor: pointer;
}
.cation {
  width: 1182px;
  margin: 0 auto;
}
.cat_p {
  font-size: 30px;
  height: 30px;
  line-height: 30px;
  text-align: center;
  color: #333;
  font-weight: 700;
  margin-bottom: 15px;
}
.cation_end {
  width: 40px;
  height: 4px;
  background-color: #11a68d;
  margin: 0 auto;
}
.accou_one {
  position: relative;
  width: 515px;
  float: left;
  padding-top: 30px;
}
.acc_cai {
  height: 59px;
  line-height: 30px;
}
.acc_img {
  width: 59px;
  height: 59px;
  float: left;
  margin-right: 20px;
  background-image: url("../assets/images/accoun01.png");
  background-repeat: no-repeat;
  background-size: 100%;
}
.acc_imga {
  width: 59px;
  height: 59px;
  float: left;
  margin-right: 20px;
  background-image: url("../assets/images/accoun02.png");
  background-repeat: no-repeat;
  background-size: 100%;
}
.acc_imgb {
  width: 59px;
  height: 59px;
  float: left;
  margin-right: 20px;
  background-image: url("../assets/images/accoun03.png");
  background-repeat: no-repeat;
  background-size: 100%;
}
.acc_imgc {
  width: 59px;
  height: 59px;
  float: left;
  margin-right: 20px;
  background-image: url("../assets/images/accoun04.png");
  background-repeat: no-repeat;
  background-size: 100%;
}
.acc_p p:nth-child(1) {
  font-size: 20px;
  color: #333;
  line-height: 20px;
  height: 20px;
  margin-bottom: -5px;
  padding-top: 8px;
}
.acc_p p:nth-child(2) {
  font-size: 14px;
  color: #666;
  line-height: 14px;
  height: 14px;
}
.acc_kuai {
  height: 104px;
  border-bottom: 1px solid #f0f0f0;
}
.acc_kuai span {
  height: 14px;
  line-height: 14px;
  margin-top: 21px;
  width: 126px;
  display: block;
  float: left;
  color: #333;
  font-size: 14px;
}
.acc_kuai span:hover {
  cursor: pointer;
  color: #11a68d;
}
.book {
  width: 1182px;
  margin: 0 auto;
  clear: both;
}
.book_p {
  padding-top: 60px;
  font-size: 30px;
  height: 30px;
  line-height: 30px;
  text-align: center;
  color: #333;
  font-weight: 700;
  margin-bottom: 15px;
}
.book_list {
  width: 40px;
  height: 4px;
  background-color: #11a68d;
  margin: 0 auto;
}
.book_h {
  font-size: 24px;
  line-height: 1.2;
  color: #333;
  font-weight: 700;
}
.book_s {
  margin-left: 12px;
  font-size: 12px;
  line-height: 20px;
  color: #666;
  font-weight: 400;
}
.school > div {
  position: relative;
  float: left;
  width: 380px;
  height: 140px;
}
.school .maxk:hover {
  cursor: pointer;
}
.gao {
  background-image: url("../assets/images/gaozhong.png");
  background-repeat: no-repeat;
  background-size: 100%;
}
.chu {
  margin-left: 20px;
  background-image: url("../assets/images/cchuzhong.png");
  background-repeat: no-repeat;
  background-size: 100%;
}
.xiao {
  margin-left: 20px;
  background-image: url("../assets/images/xiaoxue.png");
  background-repeat: no-repeat;
  background-size: 100%;
}
.school span {
  position: absolute;
  top: 50%;
  left: 50%;
  display: block;
  width: 80px;
  height: 40px;
  line-height: 40px;
  margin: -20px 0 0 -40px;
  font-size: 24px;
  color: #fff;
  text-align: center;
  font-weight: 700;
}
.maxk {
  position: absolute;
  right: 0;
  left: 0;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.4);
}
.coll {
  margin-top: -24px;
}
.coll > a {
  display: block;
  text-decoration: none;
  float: left;
  margin: 30px 0 0 20px;
  width: 178px;
  height: 70px;
  line-height: 70px;
  background-color: #fcfdfd;
  border-radius: 3px;
  border: solid 1px #00a78d;
  font-size: 18px;
  text-align: center;
  color: #666;
}
.coll > a:nth-child(6n + 1) {
  margin-left: 0px;
}
</style>
