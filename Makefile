UK_ROOT ?= $(PWD)/.unikraft/unikraft
UK_LIBS ?= $(PWD)/.unikraft/libs
LIBS := $(UK_LIBS)/musl:$(UK_LIBS)/libunwind:$(UK_LIBS)/compiler-rt:$(UK_LIBS)/libcxx:$(UK_LIBS)/lwip:$(UK_LIBS)/ruby

all:
	@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS)

$(MAKECMDGOALS):
	@$(MAKE) -C $(UK_ROOT) A=$(PWD) L=$(LIBS) $(MAKECMDGOALS)
