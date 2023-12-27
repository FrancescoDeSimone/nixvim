.PHONY: build clean install

INSTALL_PATH ?= /bin/nixvim
RESULT_DIR := result
NVIM_BINARY := $(RESULT_DIR)/bin/nvim

build:
	@echo "Building..."
	@rm -f $(RESULT_DIR)
	@nix build

clean:
	@echo "Cleaning..."
	@rm -f $(RESULT_DIR)

install: build
	@echo "Installing..."
	@if [ -e $(NVIM_BINARY) ]; then \
		sudo rm -f $(INSTALL_PATH); \
		sudo ln $(NVIM_BINARY) $(INSTALL_PATH); \
		echo "Installation completed at $(INSTALL_PATH)"; \
	else \
		echo "$(NVIM_BINARY) not found. Build might have failed."; \
	fi

