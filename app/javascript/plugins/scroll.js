function navScroll() {

  document.addEventListener("DOMContentLoaded", function(){
    window.addEventListener('scroll', function() {
        if (window.scrollY > 50) {
          document.getElementById('navbar').classList.remove('navbar-AliceYoga');
          document.getElementById('navbar').classList.add('sticky-top');
          // add padding top to show content behind navbar
        } else {
          document.getElementById('navbar').classList.remove('sticky-top');
          document.getElementById('navbar').classList.add('navbar-AliceYoga');
           // remove padding top from body
          document.body.style.paddingTop = '0';
        }
    });
  });

}

navScroll();

export { navScroll };
