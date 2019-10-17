const express=require("express")
const multer=require("multer");
const upload=multer();

const router=express.Router();

const postAdd=require("../controller/index");

router.post('/profile',upload.single('feature'),postAdd.postUpload)


module.exports=router