chrome.contextMenus.create({
  title: "Score Word",
  contexts:["selection"],
  onclick: function(info, tab) {
    var code = "$.getJSON('http://localhost:3000/score_word/" + info.selectionText + "', function(data) {"
                 + "if (data.valid) {"
                   + "$('#scrabble_notification').html('<span>This word is valid.</span><span>Score: ' + data.score + '</span>');"
                 + "} else {"
                   + "$('#scrabble_notification').html('<span>Sorry, this word is not valid :(</span>')"
                 + "}"
                 + "$('#scrabble_notification').fadeIn(500, 0).fadeOut(5000, 0)"
               + "});"

    chrome.tabs.executeScript(tab.id, { code: code });
  }
});
