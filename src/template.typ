// ============================================================
//  朴素集合论 · 共享模板
//  所有小节文件 import 此模板
// ============================================================

#set text(
  lang: "zh",
  size: 12pt,
  hyphenate: false,
)

#set heading(numbering: "1.")

#set figure(gap: 1.2em)

// ---- 图片路径 ----
#let img-dir = "assets/images/"

// ---- 全宽插图（不包 figure，始终 100% 宽）----
#let img(name) = {
  image(img-dir + name)
}

// ---- 自适应插图（figure：手机全宽，电脑右侧 40%）----
#let fig(name, caption: none) = {
  figure(
    image(img-dir + name, width: 100%),
    caption: caption,
  )
}
