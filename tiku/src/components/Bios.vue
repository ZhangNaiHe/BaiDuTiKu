<template>
<div class="box">
<ul class="chapterlist-container">
  <li class="chapterlist-item" v-for='(item,index) in mathlist' :key="index">
      <p class="chapterlist-item-name">
          <a class="chapterlist-item-name-link" href="">
          <span>{{item.structure_chapter}} </span>
          <!-- <span>集合与常用逻辑用语</span> -->
          </a>
          </p>
          <p class="chapterlist-detail">
              <span>
                  21
            </span>
              知识点 | 
              <span>
                  2295
                  </span>
                  试题</p>
                  <a class="chapterlist-item-btn" href="">
                      开始学习
                      </a>
                      </li>
</ul>
</div>
</template>
<script>
export default {
    data() {
        return {
            mathlist:[]
        }
    },
    methods:{
      async getMathlist(){
            const {data:res} = await this.$http.get('bigstudy');
            this.mathlist = res.data.Biology;
            console.log(this.mathlist);            
        }
    },
    created(){
        this.getMathlist();
    }
}
</script>>


<style>
.box {
    width: 778px;
    border: 1px solid #e6e6e6;
    background: #fff;
    float: left;
    margin-right: 20px;
    margin-top: 20px;
    margin-left: -282px;
}
.chapterlist-container {
    margin: 0 20px;
    /* height: 504px; */
}
.chapterlist-container .chapterlist-item {
    position: relative;
    padding: 29px 0;
    border-bottom: 1px solid #f0f0f0;
    color: #333;
}
.chapterlist-item {
    position: relative;
    padding: 29px 0;
    border-bottom: 1px solid #f0f0f0;
    color: #333;
}
.chapterlist-container .chapterlist-item .chapterlist-item-name {
    font-size: 16px;
    line-height: 16px;
    height: 16px;
    margin-bottom: 12px;
}
.chapterlist-container .chapterlist-item .chapterlist-detail {
    font-size: 12px;
    line-height: 14px;
    height: 14px;
}
.chapterlist-container .chapterlist-item .chapterlist-item-btn {
    display: inline-block;
    width: 118px;
    height: 38px;
    border: 1px solid #f0f0f0;
    line-height: 38px;
    position: absolute;
    top: 30px;
    right: 0;
    text-align: center;
    color: #333;
    font-size: 14px;
}
</style>