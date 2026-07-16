// ============================================================
//  朴素集合论 · 全书（PDF 输出入口）
// ============================================================

#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.2cm),
  numbering: "1",
)

#set text(lang: "zh", size: 12pt)
#set heading(numbering: "1.")

#show heading.where(level: 1): it => {
  pagebreak()
  text(size: 20pt, weight: "bold", it.body)
  v(0.6em)
}

// ========== 封面 ==========
#align(center)[
  #v(4cm)
  #text(size: 28pt, weight: "bold")[朴素集合论]
  #v(0.6cm)
  #text(size: 16pt)[石山]
  #v(3cm)
  #text(size: 11pt, fill: luma(150))[
    本作品采用 CC BY-NC-SA 4.0 许可协议
  ]
]
#pagebreak()

// ========== 目录 ==========
#outline(title: [目录], indent: 1.5em, depth: 2)
#pagebreak()

// ========== 正文 ==========
= 第一章  集合, 基数

#include "1-1.typ"
#include "1-2.typ"
#include "1-3.typ"
#include "1-4.typ"
#include "1-5.typ"
#include "1-6.typ"
#include "1-7.typ"
#include "1-8.typ"

= 第二章  有序集

#include "2-1.typ"
#include "2-2.typ"
#include "2-3.typ"
#include "2-4.typ"
#include "2-5.typ"
#include "2-6.typ"
#include "2-7.typ"
#include "2-8.typ"
#include "2-9.typ"
#include "2-10.typ"
#include "2-11.typ"
#include "2-12.typ"
#include "2-13.typ"
