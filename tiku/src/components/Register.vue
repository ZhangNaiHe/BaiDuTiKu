<template>
  <div class="Register">
    <div class="reg-top">
      <a href>
        <img src="../assets/jjh-bd_logo1.png" alt />
        <div>|</div>
        <div>注册百度账号</div>
      </a>
      <div class="reg-login">
        <div>我已注册，现在就</div>
        <button>登录</button>
      </div>
    </div>
    <!-- 表单 -->
    <div class="reg-form">
      <el-form label-width="80px" :model="regForm" :rules="regRules" ref="regRef">
        <el-form-item label="用户名" prop="username">
          <el-input v-model="regForm.username" placeholder="请设置用户名"></el-input>
        </el-form-item>
        <el-form-item label="手机号" prop="phone">
          <el-input v-model="regForm.phone" placeholder="可用于登录和找回密码"></el-input>
        </el-form-item>
        <el-form-item label="密码" prop="password">
          <el-input v-model="regForm.password" placeholder="请设置密码"></el-input>
        </el-form-item>
        <!-- <div class="el-form-last"> -->
        <el-form-item label="验证码" prop="number">
          <el-input class="item-yzm" v-model="regForm.number" placeholder="请输入验证码"></el-input>
          <el-button class="item-yzm-num" @click="getPhone">获取短信验证码</el-button>
        </el-form-item>
        <!-- </div> -->

        <!-- `checked` 为 true 或 false -->
        <el-checkbox v-model="checked">
          阅读并接受
          <a href>《百度用户协议》</a>
          及
          <a href>《百度隐私权保护声明》</a>
        </el-checkbox>
        <el-button class="btn-reg" @click="register">注册</el-button>
        <a href class="kefu">如需帮助，请点击人工客服</a>
      </el-form>
    </div>

    <div class="reg-foot">
      <div>2019 ©Baidu</div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      checked: false,
      regForm: {
        username: "111",
        phone: "13389259491",
        password: "111",
        number: "123456"
      },
      coodss: "",
      regRules: {
        username: [
          // required 是否必须
          // message 如果没有填写 会在输入框下面出现这句话
          // trigger: 怎样的条件下触发  blur失去焦点的时候
          { required: true, message: "请输入您的用户名", trigger: "blur" },
          {
            min: 3,
            max: 18,
            message: "用户名长度在 3 到 18个字符之间",
            trigger: "blur"
          }
        ],
        // number: [
        //   // required 是否必须
        //   // message 如果没有填写 会在输入框下面出现这句话
        //   // trigger: 怎样的条件下触发  blur失去焦点的时候
        //   { required: true, message: "请输入您的用户名", trigger: "blur" },
        //   {
        //     min: 11,
        //     max: 11,
        //     message: "用户名长度在 11个字符",
        //     trigger: "blur"
        //   }
        // ],
        password: [
          { required: true, message: "请输入您的密码", trigger: "blur" },
          {
            min: 3,
            max: 18,
            message: "密码长度在 6 到 18个字符之间",
            trigger: "blur"
          }
        ]
        // phone: [
        //   { required: true, message: "请输入您的密码", trigger: "blur" },
        //   {
        //     min: 3,
        //     max: 18,
        //     message: "密码长度在 6 到 18个字符之间",
        //     trigger: "blur"
        //   }
        // ]
      }
    };
  },
  methods: {
    // 验证码
    async getPhone() {
      console.log(this.regForm.phone);
      let { data: res } = await this.$http.post("dunx", {
        phone: this.regForm.phone
      });
      if (res.code == 200) {
        this.coodss = res.verificationcode;
        console.log(this.coodss);
        return this.$message.success(res.verificationcode);
      }
    },
    // 注册
    register() {
      this.$refs.regRef.validate(async valid => {
        if (!valid) return false;
        // console.log(123123);
        let { data: res } = await this.$http.post("user_register", {
          username: this.regForm.username,
          password: this.regForm.password
        });
        console.log(res);
        if (res.code == 200) {
          if (this.regForm.number == this.coodss) {
            this.$router.push("/login");
            return this.$message.success("验证码正确");
            return this.$message.success(res.message);
          } else {
            return this.$message.error("验证码错误");
          }
        }
      });
    }
  }
};
</script>

<style>
.Register {
  width: 1100px;
  margin: auto;
}

.reg-top {
  margin: 0 auto;
  width: 1180px;
  height: 83px;
  padding-right: 85px;
  padding-left: 90px;
  /* background-color: blueviolet; */
  border-bottom: 1px solid #f5f5f5;
  box-shadow: 10px 20px 15px -30px #5e5e5e;
  box-sizing: border-box;
}

.reg-top a {
  display: inline-block;
  width: 330px;
  height: 80px;
  line-height: 80px;
}

.reg-top > a > img {
  float: left;
  width: 172px;
  height: 80px;
}

.reg-top > a > div {
  float: left;
  /* width: 172px; */
  /* display: inline-block; */
  height: 80px;
  margin-right: 10px;
  line-height: 110px;
  font-size: 18px;
  color: #666666;
  font-family: Tahoma, Helvetica, "Microsoft Yahei", 微软雅黑, Arial, STHeiti;
  box-sizing: border-box;
}

.reg-login {
  float: right;
  /* width: 165px; */
  height: 100%;
  line-height: 110px;
  color: #666666;
  font-size: 18px;
  font-family: Tahoma, Helvetica, "Microsoft Yahei", 微软雅黑, Arial, STHeiti;
}

.reg-login > div {
  /* width: 64px; */
  display: inline-block;
  height: 32px;
  line-height: 35px;
  margin-right: 6px;
  /* margin-top: 10px; */
  color: #666666;
  font-size: 13px;
  font-family: Tahoma, Helvetica, "Microsoft Yahei", 微软雅黑, Arial, STHeiti;
  /* box-sizing: border-box; */
}

.reg-login > button {
  width: 64px;
  height: 32px;
  border-radius: 5px;
  border: 1px solid #dddddd;
  color: #666666;
  background-color: #f7f7f7;
  font-family: Tahoma, Helvetica, "Microsoft Yahei", 微软雅黑, Arial, STHeiti;
}

.reg-form {
  width: 1100px;
  margin-top: 60px;
}

.el-form {
  width: 720px;
  padding-left: 103px;
  /* background-color: palevioletred; */
  box-sizing: border-box;
}

.el-form-item {
  width: 428px;
}

/* .el-form-last {
  width: 428px;
} */

.item-yzm {
  width: 177px;
}

.item-yzm-num {
  /* display: inline-block; */
  float: right;
  width: 160px;
  height: 40px;
  color: #666666;
}

.el-checkbox {
  margin-left: 80px;
}

a {
  text-decoration: none;
}

.btn-reg {
  display: block;
  width: 350px;
  height: 50px;
  margin-left: 80px;
  margin-top: 20px;
  margin-bottom: 16px;
  color: #ffffff;
  background-color: #3f89ec;
  border: 0;
  border-radius: 3px;
}

.kefu {
  margin-left: 20px;
  font-size: 12px;
}

.reg-foot {
  width: 100%;
  margin: auto;
  margin-top: 78px;
  margin-left: 49px;
  text-align: center;
  font-size: 12px;
  color: #7a77c8;
}
</style>