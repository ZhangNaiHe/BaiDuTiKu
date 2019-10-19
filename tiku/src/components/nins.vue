
<template>
  <div class="ccc">
    <div
      :style="{height:height*lineNum + 'px'}"
      class="rollScreen_container"
      id="rollScreen_container"
    >
      <ul
        class="rollScreen_list"
        :style="{transform:transform}"
        :class="{rollScreen_list_unanim:num===0}"
      >
        <li
          class="rollScreen_once"
          v-for="(item,index) in contentArr"
          :key="index"
          :style="{height:height+'px'}"
        >
          <!-- <div class="lunbo-box"> -->
          <el-avatar
            class="lunbo-pictrue"
            style="float:left"
            src="../assets/images/xiaogou.jpg"
          ></el-avatar>
          <!-- </div> -->
          <div class="lunbo-li" >
            <span class="lunbo-name" v-for="(item,index) in contentName" :key="index">{{item}}</span>
            <span class="lunbo-span">{{item}}</span>
          </div>
        </li>
        <li
          class="rollScreen_once"
          v-for="(item,index) in contentArr"
          :key="index+contentArr.length"
          :style="{height:height+'px'}"
        >
          <el-avatar
            class="lunbo-pictrue"
            style="float:left"
            src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"
          ></el-avatar>
          <div class="lunbo-li" >
            <span class="lunbo-name" v-for="(item,index) in contentName" :key="index">{{item}}</span>
            <span class="lunbo-span">{{item}}</span>
          </div>
        </li>
        <li
          class="rollScreen_once"
          v-for="(item,index) in contentArr"
          :key="index"
          :style="{height:height+'px'}"
        >
          <!-- <div class="lunbo-box"> -->
          <el-avatar
            class="lunbo-pictrue"
            style="float:left"
            src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"
          ></el-avatar>
          <!-- </div> -->
          <div class="lunbo-li" >
            <span class="lunbo-name" v-for="(item,index) in contentName" :key="index">{{item}}</span>
            <span class="lunbo-span">{{item}}</span>
          </div>
        </li>
        <li
          class="rollScreen_once"
          v-for="(item,index) in contentArr"
          :key="index"
          :style="{height:height+'px'}"
        >
          <!-- <div class="lunbo-box"> -->
          <el-avatar
            class="lunbo-pictrue"
            style="float:left"
            src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"
          ></el-avatar>
          <!-- </div> -->
          <div class="lunbo-li" >
            <span class="lunbo-name" v-for="(item,index) in contentName" :key="index">{{item}}</span>
            <span class="lunbo-span">{{item}}</span>
          </div>
        </li>
        <li
          class="rollScreen_once"
          v-for="(item,index) in contentArr"
          :key="index"
          :style="{height:height+'px'}"
        >
          <!-- <div class="lunbo-box"> -->
          <el-avatar
            class="lunbo-pictrue"
            style="float:left"
            src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"
          ></el-avatar>
          <!-- </div> -->
          <div class="lunbo-li" >
            <span class="lunbo-name" v-for="(item,index) in contentName" :key="index">{{item}}</span>
            <span class="lunbo-span">{{item}}</span>
          </div>
        </li>
        <li
          class="rollScreen_once"
          v-for="(item,index) in contentArr"
          :key="index"
          :style="{height:height+'px'}"
        >
          <!-- <div class="lunbo-box"> -->
          <el-avatar
            class="lunbo-pictrue"
            style="float:left"
            src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png"
          ></el-avatar>
          <!-- </div> -->
          <div class="lunbo-li" >
            <span class="lunbo-name" v-for="(item,index) in contentName" :key="index">{{item}}</span>
            <span class="lunbo-span">{{item}}</span>
          </div>
        </li>
        
      </ul>
    </div>
  </div>
</template>
 
<script>
export default {
  props: {
    height: {
      default: 90,
      type: Number
    },
    lineNum: {
      default: 5,
      type: Number
    }
  },
  data: function() {
    return {
      contentArr: [
        "今天学了数列与不等式的综合等5个知识点"
        // "今天学了判断两个函数是否为同一函数等11个...",
        // "今天学了变量间的相关关系等2个知识点",
        // "今天学了规律的客观性和普遍性等9个知识点",
        // "今天学了圆的切线的性质定理的证明等2个知识点",
        // "今天学了导数的乘法与除法法则等4个知识点",
        // "今天学了圆锥曲线中的范围、最值问题等10..."
      ],
      contentName: [
        "ZhangNaiHe"
        // "ZhaoHeng",
        // "LiJiaPeng",
        // "YuJingYao",
        // "FanLianLian",
        // "GuanRui",
        // "WangMingRen",
        // "JiaJiongHui"
      ],
      num: 0
    };
  },
  computed: {
    transform: function() {
      return "translateY(-" + this.num * this.height + "px)";
    }
  },
  created: function() {
    let _this = this;
    setInterval(function() {
      if (_this.num !== _this.contentArr.length) {
        _this.num++;
      } else {
        _this.num = 0;
      }
    }, 3000);
  }
};
</script>
 
<style scoped>
/* .ccc {
  width: 310px;
  height: 364px;
  border: 1px solid red;
  margin-top: 50px;
} */
.rollScreen_container {
  width: 310px;
  height: 450px !important;
  /* display: inline-block; */
  position: relative;
  overflow: hidden;
  margin-left: 40px;
}
.rollScreen_list {
  transition: 1s linear;
  /* width: 380px;
  height: 506px; */
}
.rollScreen_list_unanim {
  transition: none;
}
.rollScreen_once {
  /* border-bottom: 1px solid black; */
  /* margin-top: 20px; */
  /* display: block; */
  /* width: 310px; */
  height: 45px !important;
  /* line-height: 3; */
  /* margin-bottom: 20px; */
  list-style: none;
  margin-left: -40px;
  margin-top: 45px;
}

.lunbo-span {
  display: block;
  margin-top: 0px;
  color: #333;
  font-size: 14px;
  /* margin-left: 100px; */
  font-size: 12px;
  /* line-height: 12; */
  padding-top: 8px;
}
/* .lunbo-box {
  width: 50px;
  height: 50px;
} */
.lunbo-picture {
  /* position: fixed; */
  display: line-block;
  /* margin-left:20px; */
  /* top: 20px; */
  line-height: 3;
}

.el-avatar--circle {
  float: left;
  /* border-radius: 50%;
  margin-top: 24px;
  margin-left: 24px; */
}

.lunbo-name {
  /* margin-right: -227px; */
  color: #333;
  font-size: 12px;
  /* margin-left: 102px; */
  /* float: left; */
  /* margin-top: -33px; */
}
</style>
