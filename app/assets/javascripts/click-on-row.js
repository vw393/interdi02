$(document).ready(function($) {
    $(".sel-table-row").click(function() {
        window.document.location = $(this).data("link");
    });
});
