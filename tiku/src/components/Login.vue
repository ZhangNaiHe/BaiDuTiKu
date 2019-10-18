<template>
  <div class="Login">
    <el-dialog :visible.sync="dialogVisible">
      <div class="top-img">
        <img src="../assets/jjh-loginlogo.png" alt />
        <span class="login-user">用户名密码登录</span>
      </div>
      <!-- 表单 -->
      <el-form
        :model="loginForm"
        :rules="loginRules"
        ref="loginRef"
        status-icon
        class="demo-ruleForm"
      >
        <el-form-item prop="username">
          <el-input v-model="loginForm.username" placeholder="手机/邮箱/用户名">
            <i slot="prefix" class="el-input__icon el-icon-user"></i>
          </el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input v-model="loginForm.password" placeholder="密码" autocomplete="off">
            <i slot="prefix" class="el-input__icon el-icon-lock"></i>
          </el-input>
        </el-form-item>
        <!-- `checked` 为 true 或 false -->
        <el-checkbox v-model="checked">下次自动登录</el-checkbox>
        <div class="lg-login" @click="login">登录</div>
        <div class="fget">
          <span>忘记密码？</span>
          <span class="fget2">短信快捷登录</span>
        </div>
      </el-form>
      <div class="footer">
        <a href class="footer-sm">扫码登录 |</a>
        <span class="footer-img1">
          <!-- <img class="img1" src="../assets/jjh-login.png" alt /> -->
        </span>
        <span class="footer-img2">
          <!-- <img class="img2" src="../assets/jjh-login.png" alt /> -->
        </span>
        <span class="footer-img3">
          <!-- <img class="img3" src="../assets/jjh-login.png" alt /> -->
        </span>
        <a href="./register" class="footer-zc">立即注册</a>
      </div>
    </el-dialog>
  </div>
</template>

<script>
//node request模块安装命令：npm install request
var request = require("request");
var querystring = require("querystring");

var queryData = querystring.stringify({
  mobile: "13429667914", // 接受短信的用户手机号码
  tpl_id: "111", // 您申请的短信模板ID，根据实际情况修改
  tpl_value: "#code#=1235231", // 您设置的模板变量，根据实际情况修改
  key: "您申请的ApiKey" // 应用APPKEY(应用详细页查询)
});

var queryUrl = "http://v.juhe.cn/sms/send?" + queryData;

request(queryUrl, function(error, response, body) {
  if (!error && response.statusCode == 200) {
    console.log(body); // 打印接口返回内容

    var jsonObj = JSON.parse(body); // 解析接口返回的JSON内容
    console.log(jsonObj);
  } else {
    console.log("请求异常");
  }
});

export default {
  data() {
    return {
      dialogVisible: true,
      checked: true,
      loginForm: {
        username: "admin",
        password: "123456"
      },
      loginRules: {
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
        password: [
          { required: true, message: "请输入您的密码", trigger: "blur" },
          {
            min: 3,
            max: 18,
            message: "密码长度在 6 到 18个字符之间",
            trigger: "blur"
          }
        ]
      }
    };
  },
  methods: {
    login() {
      this.$refs.loginRef.validate(async valid => {
        if (!valid) return false;
        let { data: res } = await this.$http.post("user_login", this.loginForm);
        console.log(res);
        if (res.code == 200) {
          
          window.sessionStorage.setItem("token",res.data.token);
          this.$router.push("/");
          return this.$message.success(res.message);
        }
        if (res.code == 400) {
          window.sessionStorage.removeItem("token")
          return this.$message.error(res.message);
        }
      });
    }
  }
};
</script>

<style>
.el-dialog {
  width: 360px;
  height: 408px;
}
.el-dialog__header {
  padding: 20px 20px 10px;
}

.el-dialog__body {
  padding: 0;
  margin-top: -5px;
  /* margin-left: 28px; */
}
.top-img {
  margin-left: 28px;
}
.login-user {
  font-size: 16px;
  padding-left: 12px;
  color: #000;
}
.demo-ruleForm {
  width: 302px;
  height: 240px;
  margin-top: 40px;
  margin-left: 28px;
  margin-bottom: 7px;
  font-size: 14px;
  color: #666;
}

.el-form-item {
  margin-top: 16px;
  margin-bottom: 0px;
}

.el-checkbox {
  margin-top: 15px;
  font-size: 12px;
}

.lg-login {
  width: 300px;
  height: 40px;
  margin-top: 10px;
  background-color: #2fad85;
  line-height: 40px;
  text-align: center;
  color: aliceblue;
  font-size: 14px;
  font-family: Microsoft YaHei;
}

.fget {
  width: 300px;
  margin-top: 10px;
  font-size: 12px;
}

.fget > span {
  height: 20px;
  line-height: 20px;
  color: #2e82ff;
  font-family: Microsoft YaHei;
}

.fget2 {
  display: inline-block;
  /* margin-right: 18px; */
  float: right;
  font-family: Microsoft YaHei;
}

.footer {
  height: 61px;
  background-color: #f0f6ff;
}

.footer-sm {
  padding-left: 28px;
}
.footer > .footer-img1 {
  display: inline-block;
  width: 20px;
  height: 20px;
  padding-top: 5px;
  margin-left: 10px;
  background-image: url("../assets/jjh-login.png");
  background-position: 28px 55px;
  overflow: hidden;
  /* background-color: aqua; */
}

.footer > .footer-img2 {
  display: inline-block;
  width: 20px;
  height: 20px;
  padding-top: 5px;
  margin-left: 10px;
  background-image: url("../assets/jjh-login.png");
  background-position: 55px 58px;
  overflow: hidden;
  /* background-color: rgb(90, 97, 97); */
}
.footer > .footer-img3 {
  display: inline-block;
  width: 20px;
  height: 20px;
  padding-top: 5px;
  margin-left: 10px;
  background-image: url("../assets/jjh-login.png");
  background-position: 79px 34px;
  overflow: hidden;
  /* background-color: rgb(175, 240, 240); */
}

.footer > a {
  color: #2e82ff;
  text-decoration: none;
  font-family: Microsoft YaHei;
}

.footer-zc {
  float: right;
  width: 60px;
  height: 20px;
  margin-top: 10px;
  margin-right: 20px;
  color: #2e82ff;
  font-family: Microsoft YaHei;
  text-decoration: none;
}
</style>