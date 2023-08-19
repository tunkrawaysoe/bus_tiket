const menubar=document.getElementsByClassName("menubar")[0];
const ultag=document.getElementsByTagName("ul")[0];
const line1=document.getElementsByClassName("line1")[0];
const line2=document.getElementsByClassName("line2")[0];
const line3=document.getElementsByClassName("line3")[0];
//slider image
const slidering=document.querySelectorAll(".slider")[0];
const nextbtn=document.querySelector(".fa-angle-right");
const prebtn=document.querySelector(".fa-angle-left");
const slides=document.querySelectorAll(".slide");
const slideicons=document.querySelectorAll(".slideicon");
let numberofslide=slides.length;
var count=0;
//image slider next btn
nextbtn.addEventListener("click",() => {
    slides.forEach((slide)=>{
        slide.classList.remove("active");
    });
    slideicons.forEach((slideicon)=>{
        slideicon.classList.remove("active");
    });

    count++;

    if(count> (numberofslide-1)){
        count= 0;
    }
    slides[count].classList.add("active");
    slideicons[count].classList.add("active");
});
//prebutn
prebtn.addEventListener("click", () => {
    slides.forEach((slide)=>{
        slide.classList.remove("active");
    });
    slideicons.forEach((slideicon)=>{
        slideicon.classList.remove("active");
    });

count--;
if(count < 0){
count=numberofslide-1;
}
slides[count].classList.add("active");
slideicons[count].classList.add("active");
});
//auto play
var playslider
var repeater=()=>{
    playslider=setInterval(()=>{
        slides.forEach((slide)=>{
            slide.classList.remove("active");
        });
        slideicons.forEach((slideicon)=>{
            slideicon.classList.remove("active");
        });
    
        count++;
    
        if(count> (numberofslide-1)){
            count= 0;
        }
        slides[count].classList.add("active");
        slideicons[count].classList.add("active");

    },4000);
}
repeater();
//stop and start with pointer
slidering.addEventListener("mouseover",()=>{
clearInterval(playslider);
});
slidering.addEventListener("mouseout",()=>{
    repeater();
    });
//humbuger button
menubar.addEventListener("click",()=>{
    if(ultag.classList.contains("moveul")){
    ultag.classList.remove("moveul");
    line1.classList.remove("rotate");
    line2.classList.remove("opt");
    line3.classList.remove("rotate2");
    }
    else{
        ultag.classList.add("moveul");
    line1.classList.add("rotate");
    line2.classList.add("opt");
    line3.classList.add("rotate2");
    }
console.log("helloword");
});