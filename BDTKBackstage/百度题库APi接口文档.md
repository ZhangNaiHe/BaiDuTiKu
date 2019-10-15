## 用户

1. ##### 用户登录

```javascript
提交方式: post
提交地址: http://47.102.213.250:80/api/v1/user_login

响应数据
成功返回:
{
    "code": 200,
    "message": "登录成功"
}
失败返回:
{
    "code": 400,
    "message": "登录的用户或密码有误"
}
```

2. ##### 用户注册

```javascript
提交方式: post
提交地址: http://47.102.213.250:80/api/v1/user_register

响应数据
成功返回:
{
    "code": 200,
    "message": "注册成功"
}
失败返回:
{
    "code": 400
}
```



