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
    "data": {
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNTcxMTg3NDE4LCJleHAiOjE1NzExOTEwMTh9.NR6zLulzY0fX4w_AJrUl3I_haKWCHqing5Gn9LpzCcg"
    },
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
            "subject_num": 495,
            "total": 58
        },
        {
            "subject_id": 2,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "理科数学",
            "subject_num": 534,
            "total": 52
        },
        {
            "subject_id": 3,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "物理",
            "subject_num": 277,
            "total": 8
        },
        {
            "subject_id": null,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "化学",
            "subject_num": 446,
            "total": null
        },
        {
            "subject_id": null,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "生物",
            "subject_num": 136,
            "total": null
        },
        {
            "subject_id": null,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "政治",
            "subject_num": 372,
            "total": null
        },
        {
            "subject_id": null,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "历史",
            "subject_num": 230,
            "total": null
        },
        {
            "subject_id": null,
            "subject_pic": "http://127.0.0.1",
            "subject_title": "地理",
            "subject_num": 89,
            "total": null
        }
    ]
}
```

3. 试卷资源

```
提交方式: get
提交地址: http://47.102.213.250:80/api/v1/paper
提交参数: 无

响应数据
成功返回:
{
    "code": 200,
    "data": {
        "historySum": [
            {
                "paper_id": 1,
                "paper_name": "2019年高考真题 文科数学(北京卷)",
                "chicks": 10,
                "paper_cat": "history"
            },
            {
                "paper_id": 4,
                "paper_name": "2019年高考真题 理综 (北京卷)",
                "chicks": 55,
                "paper_cat": "history "
            },
            {
                "paper_id": 6,
                "paper_name": "2019年高考真题 理科数学 (北京卷)",
                "chicks": 46,
                "paper_cat": "history "
            },
            {
                "paper_id": 8,
                "paper_name": "2019年高考真题 语文 (北京卷)",
                "chicks": 54,
                "paper_cat": "history "
            },
            {
                "paper_id": 10,
                "paper_name": "2019年高考真题 文科数学 (北京卷)",
                "chicks": 36,
                "paper_cat": "history"
            }
        ],
        "paperSum": [
            {
                "paper_id": 2,
                "paper_name": "2019年高考真题 文综 (北京卷)",
                "chicks": 9,
                "paper_cat": "paper "
            },
            {
                "paper_id": 3,
                "paper_name": "2019年高考真题 英语 (北京卷)",
                "chicks": 12,
                "paper_cat": "paper "
            },
            {
                "paper_id": 5,
                "paper_name": "2019年高考真题 语文 (北京卷)",
                "chicks": 38,
                "paper_cat": "paper "
            },
            {
                "paper_id": 7,
                "paper_name": "2019年高考真题 文科数学 (北京卷)",
                "chicks": 77,
                "paper_cat": "paper "
            },
            {
                "paper_id": 9,
                "paper_name": "2019年高考真题 英语 (北京卷)",
                "chicks": 75,
                "paper_cat": "paper"
            }
        ],
        "hotSum": [
            {
                "paper_id": 2,
                "paper_name": "2019年高考真题 文综 (北京卷)",
                "chicks": 9,
                "paper_cat": "paper "
            },
            {
                "paper_id": 1,
                "paper_name": "2019年高考真题 文科数学(北京卷)",
                "chicks": 10,
                "paper_cat": "history"
            },
            {
                "paper_id": 3,
                "paper_name": "2019年高考真题 英语 (北京卷)",
                "chicks": 12,
                "paper_cat": "paper "
            },
            {
                "paper_id": 10,
                "paper_name": "2019年高考真题 文科数学 (北京卷)",
                "chicks": 36,
                "paper_cat": "history"
            },
            {
                "paper_id": 5,
                "paper_name": "2019年高考真题 语文 (北京卷)",
                "chicks": 38,
                "paper_cat": "paper "
            },
            {
                "paper_id": 6,
                "paper_name": "2019年高考真题 理科数学 (北京卷)",
                "chicks": 46,
                "paper_cat": "history "
            },
            {
                "paper_id": 8,
                "paper_name": "2019年高考真题 语文 (北京卷)",
                "chicks": 54,
                "paper_cat": "history "
            },
            {
                "paper_id": 4,
                "paper_name": "2019年高考真题 理综 (北京卷)",
                "chicks": 55,
                "paper_cat": "history "
            }
        ]
    }
}
```

4. 大学教材

```
提交方式: get
提交地址: http://47.102.213.250:80/api/v1/paper
提交参数: 无

响应数据
成功返回:
{
    "code": 200,
    "data": [
        {
            "big_teacher_id": 1,
            "big_teacher_name": "大学数据"
        },
        {
            "big_teacher_id": 2,
            "big_teacher_name": "大学英语"
        },
        {
            "big_teacher_id": 3,
            "big_teacher_name": "大学物理"
        },
        {
            "big_teacher_id": 4,
            "big_teacher_name": "大学化学"
        },
        {
            "big_teacher_id": 5,
            "big_teacher_name": "大学生物"
        },
        {
            "big_teacher_id": 6,
            "big_teacher_name": "大学地理"
        },
        {
            "big_teacher_id": 7,
            "big_teacher_name": "思想政治"
        },
        {
            "big_teacher_id": 8,
            "big_teacher_name": "统计"
        },
        {
            "big_teacher_id": 9,
            "big_teacher_name": "信息技术"
        },
        {
            "big_teacher_id": 10,
            "big_teacher_name": "工学"
        },
        {
            "big_teacher_id": 11,
            "big_teacher_name": "建筑"
        },
        {
            "big_teacher_id": 12,
            "big_teacher_name": "经济学"
        },
        {
            "big_teacher_id": 13,
            "big_teacher_name": "管理学"
        },
        {
            "big_teacher_id": 14,
            "big_teacher_name": "法学"
        },
        {
            "big_teacher_id": 15,
            "big_teacher_name": "文学"
        },
        {
            "big_teacher_id": 16,
            "big_teacher_name": "其他"
        }
    ]
}
```

### 分页

1. ##### 大学

```
提交方式: get
提交地址: http://47.102.213.250:80/api/v1/bigstudy
提交参数: 无

响应数据
成功返回:
{
    "code": 200,
    "data": {
        "Mathematics": [
            {
                "structure_chapter": "第一章 集合与常用逻辑用语"
            },
            {
                "structure_chapter": "第二章 函数的概念与基本初等函数"
            },
            {
                "structure_chapter": "第三章 导数及其应用"
            },
            {
                "structure_chapter": "第四章 三角函数与三角恒等变换"
            },
            {
                "structure_chapter": "第五章 平面向量"
            }
        ],
        "Artsmathematics": [
            {
                "structure_chapter": "第一章 集合与常用逻辑用语"
            },
            {
                "structure_chapter": "第二章 函数的概念与基本初等函数"
            },
            {
                "structure_chapter": "第三章 导数及其应用"
            },
            {
                "structure_chapter": "第四章 三角函数与三角恒等变换"
            },
            {
                "structure_chapter": "第五章 平面向量"
            }
        ],
        "Physics": [
            {
                "structure_chapter": "第一章 力学"
            },
            {
                "structure_chapter": "第二章 热学"
            },
            {
                "structure_chapter": "第三章 电磁学"
            },
            {
                "structure_chapter": "第四章 光学"
            },
            {
                "structure_chapter": "第五章 原子物理学与相对论"
            }
        ],
        "Chemistry": [
            {
                "structure_chapter": "第一章 化学科学与探究"
            },
            {
                "structure_chapter": "第二章 化学基本概念和基本理论"
            },
            {
                "structure_chapter": "第三章 物质结构与性质"
            },
            {
                "structure_chapter": "第四章 化学反应原理"
            },
            {
                "structure_chapter": "第五章 常见无机物及其反应"
            }
        ],
        "Biology": [
            {
                "structure_chapter": "第一章 分子与细胞"
            },
            {
                "structure_chapter": "第二章 遗传与进化"
            },
            {
                "structure_chapter": "第三章 稳态与环境"
            },
            {
                "structure_chapter": "第四章 生物技术实践"
            }
        ],
        "Politics": [
            {
                "structure_chapter": "第一章 神奇的货币"
            },
            {
                "structure_chapter": "第二章 多变的价格"
            },
            {
                "structure_chapter": "第三章 多彩的消费"
            },
            {
                "structure_chapter": "第四章 综合探究：正确对待金钱"
            },
            {
                "structure_chapter": "第五章 生产与经济制度"
            }
        ],
        "History": [
            {
                "structure_chapter": "第一章 古代中国的政治制度"
            },
            {
                "structure_chapter": "第二章 古代中国的经济"
            },
            {
                "structure_chapter": "第三章 中国传统文化主流思想的演变"
            },
            {
                "structure_chapter": "第四章 古代中国科技与文艺"
            },
            {
                "structure_chapter": "第五章 古代希腊罗马"
            }
        ],
        "Geography": [
            {
                "structure_chapter": "第一章 自然地理"
            },
            {
                "structure_chapter": "第二章 人文地理"
            },
            {
                "structure_chapter": "第三章 区域可持续发展"
            }
        ]
    }
}
```

