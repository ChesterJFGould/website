.PHONY: website
website: website/index.html website/blog.html website/software.html website/aboutme.html

.PHONY: clean
clean:
	rm -rf website
	mkdir website

website/index.html: content/*/*.md templates/*.html
	cat templates/header.html templates/topbar.html > $@
	ls content/*/*.md \
	| sort -rn -t. --key 2,2 \
	| xargs -I{} -n 1 sh -c "echo '<div class="post">'; markdown -f fencedcode {}; echo '</div>'" \
	>> $@
	cat templates/footer.html >> $@

website/%.html: content/%/*.md templates/*.html
	cat templates/header.html templates/topbar.html > $@
	ls content/$*/*.md \
	| sort -rn -t. --key 2,2 \
	| xargs -I{} -n 1 sh -c "echo '<div class="post">'; markdown -f fencedcode {}; echo '</div>'" \
	>> $@
	cat templates/footer.html >> $@
