<template>
<el-container>
  <!-- 头部开始 -->
  <el-header>
    <!-- **************** -->
  </el-header>
  <!-- 头部结束 -->
  <el-main>
    <!-- 轮播图start -->
    <!-- ************** -->
  <!-- 轮播图end -->

  <!-- 中部start -->
  <el-card class="box-card">
      <el-span class="headtext" style="font-size : 30px">伴您走过</el-span><br>
      <el-span class="headtexttwo" style="font-size : 10px">学习中每一个阶段</el-span>
<div class="tag-group">
  <el-tag
    v-for="item in items"
    :key="item.label"
    :type="item.type"
    effect="dark"
    class="headdiv">
    {{ item.label }}
  </el-tag>
</div>

      <div class="withyou-main">
        	<a class="withyou-box withyou-box-learn log-withyou-box " href="" data-info="kp">
        		<div class="box-title">
        			<p class="box-title-name">章节学习</p>
        			<p class="box-title-detail">考点各个击破</p>
        			<div class="box-title-bg"></div>
        		</div>
        		<p class="box-content">串考点<span class="box-content-icon iconfont icon-right"></span></p>
        	</a>
        	<a class="withyou-box withyou-box-paper log-withyou-box " href="" data-info="zhenti">
        		<div class="withyou-box-mod-triangle">
        			<div class="triangle-border"></div>
        			<div class="triangle-inset"></div>
        		</div>
        		<div class="box-title">
        			<p class="box-title-name">真题模拟</p>
        			<p class="box-title-detail">巩固核心重点</p>
        			<div class="box-title-bg"></div>
        		</div>
        		<p class="box-content">练重点<span class="box-content-icon iconfont icon-right"></span></p>
        	</a> 
        	<a class="withyou-box withyou-box-score log-withyou-box " href="" data-info="yuce">
        		<div class="withyou-box-mod-triangle">
        			<div class="triangle-border"></div>
        			<div class="triangle-inset"></div>
        		</div>
        		<div class="box-title">
        			<p class="box-title-name">考前押题</p>
        			<p class="box-title-detail">成功斩获得分数</p>
        			<div class="box-title-bg"></div>
        		</div>
        		<p class="box-content">去冲刺<span class="box-content-icon iconfont icon-right"></span></p>
        	</a>
        </div>

</el-card>





  </el-main>
  <el-footer>Footer</el-footer>
</el-container>
</template>
 <script>
export default {
      data() {
      return {
        items: [
          { type: 'success' },
        ]
      }
    }
};
</script>

<style>
.el-header {
    padding: 0px 0px;
}
.headtext {
  margin-left:694px;
  font-weight:bold;
}
.headtexttwo {
  margin-left:714px;
}
.headdiv {
  width:10px;
  height: 10px;
  background-color: green;
}

.headdiv {
    width: 70px;
    height: 5px;
    margin-left: 719px;
}
.el-main {
  padding : 0;
}

.withyou-container .withyou-main {
    padding-top: 20px;
    height: 170px;
    padding-bottom: 25px;
    border-bottom: 1px solid #e6e6e6;
}

.withyou-box-learn {
    background: url(../assets/images/timu1.png) no-repeat;
    display: block;
    float: left;
    width: 370px;
    height: 172px;
    color: #fff;
    position: relative;
    margin-right:35px;
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
  margin-left:160px;
}

 .box-title-name {
    font-size: 30px;
    padding-bottom: 11px;
    line-height: 30px;
    height: 0px;
}

.box-title-detail {
    font-size: 14px;
    line-height: 15px;
    height: 14px;
}

/* .withyou-container .withyou-main .withyou-box-paper {
    
} */



</style>