$(function () {
  hideAll()

  function hideAll() {
    $(".jan").hide()
    $(".feb").hide()
  }

  $("#jan").on("click", function (event) {
    event.preventDefault();
    hideAll()
    $(".jan").show()
  })

  $("#feb").on("click", function (event) {
    event.preventDefault();
    hideAll()
    $(".feb").show()
  })
})
