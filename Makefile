header = html/header.html
footer = html/footer.html
topbar = html/topbar.html
index = html/index.html
raw = html/raw
binary = $(shell basename $(shell pwd))

all: $(index) $(binary)

clean:
	- rm $(index)
	- rm $(binary)
	- rm -r $(raw)

$(binary): main.go
	go build

html/index.html: $(raw)
	cat $(header) $(topbar) > $(index)
	find $(raw) -type f -name *.html \
		| sort -nr -t. -k2 \
		| xargs -I{} bash -c "{ echo '<div class='post'>'; cat {}; echo '</div>'; }" >> $(index)
	cat $(footer) >> $(index)

$(raw): posts

posts: posts/*.md
	- mkdir -p $(raw)/posts
	- ls -1 posts/*.md \
		| xargs -I{} sh -c 'markdown {} > $(raw)/{}'

	- rename .md .html $(raw)/posts/*.md

math: math/Math184/*.md
	mkdir -p $(raw)/math/Math184
	- find math -type f -name "*.md" \
		| xargs -I{} sh -c 'eqn {} -TMathML | tail +3 | sed "s/.EQ//g; s/.EN//g" | markdown > $(raw)/{}'
	- rename .md .html $(raw)/math/Math184/*.md
