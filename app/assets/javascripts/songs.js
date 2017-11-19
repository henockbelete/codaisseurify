function toggleDone() {
  $(this).parent().parent().toggleClass("success");
  updateCounters();
}

function updateCounters() {
  $("#total-count").html($(".song").size());
  $("#completed-count").html($(".success").size());
  $("#song-count").html($(".song").size() - $(".success").size());
}


function createSong(song_name) {
  var checkboxId = "song-" + nextSongId();

  var label = $('<label></label>')
    .attr('for', checkboxId)
    .html(title);

  var checkbox = $('<input type="checkbox" value="1" />')
    .attr('id', checkboxId)
    .bind('change', toggleDone);

  var tableRow = $('<tr class="todo"></td>')
    .append($('<td>').append(checkbox))
    .append($('<td>').append(label));

  $("#songList").append( tableRow );

  updateCounters();

  var newSong = { song_name: song_name, completed: false };

  $.ajax({
    type: "POST",
    url: "artist/songs.json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"})

    .fail(function(error) {
    console.log(error);

    error_message = error.responseJSON.title[0];
      showError(error_message);
    });
}

function showError(message) {
  var errorHelpBlock = $('<span class="help-block"></span>')
    .attr('id', 'error_message')
    .text(message);

  $("#formgroup-title")
    .addClass("has-error")
    .append(errorHelpBlock);
}
  });
}

function submitSong(event) {
  event.preventDefault();
  resetErrors();
  createSong($("#song_name").val());
  $("#song_name").val(null);
  updateCounters();
}

function cleanUpDoneSongs(event) {
  event.preventDefault();
  $.when($(".success").remove())
    .then(updateCounters);
}

$(document).ready(function() {
  $("input[type=checkbox]").bind('change', toggleDone);
  $("form").bind('submit', submitSong);
  $("#clean-up").bind('click', cleanUpDoneSongs);
  updateCounters();
});

function resetErrors() {
  $("#error_message").remove();
  $("#formgroup-title").removeClass("has-error");
}

var checkboxId = data.id;
