prefix=/usr/local

# files that need mode 755
EXEC_FILES =git-mg
EXEC_FILES+=git-df3
EXEC_FILES+=git-mgfile
EXEC_FILES+=git-cf

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin
	sh testcf/testcf.sh

uninstall:
	test -d $(prefix)/bin && \
	cd $(prefix)/bin && \
	rm -f $(EXEC_FILES)
