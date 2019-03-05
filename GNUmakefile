PROJ:=$(shell basename $(CURDIR))

SRC_DIRS:=src \


TOP_LEVEL:=hello_world


BUILD_DIR:=build

COMP:=ghdl


#GLOBAL_FLAGS:=--std=08
GLOBAL_FLAGS:=--std=93

RUN_FLAGS:=$(GLOBAL_FLAGS)

ANALYZE_FLAGS:=$(GLOBAL_FLAGS) \
	-Wbinding -Wreserved -Wlibrary -Wvital-generic -Wdelayed-checks \
	-Wbody -Wspecs -Wunused


SOURCES:=$(foreach DIR,$(SRC_DIRS),$(wildcard $(DIR)/*.vhd))


.PHONY : analyze
analyze : analyze_pre $(SOURCES)
	$(COMP) -a $(ANALYZE_FLAGS) $(SOURCES)

.PHONY : analyze_pre
analyze_pre :
	mkdir -p $(BUILD_DIR)

.PHONY : run
run : analyze
	$(COMP) -r $(RUN_FLAGS) $(TOP_LEVEL)
