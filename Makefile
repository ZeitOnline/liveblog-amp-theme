THEME_NAME    := $(shell node -p "require('./package.json').name")
THEME_ARCHIVE := liveblog-$(THEME_NAME)-theme.zip

make:
	make clean
	gulp --NODE_ENV production
	zip -r $(THEME_ARCHIVE) * \
		-x "__MACOSX/*" \
		-x ".DS_Store" \
		-x "*/.DS_Store" \
		-x ".git/*" \
		-x "Makefile" \
		-x "less/*" \
		-x "js/*" \
		-x "node_modules/*" \
		-x "test/*" \
		-x "index.html" \
		-x "gulpfile.js" \
		-x "npm-shrinkwrap.json" \
		-x "*.sublime-*" \
		-x "*.zip" \
		-x "package-lock.json" \
		-x "yarn.lock" \
		-x "embedcode.html"

clean:
	rm -f $(THEME_ARCHIVE)
