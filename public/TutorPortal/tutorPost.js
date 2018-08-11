$('#ready').click(()=>{
    let UserID = 189213;
    let postURL = '/api/tutorReady/'+userID;
    $.get(postURL,(data) => {
        let popUp = "<div class='popup'><h2>Searching for your tutor</h2><div class='loader'>Loading...</div></div>";
      
    });
});

function hide() {
    var div = document.getElementyById('buttonB');
    div.style.display = 'none';
}

$('#myModal').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
  })