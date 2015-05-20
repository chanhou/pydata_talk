
all: file run

file:
	ipython nbconvert Deep_talk.ipynb --to slides --reveal-prefix ./reveal.js

file_online:
	ipython nbconvert Deep_talk.ipynb --to slides --reveal-prefix "http://cdn.jsdelivr.net/reveal.js/2.6.2"

serve:
	ipython nbconvert Deep_talk.ipynb --to slides --reveal-prefix "http://cdn.jsdelivr.net/reveal.js/2.6.2" --post serve

run:
	python -m SimpleHTTPServer 8000
	# http://localhost:8000/Deep_talk.slides.html?theme=sky#/
