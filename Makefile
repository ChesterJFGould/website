website: website/index.html website/blog.html website/aboutme.html

website/index.html: html/blog/*.html html/general/*.html html/aboutme/*.html templates/*.html
	rm -f website/index.html
	cat templates/header.html >> website/index.html
	cat templates/topbar.html >> website/index.html
	find html/blog html/general -type f \
	| sort -t. --key 2,2 -rn \
	| xargs -I{} sh -c "echo '<div class=\"post\">' >> website/index.html; \
	                    cat {} >> website/index.html; \
	                    echo '</div>' >> website/index.html"
	cat templates/footer.html >> website/index.html

website/blog.html: html/blog/*.html templates/*.html
	rm -f website/blog.html
	cat templates/header.html >> website/blog.html
	cat templates/topbar.html >> website/blog.html
	ls html/blog/*.html \
	| xargs -I{} sh -c "echo '<div class=\"post\">' >> website/blog.html; \
	                    cat {} >> website/blog.html; \
	                    echo '</div>' >> website/blog.html"
	cat templates/footer.html >> website/blog.html

website/aboutme.html: html/aboutme/*.html templates/*.html
	rm -f website/aboutme.html
	cat templates/header.html >> website/aboutme.html
	cat templates/topbar.html >> website/aboutme.html
	ls html/aboutme/*.html \
	| xargs -I{} sh -c "echo '<div class=\"post\">' >> website/aboutme.html; \
	                    cat {} >> website/aboutme.html; \
	                    echo '</div>' >> website/aboutme.html"
	cat templates/footer.html >> website/aboutme.html

clean:
	rm -rf html

html/blog/*.html: blog/*.md
	mkdir -p html/blog
	ls blog/*.md \
	| xargs -I{} sh -c 'markdown -f fencedcode {} > html/{}'
	rename .md .html html/blog/*.md

html/general/*.html: general/*.md
	mkdir -p html/general
	ls general/*.md \
	| xargs -I{} sh -c 'markdown {} > html/{}'
	rename .md .html html/general/*.md

html/aboutme/*.html: aboutme/*.md
	mkdir -p html/aboutme
	ls aboutme/*.md \
	| xargs -I{} sh -c 'markdown {} > html/{}'
	rename .md .html html/aboutme/*.md
