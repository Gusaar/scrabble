$.getJSON('http://localhost:3000/score_word/' + word, function(data) {
  var notification_div = $('#scrabble_notification');

  if (data.valid) {
    notification_div.html('<p>This word is valid.</p><p>Score: ' + data.score + '</p>');
  } else {
    notification_div.html('<p>Sorry, this word is not valid :(</p>')
  }
  notification_div.fadeIn(500, 0).fadeOut(5000, 0)
});
