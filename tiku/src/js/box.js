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
            aDiv[this.getAttribute("index")].style.display = "block"
        }
        // onmouseenter onmouseleave
        aLi[i].onmouseout = function () {
            this.style.backgroundColor = '#000';
            this.style.color = '#fff';
            // aDiv[this.getAttribute("index")].style.display = "none"
        }
        aDiv[i].addEventListener("onmouseout",function (){
            console.log(222)
        },false)
    }
   
   
}