//Create Songs
function addSong(artistId) {
  var songnameValue = $("#songnameInput").val();
  var genreValue = $("#genreInput").val();

  $.ajax({
      type: "POST",
      url: '/artists/' + artistId + '/songs',
      data: JSON.stringify({
        song_name: songnameValue,
        genre: genreValue
      }),
      contentType: "application/json",
      dataType: "json"})

      .done(function(data) {
        location.reload();
      });
}


// Delete Songs
function deleteSong(artistId, songId) {
  var confirmed = confirm('Are you sure?');

  if (confirmed) {
    $.ajax({
      type: "DELETE",
      url: '/artists/' + artistId + '/songs/' + songId,
      contentType: "application/json",
      dataType: "json"})

    .done(function(data) {
      location.reload();
    });
  }
}
