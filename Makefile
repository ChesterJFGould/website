.PHONY: website
website: files/index.html files/blog.html files/software.html files/aboutme.html

.PHONY: clean
clean:
	rm -f files/*.html

files/index.html: content/*/*.md templates/*.html
	cat templates/header.html templates/topbar.html > $@
	ls content/*/*.md \
	| sort -rn -t. --key 2,2 \
	| xargs -I{} -n 1 sh -c "echo '<div class="post">'; markdown -f fencedcode {}; echo '</div>'" \
	>> $@
	cat templates/footer.html >> $@

files/%.html: content/%/*.md templates/*.html
	cat templates/header.html templates/topbar.html > $@
	ls content/$*/*.md \
	| sort -rn -t. --key 2,2 \
	| xargs -I{} -n 1 sh -c "echo '<div class="post">'; markdown -f fencedcode {}; echo '</div>'" \
	>> $@
	cat templates/footer.html >> $@
