This is a little bit modified [pelican-svbhack](https://github.com/gfidente/pelican-svbhack) theme for [Pelican](http://getpelican.com). 
---
### What's changed:
- theme palette - [solarized dark](http://ethanschoonover.com/solarized)
- code highlighting - half solarized dark, half custom
- added a couple of links in header - categories and tags
- added 'continue reading' button on index page. It appears after the article's summary
- I dropped out less stylesheet - I don't know less and too lazy to deal with it, so there is only CSS changed

## EXAMPLES
Index
![theme screenshot](https://raw.github.com/niquixotiz/pelican-svbhack/master/screenshot.png)
---
Code block
![codeblock screenshot](https://raw.github.com/niquixotiz/pelican-svbhack/master/screenshot-code.png)
---

## FEATURES

- responsive
- syntax highlighting for pre blocks
- supports google analytics
- custom list of links

## KNOWN ISSUES

- no IE testing
- no custom menu

## INSTALL

Clone the [repository](https://github.com/niquixotiz/pelican-svbhack), edit your `pelicanconf.py` and modify the `THEME` variable to make it point to the downloaded theme location.

## PELICANCONF.PY

Supports a number of common global variables but patches are welcomed if you need better support.

- `GOOGLE_ANALYTICS` to use Google Analytics, set this var to your UA-XYZ code

- `USER_LOGO_URL` to replace the logo placeholder, put your logo in content/images/your_logo.png and make this var point to `SITEURL + '/static/images/your_logo.png'`

- `ROUND_USER_LOGO` set this to `True` to crop your logo to a circle and add a black border

- `DISQUS_SITENAME` set this to your Disqus sitename to enable disqus comments in articles

- `TAGLINE` some text rendered right below the logo

- `INTERNET_DEFENSE_LEAGUE` set this to `True` if you want to enable the [Internet Defense League](http://internetdefenseleague.org) code

When developing locally, you may want to set the following variable: `SITEURL = http://localhost:8000`

## AUTHOR

pelican-svbhack is authored by Giulio Fidente. Little bit tuned by [me](https://github.com/niquixotiz).

## LICENSE

Released under MIT License, full details in `LICENSE` file.
