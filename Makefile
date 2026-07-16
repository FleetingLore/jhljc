# ============================================================
#  朴素集合论 · 构建
# ============================================================

HOST  ?= root@160.202.47.107
DIR   ?= /var/www/psjhl

.PHONY: pdf html deploy serve clean all

# ---- PDF 全书 ----
pdf:
	typst compile src/book.typ psjhl.pdf

# ---- HTML 网站 ----
html:
	typbook build
	cp -r assets site/

# ---- 部署 ----
deploy: html
	rsync -avz --delete site/ $(HOST):$(DIR)/

# ---- 本地预览 ----
serve:
	typbook serve

# ---- 一次性构建 ----
all: pdf html

# ---- 清理 ----
clean:
	typbook clean
	rm -f psjhl.pdf
