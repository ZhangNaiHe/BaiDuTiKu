<template>
  <!-- 顶部导航兰 -->
  <div class="headnav">
    <!-- 导航栏 -->
    <div class="nav">
      <a href>
        <span class="logo"></span>
      </a>
      <!-- 人像 -->
      <div class="contain_login">
        <div class="login_container">
          <img src="../../public/img/head_bg.jpg" class="user_photo" />
        </div>
        <div class="shezhi"></div>
      </div>
      <!-- 重叠 -->
      <div class="chong">
        <div class="head">
          <img src="../../public/img/head_bg.jpg" alt class="phone" />
        </div>
        <div class="wenzi">
          <a href="/my">我的首页</a>
          <a href="/logout">退出</a>
        </div>
      </div>
      <ul class="nav_ul">
        <li class="first">
          职业资格类
          <i class="Tub"></i>
        </li>
        <div class="scend">
          <ul class="headss">
            <li>
              <a href="/Society">社会工作师</a>
            </li>
            <li>
              <a href="/Company">企业法律顾问</a>
            </li>
            <li>
              <a href="/Teacher">教师资格证</a>
            </li>
            <li>
              <a href="/Assistant-society">助理社会工作师</a>
            </li>
          </ul>
        </div>
        <li class="first">
          建筑类
          <i class="Tub"></i>
        </li>
        <div class="scend">
          <ul class="headss">
            <li>
              <a href="/One-constructor">一级建造师</a>
            </li>
            <li>
              <a href="/Two-constructor">二级建造师</a>
            </li>
          </ul>
        </div>
        <li class="first">
          学历类
          <i class="Tub"></i>
        </li>
        <div class="scend">
          <ul class="headss">
            <li>
              <a href="/Research">考研</a>
            </li>
            <li>
              <a href="/College">高考</a>
            </li>
          </ul>
        </div>
        <li class="first">
          财会类
          <i class="Tub"></i>
        </li>
        <div class="scend">
          <ul class="headss">
            <li>
              <a href="/Accounting-work">会计从业资格</a>
            </li>
            <li>
              <a href="/Semi-senior">中级会计师</a>
            </li>
            <li>
              <a href="/CPA">注册会计师CPA</a>
            </li>
            <li>
              <a href="/Intermediate-economist">中级经济师</a>
            </li>
            <li>
              <a href="/Junior-accountant">初级会计师</a>
            </li>
          </ul>
        </div>
        <li class="first">
          医药类
          <i class="Tub"></i>
        </li>
        <div class="scend">
          <ul class="headss">
            <li>
              <a href="/Clinical-practitioner">临床执业医师</a>
            </li>
            <li>
              <a href="/Clinical-assistant">临床助理医师</a>
            </li>
            <li>
              <a href="/Chinese-medicine">执业中药师</a>
            </li>
            <li>
              <a href="/Western-medicine">执业西药师</a>
            </li>
            <li>
              <a href="/Nurse-qualification">护士资格</a>
            </li>
          </ul>
        </div>
        <li class="first alltest">
          全部考试
          <i class></i>
        </li>
        <div class="scend_all">
          <!-- 左侧div -->
          <div class="left">
            <ul class="headss_all">
              <li>
                <div class="sma-qu sma-qu0"></div>职业资格类
              </li>
              <li>
                <div class="sma-qu1 sma-qu"></div>建筑类
              </li>
              <li>
                <div class="sma-qu2 sma-qu"></div>学历类
              </li>
              <li>
                <div class="sma-qu3 sma-qu"></div>财会类
              </li>
              <li>
                <div class="sma-qu4 sma-qu"></div>计算机类
              </li>
              <li>
                <div class="sma-qu5 sma-qu"></div>公务员
              </li>
              <li>
                <div class="sma-qu6 sma-qu"></div>医药类
              </li>
            </ul>
          </div>
          <!-- 右侧div -->
          <div class="right">
            <ul>
              <li>
                <a href="/Society">社会工作师</a>
              </li>
              <li>
                <a href="/Company">企业法律顾问</a>
              </li>
              <li>
                <a href="/Teacher">教师资格证</a>
              </li>
              <li>
                <a href="/Assistant-society">助理社会工作师</a>
              </li>
            </ul>
            <ul>
              <li>
                <a href="/One-constructor">一级建造师</a>
              </li>
              <li>
                <a href="/Two-constructor">二级建造师</a>
              </li>
            </ul>
            <ul>
              <li>
                <a href="/Research">考研</a>
              </li>
              <li>
                <a href="/College">高考</a>
              </li>
            </ul>
            <ul>
              <li>
                <a href="/Accounting-work">会计从业资格</a>
              </li>
              <li>
                <a href="/Semi-senior">中级会计师</a>
              </li>
              <li>
                <a href="/CPA">注册会计师CPA</a>
              </li>
              <li>
                <a href="/Intermediate-economist">中级经济师</a>
              </li>
              <li>
                <a href="/Junior-accountant">初级会计师</a>
              </li>
            </ul>
            <ul>
              <li>
                <a href="/Computer-level">计算机四级</a>
              </li>
            </ul>
            <ul>
              <li>
                <a href="/Police-test">警察招考</a>
              </li>
              <li>
                <a href="/Police-officers">政法干警</a>
              </li>
              <li>
                <a href="/National-exam">国考</a>
              </li>
            </ul>
            <ul>
              <li>
                <a href="/Clinical-practitioner">临床执业医师</a>
              </li>
              <li>
                <a href="/Clinical-assistant">临床助理医师</a>
              </li>
              <li>
                <a href="/Chinese-medicine">执业中药师</a>
              </li>
              <li>
                <a href="/Western-medicine">执业西药师</a>
              </li>
              <li>
                <a href="/Nurse-qualification">护士资格</a>
              </li>
            </ul>
          </div>
        </div>
      </ul>
    </div>
  </div>
</template>


<script>
import Botton from "../components/Botton.vue";
export default {

}
</script>


<style scoped>
* {
  margin: 0;
  padding: 0;
}

.headnav {
  height: 46px;
  background-color: #0f9982;
  font-size: 14px;
  color: #fff;
}

.nav {
  width: 1180px;
  height: 46px;
  line-height: 46px;
  background-color: #0f9982;
  margin: auto;
}

.nav a {
  text-decoration: none;
  color: #333333;
}

.nav_ul .first:hover {
  background-color: #fff;
  /* height: 20px; */
  color: #0f9982;
}

.logo {
  margin-top: 7.5px;
  margin-left: -8px;
  width: 100px;
  height: 31px;
  float: left;
  background-image: url(../../public/img/BaiDuTK.png);
}

.contain_login {
  position: relative;
  float: right;
  height: 46px;
  text-align: center;
}

.chong {
  display: none;
  width: 75px;
  height: 110px;
  background-color: rgba(0, 0, 0, 0.7);
  position: absolute;
  top: 0px;
  right: 174px;
}

.head {
  width: 75px;
  height: 46px;
}

.wenzi {
  width: 75px;
  height: 100px;
}
.contain_login:hover + .chong {
  display: block;
}

.chong:hover {
  display: block;
}

.wenzi a:hover {
  color: #0f9982;
}

.wenzi a {
  display: block;
  height: 30px;
  line-height: 30px;
  color: #fff;
  font-size: 12px;
  text-align: center;
}
.phone {
  width: 30px;
  height: 30px;
  margin-top: 8px;
  margin-right: 8px;
  margin-left: 23px;
}

.login_container {
  height: 46px;
  cursor: pointer;
  padding: 0 10px;
  height: 100%;
}

.user_photo {
  width: 30px;
  height: 30px;
  margin-top: 8px;
  margin-right: 8px;
}

.nav_ul {
  list-style: none;
  float: right;
  margin-right: 25px;
}

.nav_ul li {
  float: left;
  width: 100px;
  text-align: center;
  cursor: pointer;
}

.nav_ul > li {
  line-height: 46px;
}

.headss {
  margin-left: 170px;
}

.headss li {
  color: #333333;
  list-style: none;
  margin-right: 18px;
}

.scend {
  width: 100%;
  height: 45px;
  position: absolute;
  left: 0;
  top: 46px;
  display: none;
  box-shadow: 0 0 5px rgb(163, 163, 163);
  background-color: #fff;
}

.scend:hover {
  display: block;
}

.left {
  position: relative;
  width: 100px;
  margin-left: 213px;
}
.left ul {
  list-style: none;
  display: block;
  text-align: left;
}
.left ul li {
  color: rgb(151, 153, 155);
  font-size: 14px;
  height: 40px;
  text-align: left;
  cursor: pointer;
}

.right a {
  display: block;
}

.right ul li:hover {
  color: #149997;
}

.right {
  position: absolute;
  top: 0px;
  left: 301px;
}

.scend_all {
  position: relative;
  z-index: 999;
}


/* 社会工作师div */
.right > ul {
  display: block;
  width: 700px;
  height: 40px;
  line-height: 40px;
  list-style: none;
  color: #333333;
}
.right > ul > li {
  width: 115px;
}

.sma-qu {
  width: 11px;
  height: 11px;
  background-color: #0f9982;
  position: absolute;
  left: -18px;
  border-radius: 2px;
}
.sma-qu0 {
  top: 17px;
}

.sma-qu1 {
  top: 56px;
}

.sma-qu2 {
  top: 97px;
}

.sma-qu3 {
  top: 138px;
}

.sma-qu4 {
  top: 178px;
}

.sma-qu5 {
  top: 217px;
}

.sma-qu5 {
  top: 217px;
}

.sma-qu6 {
  top: 258px;
}

.scend li {
  color: #333333;
}

.scend li a:hover {
  color: #149987;
}

.first:hover + .scend {
  display: block;
}

.first:hover {
  height: 45.7px;
}

.scend_all {
  height: 285px;
  background-color: #fff;
  width: 100%;
  position: absolute;
  left: 0;
  top: 46px;
  display: none;
  box-shadow: 0 0 5px rgb(163, 163, 163);
}

.alltest:hover + .scend_all {
  display: block;
}

.scend_all:hover {
  display: block;
}

.scend_all a:hover {
  color: #0f9982;
}

.rentou {
  margin-top: 7px;
}

.first {
  position: relative;
}

.Tub {
  width: 14px;
  height: 14px;
  font-size: 12px;
  margin-top: 15px;
  /* margin-left: 4px; */
  position: absolute;
  background: url("../../public/img/down.png") no-repeat;
}

.rentou-li {
  width: 40px;
}
</style>