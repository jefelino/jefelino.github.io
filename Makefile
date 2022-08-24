html = index.html logic-450-2022.html

all: $(html)

%.html : %-data.yaml %-template.mustache
	mustache $^ > $@

%-data.yaml : %.md
	pandoc --to=html $< | lua format-yaml.lua > $@	

