\<template>
  <div class="r">
    <div class="recruit">
      <div class="recruit_content">
        <h2>高考题库•原创编审团</h2>
        <h1>
          原创试题编审团
          <span>招募令</span>
        </h1>
        <h3>用碎片时间精编专业知识&#8195;让千万师生平等提升自我</h3>
        <p>
          目前已有:
          <span>
            <div>
              <span>0</span>
            </div>
            <div>
              <span>4</span>
            </div>
            <div>
              <span>5</span>
            </div>
            <div>
              <span>3</span>
            </div>
          </span> 名老师参加
        </p>
        <div class="recruit_join">
          <span>立即加入</span>
        </div>
      </div>
    </div>
    <div class="recruit_dowhat">
      <h2>编审团成员将做什么？</h2>
      <img src="../../public/img/dowhat.png" alt />
    </div>
    <div class="recruit_getwhat">
      <h2>编审团成员将获得什么？</h2>
      <img src="../../public/img/getwhat.png" alt />
    </div>
    <div class="recruit_apply">
      <h2>如何申请？</h2>
      <ul class="apply_content">
        <li class="step1">
          <h2>第一步</h2>
          <h3>百度文库教师认证</h3>
          <span class="apply_btn1">立即认证</span>
        </li>
        <li class="step2">
          <h2>第二步</h2>
          <h3>加入原创试题编审团</h3>
          <span class="apply_btn2">立即申请</span>
        </li>
        <li class="step3">
          <h2>第三步</h2>
          <h3>加入原创编审团Q群</h3>
          <span class="apply_btn3">加入Q群申领编审权限</span>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
.recruit {
  position: relative;
  width: 100%;
  height: 564px;
  background: url("../../public/img/zhaomubackground.png");
}
.recruit_content {
  padding-top: 55px;
  text-align: center;
  width: 1200px;
  margin: 0 auto;
  /* background-color: skyblue; */
}
.recruit_content h2 {
  color: white;
  font-weight: 300;
  font-size: 44px;
}
.recruit_content h1 {
  margin-top: 55px;
  color: white;
  font-size: 70px;
}
.recruit_content h1 span {
  color: #11a68d;
}
.recruit_content h3 {
  margin-top: 20px;
  font-size: 22px;
  color: white;
  font-weight: 400;
}
.recruit_content p {
  margin-top: 65px;
  color: #fa776b;
  font-size: 22px;
}
.recruit_content p div {
  width: 23px;
  height: 27px;
  display: inline-block;
  background: url("../../public/img/zhaomu.png") no-repeat;
  margin-left: 5px;
}
.recruit_content p div span {
  color: white;
}
.recruit_join {
  position: relative;
  width: 413px;
  height: 75px;
  margin: 34px auto 0;
  text-align: center;
  background-color: #fa776b;
  border-radius: 6px;
}
.recruit_join span {
  line-height: 70px;
  color: white;
  font-size: 29px;
}
.recruit_join:hover {
  background-color: #fd9084;
}
.recruit_dowhat {
  width: 100%;
  height: 360px;
  background-color: #fff;
}
.recruit_dowhat img {
  display: block;
  margin: 0 auto;
}
.recruit_dowhat h2 {
  margin-top: 70px;
  margin-bottom: 40px;
  text-align: center;
  font-size: 32px;
  font-weight: 400;
}
.recruit_getwhat {
  width: 100%;
  height: 460px;
  background-color: #f5f5f5;
  padding-top: 70px;
}
.recruit_getwhat img {
  display: block;
  margin: 0 auto;
}
.recruit_getwhat h2 {
  margin-bottom: 50px;
  text-align: center;
  font-size: 32px;
  font-weight: 400;
}
.recruit_apply {
  width: 100%;
  height: 500px;
}
.recruit_apply h2 {
  margin-top: 70px;
  margin-bottom: 40px;
  text-align: center;
  font-size: 32px;
  font-weight: 400;
}
.apply_content {
  margin-left: 160px;
  width: 1221px;
}
.apply_content li {
  float: left;
  width: 384px;
  height: 258px;
  margin-right: 21px;
  border: 1px solid #e3e3e3;
  padding-top: 10px;
}
.step1 {
  background: url("../../public/img/step1.png") no-repeat;
  background-position: 21px 0px;
}
.step2 {
  background: url("../../public/img/step2.png") no-repeat;
  background-position: 21px 0px;
}
.step3 {
  background: url("../../public/img/step3.png") no-repeat;
  background-position: 21px 0px;
}
.apply_content .step1 h2 {
  margin-top: 30px;
  font-size: 30px;
  font-weight: 700;
  color: #333;
}
.apply_content .step2 h2 {
  margin-top: 30px;
  font-size: 30px;
  font-weight: 700;
  color: #333;
}
.apply_content .step3 h2 {
  margin-top: 30px;
  font-size: 30px;
  font-weight: 700;
  color: #333;
}
.apply_content h3 {
  margin-top: -20px;
  font-size: 28px;
  color: #333;
  text-align: center;
  font-weight: 400;
}
.apply_btn1 {
  display: block;
  margin: 30px auto 0;
  background-color: #fa776b;
  color: #fff;
  font-size: 30px;
  line-height: 75px;
  border-radius: 5px;
  text-align: center;
  cursor: pointer;
  letter-spacing: -2px;
  width: 342px;
  height: 75px;
}
.apply_btn1:hover{
  background-color: #fd9084;
}
.apply_btn2 {
  display: block;
  margin: 30px auto 0;
  background-color: #e2e2e2;
  color: #fff;
  font-size: 30px;
  line-height: 75px;
  border-radius: 5px;
  text-align: center;
  cursor: pointer;
  letter-spacing: -2px;
  width: 342px;
  height: 75px;
}
.apply_btn3 {
  display: block;
  margin: 30px auto 0;
  background-color: #e2e2e2;
  color: #fff;
  font-size: 30px;
  line-height: 75px;
  border-radius: 5px;
  text-align: center;
  cursor: pointer;
  letter-spacing: -2px;
  width: 342px;
  height: 75px;
}
</style>