JEKYLL_VERSION?=3.2.1
# current dir, but we can change it
NAME?=.

BASEDIR=$(CURDIR)
S3_BUCKET=devops-by

# @ means "execute the shell command : and don't echo the output.

# https://jekyllrb.com/docs/usage/

help:
	@echo 'Makefile for jekyll project                                                '
	@echo '                                                                           '
	@echo 'Usage:                                                                     '
	@echo '   make new          generate new web site template                        '
	@echo '   make build        transform your templates into ./_site                 '
	@echo '   make run          start local webserver for hosting static files        '

# - serve command will watch for changes automatically
# - changes made to _config.yml during automatic regeneration are not loaded until the next execution.
# - destination folders are cleaned on site builds. Use <keep_files> to save it
# - jekyll file structure: https://jekyllrb.com/docs/structure/
# - working with drafts: https://jekyllrb.com/docs/drafts/

# why we use $$
# you can't just use '$SITE_NAME' as make would try and find a make variable called 'SITE_NAME',
# when in fact it is a shell variable. So in order to get '$SITE_NAME' passed to the shell, 
# rather than a blank, a double-dollar '$$SITE_NAME' is used.
#
# we need \ everywhere cause make run every line in new bash
#

new:
	@while [ -z "$$SITE_NAME" ]; do \
        read -r -p "Type name of new generated site: " SITE_NAME; \
    done ; \
    [ "$$SITE_NAME" != "" ] || (echo "Exiting. empty site name."; exit 1;); \
    docker run -ti --rm -v $(BASEDIR):/app -w /app jekyll/jekyll:$(JEKYLL_VERSION) jekyll new $$SITE_NAME; \
    echo "--- Check generated dir >> $(BASEDIR)/$$SITE_NAME"

build:
	docker run -ti --rm -v $(BASEDIR)/$(NAME):/app -w /app jekyll/jekyll:$(JEKYLL_VERSION) \
    sh -c "bundle exec jekyll build"

run:
	docker run -ti --rm -v $(BASEDIR)/$(NAME):/app -w /app -p 4000:4000 jekyll/jekyll:$(JEKYLL_VERSION) \
    sh -c "bundle install && bundle exec jekyll serve"
	@echo 'Now browse to http://localhost:4000'


