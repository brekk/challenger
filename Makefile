BUILD_DIR := ./build
EXEC := challenger

$(BUILD_DIR)/$(EXEC): src/Cli.mad
	mkdir -p $(dir $@)
	echo "compiling! - challenger"
	madlib compile -i src/Cli.mad -t llvm -o $@
	echo "built! - challenger"


README.md:
	pilcrow -i README.md --repo brekk/challenger --auto

version.lock:
	madlib install

.PHONY: clean
clean:
	rm -r $(BUILD_DIR)
