$(function () {
  $("button.save").on("click", function (event) {
    event.preventDefault();
    var date = $("#month-date").val();
    var method = $("#month-method").val();
    var meeting = parseInt($("#month-meeting").val())
    var row = $(this).closest("tr")
    var monthId = row.data("month-id")

    function toggleContact(row){
      row.toggleClass("not-contacted contacted")
    }

    $.ajax({
      url: "/api/v1/months/" + monthId,
      method: "PATCH",
      data: { date: date, method: method, meeting: meeting },
      success: toggleContact(row),
      error: function (error) {
        alert("Status update failed.")
      }
    })
  })
})
