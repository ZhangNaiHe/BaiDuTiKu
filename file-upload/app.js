const express = require('express');
const app = express();



const bodyParser=require("body-parser");

app.use(bodyParser.urlencoded({extended:false}))

app.use(express.static('./public'));

// 引入index路由
const indexRouter=require("./router/index");

app.use(indexRouter);


// const storage = multer.diskStorage({
//   destination: function (req, file, cb) {
//     cb(null, path.resolve('public/uploads'));
//   },
//   filename: function (req, file, cb) {
//     cb(null, Date.now() + path.extname(file.originalname));
//   }
// });

// const upload = multer({storage: storage});

// app.post('/profile', upload.single('avatar'), function(req, res, next) {

//   res.send({
//     err: null,
//     filePath: 'uploads/' + path.basename(req.file.path)
//   });
// });


app.listen(3000, function () {
  console.log("http://127.0.0.1:3000");
});