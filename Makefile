clean:
	@rm -rf \
		auto-save-list \
		eln-cache \
		elpy \
		transient \
		.cache \
		.lsp-session* \
		tramp

clean-all: clean
	@rm -rf \
		elpa \
		quelpa \
		custom.el \
		projectile-bookmarks.eld \
		recentf \
