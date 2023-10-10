var typed= new Typed(".multiple-text",{
    strings: ["I'm majoring IT","learning at HCMUTE"],
    typeSpeed:70,
    backSpeed:70,
    backDelay:1000,
    loop: true
})

var welcomed= new Typed(".Welcome-text",{
    strings: ["Welcome to my site","Take your time "],
    typeSpeed: 75,
    backSpeed: 75,

})
let sections = document.querySelectorAll('section');
let navLinks = document.querySelectorAll('header nav a');

window.onscroll=() =>{
    sections.forEach(sec=> {
        let top = window.scrollY;
        let offset = sec.offsetTop - 400;
        let height = sec.offsetHeight;
        let id = sec.getAttribute('id');

        if(top>=offset && top < offset + height)
        {
            navLinks.forEach(links=>{
                links.classList.remove('active')
                document.querySelector('header nav a[href*=' +id +']').classList.add('active');

            });
        };
    });
    let header = document.querySelector('header')
    header.classList.toggle ('sticky',window.scrollY>100);
};



