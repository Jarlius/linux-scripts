bash: $(wildcard src/*.sh)
	rm -f .bash_aliases
	for file in $^; do \
		cat $$file | grep -v '^#' | \
		sed "s/^/alias $$(basename $$file .sh)='/g" | \
		sed "s/$$/'/g" >> .bash_aliases; \
	done
