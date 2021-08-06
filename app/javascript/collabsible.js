document.addEventListener("turbolinks:load", function () {
  $("#add_comment").click(function() {
    this.parentElement.classList.toggle("active");
    $(this).next().slideToggle(300);
  }); 
});

// document.addEventListener("turbolinks:load", function () {
//   $("#add_comment").on("click", function(event) {
//     event.stopPropagation()
//     this.parentElement.classList.toggle("active");
//     $(this).next().slideToggle(300);
//   }); 
// });

// document.addEventListener("turbolinks:load", function () {
//   $(".clickable").click(function() {
//     window.location = $(this).data("link");
//   });
// });

