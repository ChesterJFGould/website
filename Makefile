header = html/header.html
footer = html/footer.html
topbar = html/topbar.html
index = html/index.html
blog = html/blog.html
math = html/math.html
raw = html/raw
binary = $(shell basename $(shell pwd))

all: $(index) $(binary) $(blog) $(math)

clean:
	- rm $(index)
	- rm $(binary)
	- rm -r $(raw)
	- rm $(blog)
	- rm $(math)

$(binary): main.go
	go build

$(index): $(raw)
	cat $(header) $(topbar) > $(index)
	find $(raw) -type f -name *.html \
		| sort -nr -t. -k2 \
		| xargs -I{} bash -c "{ echo '<div class='post'>'; cat {}; echo '</div>'; }" >> $(index)
	cat $(footer) >> $(index)

$(blog): rawBlog
	cat $(header) $(topbar) > $(blog)
	find $(raw)/blog -type f -name *.html \
		| sort -nr -t. -k2 \
		| xargs -I{} bash -c "{ echo '<div class='post'>'; cat {}; echo '</div>'; }" >> $(blog)
	cat $(footer) >> $(blog)

$(math): rawMath
	cat $(header) $(topbar) > $(math)
	find $(raw)/math -type f -name *.html \
		| sort -nr -t. -k2 \
		| xargs -I{} bash -c "{ echo '<div class='post'>'; cat {}; echo '</div>'; }" >> $(math)
	cat $(footer) >> $(math)
		

$(raw): rawBlog rawMath

rawBlog: blog/*.md
	- mkdir -p $(raw)/blog
	- ls -1 blog/*.md \
		| xargs -I{} sh -c 'markdown {} > $(raw)/{}'

	- rename .md .html $(raw)/blog/*.md

rawMath: math/Math184/*.md
	mkdir -p $(raw)/math/Math184
	- find math -type f -name "*.md" \
		| xargs -I{} sh -c 'eqn {} -TMathML | tail +3 | sed "s/.EQ//g; s/.EN//g" | markdown > $(raw)/{}'
	- rename .md .html $(raw)/math/Math184/*.md
