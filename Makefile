website: index
	mkdir -p html
	cp html/index.html website/index.html

index: blog
	rm -f html/index.html
	ls html/blog/*.html \
	| xargs -I{} sh -c "echo '<div class=\"post\">' >> html/index.html; \
	                    cat {} >> html/index.html; \
	                    echo '</div>' >> html/index.html"

clean:
	rm -rf html

blog: blog/*.md
	mkdir -p html/blog
	ls blog/*.md \
	| xargs -I{} sh -c 'markdown {} > html/{}'
	rename .md .html html/blog/*.md
