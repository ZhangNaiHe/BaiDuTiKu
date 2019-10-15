<template>
  <div class="Login">
    <el-dialog :visible.sync="dialogVisible">
      <img src="../assets/jjh-loginlogo.png" alt />
      <span class="login-user">用户名密码登录</span>
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
        <span>扫码登录</span>
        <span>
          <img src="../assets/jjh-login.png" alt />
        </span>
        <span>立即注册</span>
      </div>
    </el-dialog>
  </div>
</template>

<script>
export default {
  data() {
    return {
      dialogVisible: true,
      checked: true,
      loginForm: {
        username: "aaa",
        password: "222"
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
          this.$router.push("/home");
          return this.$message.success(res.message);
        }
        if (res.code == 400) {
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
  margin-left: 28px;
}
img {
  margin-top: 0px;
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
  color: #2e82ff;
}

.fget2 {
  display: inline-block;
  /* margin-right: 220px; */
  /* float: right; */
}
.footer > span {
  display: inline-block;
  width: 30px;
  height: 20px;
  overflow: hidden;
}

.footer > span > img {
  /* height: 20px; */
  background-position: 0px 0px;
}
</style>