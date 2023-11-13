bash: $(wildcard src/*.sh)
	rm -f .bash_aliases
	for file in $^; do \
		basename $$file .sh | xargs -I{} echo "{}=$(abspath $$file)" >> .bash_aliases; \
	done
