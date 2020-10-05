#! /bin/bash

index="html/index.html"
header="html/header.html"
footer="html/footer.html"
topbar="html/topbar.html"

cat $header $topbar > $index

ls posts/*.md \
	| xargs -I{} bash -c "{ echo '<div class='post'>'; cat {} | markdown; echo '</div>'; }" >> $index

cat $footer >> $index

go build main.go
