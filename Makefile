.PHONY: all clean
all: README.md
README.md: guessinggame.sh Makefile
	@echo "#The Guessing Game Project">README.md
	@echo "*Date and Time of Last Run:* $$(date "+%Y-%m-%d %H:%M:%S")">>README.md
	@echo "" >> README.md
	@echo "**Number of Lines in guessinggame.sh:** $$(wc -l < guessinggame.sh)">>README.md
	@echo "GitHub Pages URL: https://github.com/BayazidHabibSiddikee/assessment" >> README.md
clean:
	rm -f README.md
