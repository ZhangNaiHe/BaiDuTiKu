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
          <router-link class="subject-demo" to="/mathmath">理科数学</router-link>
          <router-link class="subject-demo" to="/chinesemath">文科数学</router-link>
          <router-link class="subject-demo" to="/physics">物理</router-link>
          <router-link class="subject-demo" to="/chemistry">化学</router-link>
          <router-link class="subject-demo" to="/bios">生物</router-link>
          <router-link class="subject-demo" to="/politics">政治</router-link>
          <router-link class="subject-demo" to="/history">历史</router-link>
          <router-link class="subject-demo" to="/where">地理</router-link>
        </p>
        <div>
          <!-- 子组件显示 -->
          <router-view></router-view>
        </div>
      </div>
      <!-- 评论轮播图 -->
      <div class="pinglun">
        <chui-zhi></chui-zhi>
      </div>
    </div>
    <!-- 章节学习结束 -->

    <span class="headtext-two" style="font-size : 30px">试卷资源</span>
    <br />
    <span class="headtextthird" style="font-size : 10px">一考知底,高分必刷,全面提分</span>
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

    <div class="paper-box-sum">
      <div class="paper-box zhenti-box homepage-zhenti-box">
        <div class="paper-list-wrap">
          <h3 class="paper-title">
            历年真题
            <a class="list-more-link" href>更多真题试卷 &gt;</a>
          </h3>

          <ul class="paper-list paper-list-zhenti">
            <li class="list-item" v-for="(item,index) in paperonelist" :key="index">
              <p class="list-item-name">
                <a class="list-item-name-link" href>{{item.paper_name}}</a>
              </p>
              <p class="list-item-detail">
                <a class="list-item-link" href>解析</a>
                <span class="item-separate">|</span>
                <a href class="list-item-link">下载</a>
                <span class="item-separate">|</span>
                <a href class="list-item-link">估分</a>
              </p>
            </li>
          </ul>
        </div>
      </div>

      <div class="paper-box moni-box homepage-moni-box">
        <div class="paper-list-wrap">
          <h3 class="paper-title">
            模拟试卷
            <a class="list-more-link">更多模拟试卷 &gt;</a>
          </h3>

          <ul class="paper-list paper-list-moni">
            <li class="list-item" v-for="(item,index) in papertwolist" :key="index">
              <p class="list-item-name">
                <a class="list-item-name-link">{{item.paper_name}}</a>
              </p>
              <p class="list-item-detail">
                <a class="list-item-link">解析</a>
                <span class="item-separate">|</span>
                <a class="list-item-link">下载</a>
              </p>
            </li>
          </ul>
        </div>
      </div>

      <div class="homepage-paper-box shiti-box">
        <div class="hotpaper-list-wrap">
          <h3 class="hotpaper-title">
            热门试卷
            <a class="list-more-link">更多热门试卷 &gt;</a>
          </h3>
          <ul class="hotpaper-list">
            <li class="hotpaper-list-item" v-for="(item,index) in paperthreelist" :key="index">
              <a class="hotpaper-name">
                <span class="hotpaper-rank rank-1"></span>
                {{item.paper_name}}
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <div class="school-paper-main">
      <div class="school-paper-container homepage-school-container">
        <h3 class="school-container-title">
          名校精品试卷
          <a class="school-paper-more-link">更多名校精品卷 &gt;</a>
        </h3>

        <div class="school-list">
          <div class="school-list-item">
            <div class="school-wrap school-wrap-bg1">
              <a class="famous-school-link">
                <div class="school-info">
                  <p class="name">北京大学附属中学</p>
                  <p class="info">
                    <b>同地区推荐</b>
                    共
                    <span class="info-num">8</span>套试卷
                  </p>
                </div>
              </a>
            </div>

            <ul class="paper-wrap">
              <li class="paper-item">
                <a class="paper-item-name">语文 海淀区2016年高三期末试卷</a>
              </li>

              <li class="paper-item">
                <a class="paper-item-name">英语 海淀区2016年高三期末试卷</a>
              </li>

              <li class="paper-item">
                <a class="paper-item-name">理科数学 海淀区2016年高三期末试卷</a>
              </li>
            </ul>
          </div>

          <div class="school-list-item">
            <div class="school-wrap school-wrap-bg2">
              <a class="famous-school-link">
                <div class="school-info">
                  <p class="name">北京市第一零一中学</p>
                  <p class="info">
                    <b>同地区推荐</b>
                    共
                    <span class="info-num">1</span>套试卷
                  </p>
                </div>
              </a>
            </div>

            <ul class="paper-wrap">
              <li class="paper-item">
                <a class="paper-item-name">化学 海淀区2016年高三期末试卷</a>
              </li>
            </ul>
          </div>

          <div class="school-list-item school-list-item-lastchild">
            <div class="school-wrap school-wrap-bg3">
              <a class="famous-school-link">
                <div class="school-info">
                  <p class="name">北京市第四中学</p>
                  <p class="info">
                    <b>同地区推荐</b>
                    共
                    <span class="info-num">9</span>套试卷
                  </p>
                </div>
              </a>
            </div>

            <ul class="paper-wrap">
              <li class="paper-item">
                <a class="paper-item-name">语文 西城区2016年高三期末试卷</a>
              </li>

              <li class="paper-item">
                <a class="paper-item-name">英语 西城区2016年高三期末试卷</a>
              </li>

              <li class="paper-item">
                <a class="paper-item-name">理科数学 西城区2016年高三期末试卷</a>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="more-school-list">
        <a class="more-school-name">北京市八一学校</a>

        <a class="more-school-name">北京师范大学第二附属中学</a>

        <a class="more-school-name">东北师范大学附属中学</a>

        <a class="more-school-name">上海中学</a>

        <a class="more-school-name">衡水中学</a>

        <a class="more-school-name">南京外国语学校</a>

        <a class="more-school-name">成都市第七中学</a>
      </div>
    </div>
    <!-- </el-main> -->
    <!-- 中部结束 -->
    <el-footer></el-footer>
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
  height: 10000px;
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
  background-position: -940px -270px;
}

.withyou-box-score {
  background: url(../assets/images/timu2.png) no-repeat;
  display: block;
  float: left;
  width: 370px;
  height: 172px;
  color: #fff;
  position: relative;
  background-position: 0 -540px;
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
  margin-left: 44px;
  margin-top: 20px;
}

.subject-demo {
  color: #666;
  padding-bottom: 10px;
  margin-right: 30px;
  border-bottom: 4px solid transparent;
  height: 30px;
  line-height: 30px;
  padding-bottom: 5px;
}

.headtext-two {
  margin-left: 701px;
  font-weight: bold;
}

.headtextthird {
  margin-left: 700px;
}

.paper-box {
  float: left;
  padding: 39px;
  border: 1px solid #e6e6e6;
  background-color: #fafafa;
  margin-right: 20px;
  margin-top: 50px;
}
.paper-list-wrap {
  width: 320px;
}
.paper-title {
  font-size: 16px;
  height: 16px;
  line-height: 16px;
  font-weight: 700;
}

.paper-list-wrap .list-more-link {
  float: right;
  font-size: 12px;
  color: #666;
}

.list-item {
  margin: 20px 0;
}

.list-item-name {
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  padding-bottom: 10px;
  color: #333;
  font-size: 14px;
  height: 14px;
  line-height: 14px;
}

.list-item-name-link {
  cursor: pointer;
}

.list-item-detail {
  padding-left: 20px;
  color: #ccc;
  font-size: 12px;
  height: 12px;
  line-height: 12px;
}

.item-separate {
  margin: 0 10px;
}

.list-item-link {
  color: #41be89;
}
.hotpaper-list-wrap {
  width: 320px;
}
.shiti-box {
  float: left;
  padding: 39px;
  border: 1px solid #e6e6e6;
  background-color: #fafafa;
  margin-right: 20px;
  margin-top: 50px;
  /* margin-bottom: -18px; */
  height: 316px;
}

.hotpaper-list-wrap .hotpaper-list .hotpaper-name .rank-1 {
  background-position: 729px 811px;
}
.hotpaper-list-wrap .hotpaper-list .hotpaper-name .hotpaper-rank {
  margin-right: 10px;
  display: inline-block;
  width: 16px;
  height: 16px;
  background-image: url("../assets/choose.png");
  position: relative;
  top: 2px;
}

.hotpaper-list-wrap .list-more-link {
  float: right;
  font-size: 12px;
  color: #666;
}

.paper-box-sum {
  margin-left: 146px;
}

.hotpaper-list-item {
  height: 16px;
  line-height: 16px;
  margin-bottom: 26px;
}

.school-paper-main {
  clear: both;
  margin-bottom: 30px;
  margin-left: 177px;
}

.school-paper-container {
  border-top: 0;
  padding-top: 20px;
}

.school-container-title {
  font-size: 22px;
  height: 22px;
  line-height: 22px;
  font-weight: 700;
}

.school-container-title {
  padding-bottom: 15px;
  font-size: 20px;
  color: #333;
  height: 20px;
  line-height: 20px;
}

.school-paper-more-link {
  font-size: 12px;
  color: #666;
  float: right;
  margin-right: 165px;
}

.school-list-item {
  width: 370px;
  height: 226px;
  border: 1px solid #f0f0f0;
  float: left;
  margin-right: 30px;
}

.school-wrap-bg1 {
  background: url("../assets/schoolone.png");
}
.school-wrap-bg2 {
  background: url("../assets/schooltwo.png");
}
.school-wrap-bg3 {
  background: url("../assets/schoolthree.png");
}
.school-paper-container .school-list .school-list-item .school-wrap {
  width: 100%;
  height: 100px;
  position: relative;
}

.famous-school-link {
  display: inline-block;
  width: 100%;
  height: 100%;
}

.paper-wrap {
  font-size: 14px;
  color: #333;
  padding: 20px 0;
}

.school-paper-container
  .school-list
  .school-list-item
  .school-wrap
  .school-info {
  position: absolute;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
  margin-left: 30px;
}

.school-paper-container .school-list .school-list-item .paper-wrap .paper-item {
  padding: 0 30px;
  line-height: 14px;
  height: 14px;
  padding-bottom: 20px;
}

.school-paper-container
  .school-list
  .school-list-item
  .paper-wrap
  .paper-item
  .paper-item-name {
  color: #333;
  display: inline-block;
  width: 100%;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
}

.school-paper-container
  .school-list
  .school-list-item
  .paper-wrap
  .paper-item:last-child {
  padding-bottom: 4px;
}

.more-school-list {
  margin-left: -8px;
  max-height: 114px;
  clear: both;
  overflow: hidden;
  margin-left: 135px;
}

.more-school-list .more-school-name {
  margin-top: 20px;
  display: inline-block;
  padding: 0 10px;
  height: 35px;
  line-height: 35px;
  font-size: 14px;
  border: 1px solid #e6e6e6;
  color: #666;
  margin-left: 8px;
}
<<<<<<< Updated upstream
=======

.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 200px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}


.pinglun {
    width: 380px;
    height: 506px;
    background-color: red;
    float: right;
    margin-top: 20px;
    margin-right: 149px;
}
>>>>>>> Stashed changes
</style>