#!/bin/bash

# moving packages to core repository
mv ./x86_64/* ../zone-core-repo/x86_64/

# update repository, remove .old & push changes
(cd ../zone-core-repo/x86_64/; repo-add zone-core-repo.db.tar.gz *.pkg.tar.zst; rm -rf *.old; git add .; git commit -m "Update Core Repository"; .tkn; git push -u origin master)