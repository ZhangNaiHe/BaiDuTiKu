$("#feature").on("change", function () {
    // 2.获取选择到的input中的图片信息
    let file = $(this)[0].files[0];
    console.log(file)
    // 3.实例化formdata
    let formData = new FormData();
   
    formData.append('feature', file)
    // console.log(formData)
    $.ajax({
        type: "post",
        url: "/profile",
        data: formData,
        processData: false,
        contentType: false,
        success: function (data) {
            console.log(data)
            $('.postimg').show().attr('src', data.picAddr).after('<input type="hidden" name="feature" value="' + data.picAddr + '">')
        }
    })
})