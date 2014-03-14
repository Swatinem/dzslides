
DEPS := custom.css default.css script.js template.jade

all: $(patsubst src/%.jade, dest/%.html, $(shell find src/ -name "*.jade"))

dest/%.html: src/%.jade $(DEPS)
	jade --pretty --path $< < $< > $@

