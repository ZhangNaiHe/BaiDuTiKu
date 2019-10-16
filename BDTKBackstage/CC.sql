-- create table chapter(
-- cat_father_id int(40) not null comment "分类表的父类id",
-- cat_son_id int(30) not null comment "章节学习的父类id",
--     chapter_id int(30) primary key auto_increment comment "章节id",
--     chapter_name 
--     structure_id int(50) not null comment "结构表的结构id",
    
-- )
-- insert into chapter(chapter_id,cat_son_id,structure_id,structure_id,chapter_name,cat_father_id) values 
-- (1,2,1,2)


create table `college` (
    `subject_id` int(40) not null comment "科目id",
    `structure_id` int(30) not null comment "结构id"
);