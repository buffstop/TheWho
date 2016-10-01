# forwad calls to makefiles in subdirs

MODELS_TEMPLATES_DIR=Models
CLEAN_SWIFT_DIR="Clean Swift"

install:
	${MAKE} -C ${MODELS_TEMPLATES_DIR} install && \
	${MAKE} -C ${CLEAN_SWIFT_DIR} install

install_templates:
	@mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	@rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)
	@cp -R $(TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

install_snippets:
	@mkdir -p $(XCODE_USER_SNIPPETS_DIR)
	@rm -fR $(XCODE_USER_SNIPPETS_DIR)/$(SNIPPETS_PREFIX)*
	@cp $(SNIPPETS_DIR)/* $(XCODE_USER_SNIPPETS_DIR)
	@echo "Restart Xcode to see changes!"

uninstall_templates:
	@rm -fR $(XCODE_USER_TEMPLATES_DIR)/$(TEMPLATES_DIR)

uninstall_snippets:
	@rm -fR $(XCODE_USER_SNIPPETS_DIR)/$(SNIPPETS_PREFIX)*

uninstall: uninstall_templates uninstall_snippets
	@echo "Uninstall Done"
	