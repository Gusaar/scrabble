chrome.contextMenus.create({
  title: "Score Word",
  contexts:["selection"],
  onclick: function(info, tab) {
    chrome.tabs.executeScript(tab.id, {
      code: 'var word = ' + info.selectionText + ';'
    }, function() {
      chrome.tabs.executeScript(tab.id, {file: 'content_script.js'});
    });
  }
});
