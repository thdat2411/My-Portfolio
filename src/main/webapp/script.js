var typed= new Typed(".multiple-text",{
    strings: ["I'm majoring IT","learning at HCMUTE"],
    typeSpeed:70,
    backSpeed:70,
    backDelay:1000,
    loop: true
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
    duration:2000,
    delay:50,
});
sr.reveal(`.logo, .hero, .section_pic-container img, .article-container, .detail-container, .experience-sub-title`,{origin: 'left'})
sr.reveal(`.section__text, .about-details-container,.tasks_content,.tasks_container,.contact_box `,{origin: 'right'})
sr.reveal(`.tasks_container, .tasks section_text_p1, .tasks tittle,`,{origin:'top'})
sr.reveal(`.social-media a, .loader,.section_text_p1,.title, .text-container,.contact_button,.details-container`,{origin:'bottom'})
sr.reveal(`.tasks_card`,{interval:100})




