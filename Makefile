# You know, there are pre-compile DEBs of this...

WANT_QTSIXA = false


all: build

build:
ifeq ($(WANT_QTSIXA),true)
	$(MAKE) -C qtsixa
endif
	$(MAKE) -C utils
	$(MAKE) -C sixad

clean:
ifeq ($(WANT_QTSIXA),true)
	$(MAKE) clean -C qtsixa
endif
	$(MAKE) clean -C utils
	$(MAKE) clean -C sixad

install:
ifeq ($(WANT_QTSIXA),true)
	$(MAKE) install -C qtsixa
endif
	$(MAKE) install -C utils
	$(MAKE) install -C sixad

uninstall:
ifeq ($(WANT_QTSIXA),true)
	$(MAKE) uninstall -C qtsixa
endif
	$(MAKE) uninstall -C sixad
	$(MAKE) uninstall -C utils

