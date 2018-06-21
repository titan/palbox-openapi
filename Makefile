NAME = openapi
VERSION = 0.1.0
BUILDDIR=/dev/shm/${NAME}
TARGET = $(BUILDDIR)/openapi

SERVERSRC:=$(BUILDDIR)/src/openapi.nim
BUILDSRC:=$(BUILDDIR)/openapi.nimble

all: $(TARGET)

doc:
	make -C doc

$(TARGET): $(SERVERSRC) $(BUILDSRC)
	cd $(BUILDDIR); nimble build; cd -

$(SERVERSRC): src/openapi.org | prebuild
	org-tangle $<
	#emacs $< --batch -f org-babel-tangle --kill

$(BUILDSRC): src/build.org | prebuild
	org-tangle $<
	#emacs $< --batch -f org-babel-tangle --kill

prebuild:
ifeq "$(wildcard $(BUILDDIR))" ""
	@mkdir -p $(BUILDDIR)/src
endif

clean:
	rm -rf $(BUILDDIR)

.PHONY: all clean doc prebuild
