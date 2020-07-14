<template>
  <div class="tiku_tail">
    <div class="tail_top">
      <div class="first">
        <p class="first_p">百度题库</p>
        <ul class="first_one">
          <li>百度题库旨在为考生提供高效的智能备考服务，全面</li>
          <li>覆盖中小学财会类、建筑工程、职业资格、医卫类、</li>
          <li>计算机类等领域。拥有优质丰富的学习资料和备考全</li>
          <li>阶段的高效服务，助您不断前行！</li>
        </ul>
      </div>
      <div class="second">
        <p class="second_p">联系我们</p>
        <ul class="second_two">
          <li>
            <img src="../../public/img/人.png" class="img" />胡老师
          </li>
          <li>
            <img src="../../public/img/信息-信.png" alt /> tiku01@baidu.com
          </li>
          <li>
            <img src="../../public/img/企鹅.png" alt /> qq群:53811201
          </li>
        </ul>
      </div>
      <div class="third">
        <p class="third_p">投诉建议</p>
        <ul class="third_three">
          <li>
            <img src="../../public/img/问.png" alt />
            <a href>使用题库前必读</a>
          </li>
          <li>
            <img src="../../public/img/投诉.png" alt />
            <a href>投诉中心</a>
          </li>
          <li>
            <img src="../../public/img/信息.png" alt />
            <a href>意见反馈</a>
          </li>
        </ul>
      </div>
      <div class="fourth">
        <p class="fourth_p">合作机构</p>
        <a href>
          <img src="../../public/img/long.png" alt />
        </a>
        <a href>
          <img src="../../public/img/mu.png" alt />
        </a>
        <a href>
          <img src="../../public/img/wang.png" alt />
        </a>
        <a href>
          <img src="../../public/img/xi.png" alt />
          <br />
        </a>
        <a href>
          <img src="../../public/img/yi.png" alt />
        </a>
        <a href>
          <img src="../../public/img/yao.png" alt />
        </a>
      </div>
    </div>
    <div class="tail_bottom">
      <div class="font">
        <font class="f_font" color="#999999">
          京ICP证030173号&#8195;京网文[2013]0934-983号&#8195;Copyright&#8194;©&#8194;2018&#8194;Baidu&#8194;
          <a
            href
          >使用百度前必读</a>
        </font>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
.tiku_tail {
  /* width: 100%; */
  width: 1920px;
  margin-left: -20px;
  height: 248px;
  margin-top: 90px;
}
.tiku_tail ul {
  list-style: none;
}
.tiku_tail a {
  text-decoration: none;
}
.tail_top {
  width: 100%;
  height: 204px;
  background-color: #343f45;
}
.tail_bottom {
  width: 100%;
  height: 44px;
  text-align: center;
  background-color: #39464d;
}
.font {
  height: 15px;
  width: 501px;
  margin: 0 auto;
  padding-top: 10px;
}
.f_font {
  font-size: 12px;
  margin-left: -385px;
}
.f_font a {
  color: #809999;
}
.f_font a:hover {
  color: #149987;
}
.first {
  float: left;
  height: 100%;
  width: 529px;
  /* background-color: red; */
}
.second {
  float: left;
  height: 100%;
  width: 209px;
  /* background-color: blue; */
  border-left: 1px solid #39464d;
}
.third {
  float: left;
  height: 100%;
  width: 188px;
  /* background-color: aqua; */
  border-left: 1px solid #39464d;
}
.fourth {
  float: left;
  height: 100%;
  width: 550px;
  /* background-color: skyblue; */
  border-left: 1px solid #39464d;
}
.first_one {
  line-height: 24px;
  font-size: 14px;
  color: #cccccc;
  margin-left: 131px;
  margin-top: 16px;
}
.first_p {
  color: #149987;
  margin-left: 172px;
  margin-top: 30px;
}
.second_two {
  line-height: 24px;
  font-size: 14px;
  color: #cccccc;
  margin-left: -23px;
  margin-top: 16px;
}
.second_p {
  color: #149987;
  margin-left: 20px;
  margin-top: 30px;
}
.third_three{
  margin-left: -40px;
}
.third_three a {
  line-height: 26px;
  font-size: 14px;
  color: #cccccc;
  margin-left: 20px;
}
.third_three a:hover {
  color: #149987;
}
.third_p {
  color: #149987;
  margin-left: 30px;
  margin-top: 30px;
  margin-bottom: 15px;
}
.third_three img {
  margin-right: -16px;
  margin-left: 29px;
}
.fourth_p {
  color: #149987;
  margin-left: 50px;
  margin-top: 30px;
  margin-bottom: 15px;
}
.fourth img {
  margin-left: 52px;
}
</style>