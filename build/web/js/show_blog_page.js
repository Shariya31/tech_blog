//edit profile js starts
$(document).ready(function () {
    let editStatus = false;


    $('#edit-profile-button').click(function () {
        if (editStatus == false) {
            $("#profile-details").hide();
            $("#profile-edit").show();
            editStatus = true;
            $(this).text("Back");
        } else {
            $("#profile-details").show();
            $("#profile-edit").hide();
            editStatus = false;
            $(this).text("Edit");
        }

    });
});
//edit profile js ends

//post js starts
$(document).ready(function (e) {
    $("#add-post-form").on("submit", function (event) {
//                   this code is called when form is submitted
        event.preventDefault();
        console.log("Posted");
        let form = new FormData(this);

//                    now requesting to server
        $.ajax({
            url: "AddPostServlet",
            type: 'POST',
            data: form,
            success: function (data, textStatus, jqXHR) {
                //success
                console.log(data);
                if (data.trim() == 'done') {
                    swal("Good job!", "You have posted", "success");
                } else {
                    swal("Sorry", "Something went wrong", "error");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                //error
                swal("Sorry", "Something went wrong", "error");
            },
            processData: false,
            contentType: false
        });

    });
});

//post js ends

