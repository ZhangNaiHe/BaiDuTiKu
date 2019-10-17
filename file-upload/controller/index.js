// const conn=require("../data/index");

const fs=require("fs");

module.exports.postUpload=(req,res)=>{
    console.log(req.file)
    fs.writeFile("./public/uploads/"+req.file.originalname,req.file.buffer,(error)=>{
        if(error){
            return  console.log(error)
        }
        res.json({
            picAdd:'./uploads/'+req.file.originalname
        })
    })
}