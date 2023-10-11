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
    let header = document.querySelector('header');
    header.classList.toggle ('sticky',window.scrollY>100);
};
/*=============EmailJS===============*/
const contactForm =document.getElementById('contact-form'),
    contactMessage = document.getElementById('contact-message')

const sendEmail = (e) => {
    e.preventDefault();
    emailjs.sendForm('service_k7kuf3', 'template_cws5vdh', '#contact-form', 'E-S1gH4M6tHgkJzEb')
        .then(() => {
            contactMessage.textContent = 'Message sent successfully';
            setTimeout(() => {
                contactMessage.textContent = '';
            }, 5000);
            contactForm.reset();
        })
        .catch(() => {
            contactMessage.textContent = 'Message not sent';
        });
};
contactForm.addEventListener('submit',sendEmail)
/*=========ScrollReveal==========*/
const sr = ScrollReveal({
    origin:'top',
    distance:'60px',
    duration:2500,
    delay:400,
});
sr.init();
sr.reveal(`.section_text_p1`,{origin: 'right'});




