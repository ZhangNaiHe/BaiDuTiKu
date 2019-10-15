<template>
 <div class="upload_img">
  <el-upload
    class="avatar-uploader"
    ref="upload_img"
    action=""
    accept="image/jpeg,image/jpg,image/png"
    list-type="picture-card"
    :name="upload_name"
    :on-remove="handleRemove"
    :on-exceed="handleExceed"
    :limit="1"
    :file-list="file_list"
    :http-request="uploadSectionFile">
    <i class="el-icon-plus"></i>
    <div slot="tip" class="el-upload__tip">只能上传jpeg、jpg、png 格式的图片，图片大小在2M以内。</div>
  </el-upload>
</div>
</template>

<script>
    export default {
        data () {
            return {
                file_list:[   //展示已上传的图片数据  【修改时用的】
    // {
    //   name: '01',
    //   url: 'http://voucher-backend.frgiftcube.com:80/upload/2019/07/31/1847366e138ac779a7c5bd229b65a2d4e130a1e5.jpg'
    // }
],
upload_name: 'files',//图片上传的后端接受图片文件的 key
dialogImageUrl: '',  //上传后的图片地址
            }
        },
        handleExceed: function () {
  this.$alert('图片最多上传一张，请删除再重新上传！', '', {
    showConfirmButton: false,
    callback: action => {}
  });
},
// 文件列表移除文件时的钩子
handleRemove: function (file, fileList) {  
  console.log(file, fileList);
  this.dialogImageUrl='';
},
uploadSectionFile: function (params) {
  // 自定义上传方法
  // console.log(params);
  var that = this,
  file = params.file,  //获取上传的文件
  fileType = file.type,   //获取文件类型
  isImage = fileType.indexOf('image') != -1,  // 判断是否是图片类型
  file_url = that.$refs.upload_img.uploadFiles[0].url;
  // console.log(file,fileType,isImage,file_url,that.$refs.upload_img);
  var isLt2M = file.size / 1024 / 1024 < 2;
  if (!isLt2M) {  // 判断大小
    alert("上传图片的大小不能超过 2MB!");
    that.$refs.upload_img.uploadFiles = [];  //不符合就清空已选择的图片
    return;
  }
  if(!isImage){  // 文件格式
    alert("请选择图片文件！");
    that.$refs.upload_img.uploadFiles = [];   //不符合就清空已选择的图片
    return;
  }
  if (isImage) {
    var img = new Image();
    img.src = file_url;
    img.onload = function () {
　　　 //  一切验证通过后调用上传方法
      that.uploadFile(file);
    }
  }
},
uploadFile: function (file) {   // 上传的函数
  var that = this,
  formData = new FormData();
  formData.append(that.upload_name, file);
  this.$axios.post("/file/upload", formData, { headers: { 'Content-Type': 'multipart/form-data' } })
    .then(function (res) {
      // console.log(res);
      if(res.data.status == 0){  //成功的话将数据插入data中
        that.dialogImageUrl = res.data.data.img;
        that.file_list[0]={name: '01', url: res.data.data.img};
        // that.file_list[0]=res.data.data.img;
      }else{
        // 上传失败，清除已选择 内容 ，并提示失败原因
        that.$refs.upload_img.uploadFiles = [];
        that.file_list[0]='';
        that.$alert('图片上传异常，原因：'+res.data.data, '', {
          showConfirmButton: false,
          callback: action => {}
        });
      }
    })
},
        
    }
</script>

<style lang="scss" scoped>

</style>