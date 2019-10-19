window.onload = function () {
    // 获取所有li
    let aLi = document.querySelectorAll(".non_ul li");
    // window.console.log(aLi);
    let aDiv = document.querySelectorAll('.stion');
    window.console.log(aDiv);
    for (var i = 0; i < aLi.length; i++) {
        aLi[i].setAttribute("index", i);
        aLi[i].onmouseover = function () {
            for (var j = 0; j < aLi.length; j++) {
                aLi[j].removeAttribute("class");
                aDiv[j].style.display = 'none';
                this.style.backgroundColor = "#fff";
                this.style.color = "#11a68d";
            }
            this.className = "active";
            aDiv[this.getAttribute("index")].style.display = "block";
        }
        aLi[i].onmouseout = function () {
            this.style.backgroundColor = '#000';
            this.style.color = '#fff';
            // this.className = '';
            // aDiv[this.getAttribute("index")].style.display = "none"
        }
        document.querySelector('.el-carousel__container').onmouseover = function () {
            for (let i = 0; i < aDiv.length; i++) {
                aDiv[i].style.display = 'none';
            }
            for (let j = 0; j < aLi.length; j++) {
                aLi[j].className = '';
            }
        }
    }

}