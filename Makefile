website: html/index.html
	mkdir -p html
	cp html/index.html website/index.html

html/index.html: html/blog/*.html templates/*.html
	rm -f html/index.html
	cat templates/header.html >> html/index.html
	cat templates/topbar.html >> html/index.html
	ls html/blog/*.html \
	| xargs -I{} sh -c "echo '<div class=\"post\">' >> html/index.html; \
	                    cat {} >> html/index.html; \
	                    echo '</div>' >> html/index.html"
	cat templates/footer.html >> html/index.html

clean:
	rm -rf html

html/blog/*.html: blog/*.md
	mkdir -p html/blog
	ls blog/*.md \
	| xargs -I{} sh -c 'markdown {} > html/{}'
	rename .md .html html/blog/*.md
