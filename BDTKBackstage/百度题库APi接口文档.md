## 用户

1. ##### 用户登录

```javascript
提交方式: post
提交地址: http://47.102.213.250:80/api/v1/user_login
提交参数: username&password

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
提交擦数: username&password

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



## 首页

1. ##### 获取左边菜单栏

```javascript
提交方式: get
提交地址: http://47.102.213.250:80/api/v1/tabsmenu
提交参数: 无

响应数据
成功返回:
{
    "code": 200,
    "data": {
        "tabs": [
            {
                "cat_father_id": 1,
                "cat_name": "高考",
                "cat_son_name": "高考",
                "cat_son_id": 1
            },
            {
                "cat_father_id": 2,
                "cat_name": "建筑类",
                "cat_son_name": "一级建造师,二级建造师",
                "cat_son_id": 2
            },
            {
                "cat_father_id": 3,
                "cat_name": "财会类",
                "cat_son_name": "会计从业资格,中级会计师,注册会计师CPA,中级经济师,初级会计师",
                "cat_son_id": 3
            },
            {
                "cat_father_id": 4,
                "cat_name": "计算机类",
                "cat_son_name": "计算机四级",
                "cat_son_id": 4
            },
            {
                "cat_father_id": 5,
                "cat_name": "公务员",
                "cat_son_name": "警察招考,政法干警,国考",
                "cat_son_id": 5
            },
            {
                "cat_father_id": 6,
                "cat_name": "医药类",
                "cat_son_name": "临床执业医师,临床助理医师,执业中药医师,执业西药药师,护士资格",
                "cat_son_id": 6
            },
            {
                "cat_father_id": 7,
                "cat_name": "其他",
                "cat_son_name": "考研,高考",
                "cat_son_id": 7
            }
        ]
    }
}

```

2. ##### 章节学习

```javascript
提交方式: get
提交地址: http://47.102.213.250:80/api/v1/subject
提交参数: 无

响应数据
成功返回:
{
    "code": "200",
    "data": [
        {
            "subject_id": 1,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "文科数学",
            "subject_num": 495
        },
        {
            "subject_id": 2,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "理科数学",
            "subject_num": 534
        },
        {
            "subject_id": 3,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "物理",
            "subject_num": 277
        },
        {
            "subject_id": 4,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "化学",
            "subject_num": 446
        },
        {
            "subject_id": 5,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "生物",
            "subject_num": 136
        },
        {
            "subject_id": 6,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "政治",
            "subject_num": 372
        },
        {
            "subject_id": 7,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "历史",
            "subject_num": 230
        },
        {
            "subject_id": 8,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "地理",
            "subject_num": 89
        }
    ]
}

```

