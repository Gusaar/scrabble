# Scrabble

## Rails Side

### Specs
  * Ruby: 2.3.3
  * Rails: 5.0.1
  * No Database

### Components
  * API
    * `GET /score_word/:word` endpoint to retrieve the score for a given word.
  * Scrabble Module:
    * ScoreWord (This class can let you know if the word is valid and its score. It uses ScoreLetter)
    * ScoreLetter (This class is in charge of retrieve the value of a single char. It returns 0 for invalid ones.)
    * Dictionary (This class holds the dictionary of valid words for Scrabble.)

### Install
  * On your console:
    * `git clone git@github.com:Gusaar/scrabble.git`
    * `gem install bundler`
    * Use your machine Ruby or install either rbenv or rvm
    * `bundle`
    * `rails s`

### Test suite
  * Run `bundle exec rspec spec`

## Chrome Extension

### Specs:
  * JQuery: 3.2.1 (Included)

### Files
  * CSS:
    * css.css (Styles for the box that shows the score)
  * JS:
    * jquery-3.2.1.min.js (JQuery library)
    * scrabble.js (This file handles the context menu and its functionality)
    * content.js (This file creates the div where the score is going to be shown)
    * content_script.js (This file contains the script that makes the request to the server)
  * JSON:
    * manifest.json (Configuration for Extension)

### Install
  * Go to `chrome://extensions/`
  * Check the box `Developer mode`
  * Click on `Load unpacked extension...`
  * Select folder `chrome_ext`

## Scrabble!

### Use
  Once you are running you Rails server and you installed the chrome extension, just select a single word (or it's going to be invalid), right click on it and select Score Word. You're going to get the score in the right top corner in a yellow box. Enjoy it!.
