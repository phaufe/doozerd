include $(GOROOT)/src/Make.$(GOARCH)

TARG=borg
GOFILES=\
	borg.go\

include $(GOROOT)/src/Make.pkg

server: server.go
	$(GC) $<
	$(LD) server.$(O) -o $@
