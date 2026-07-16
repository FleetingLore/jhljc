// ============================================================
//  朴素集合论 · 全书（PDF 输出入口）
// ============================================================

#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 2.2cm),
  numbering: "1",
)

#set text(lang: "zh", size: 12pt, hyphenate: false)
#set heading(numbering: "1.")

#show heading.where(level: 1): it => {
  pagebreak()
  text(size: 20pt, weight: "bold", it.body)
  v(0.6em)
}

// ---- 图片路径（暂未使用）----
// #let img-dir = "assets/images/"

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

// ========== 前言 ==========
#heading(level: 1, outlined: false)[前言]

一个数学理论是一个被表达的思维模式。
集合论比较接近语言学，基于 ZFC 公理化集合论的数学，是数学领域目前的主流。

本书介绍的朴素集合论，介绍集合论的通用概念，以便理解 ZFC 等更深入的话题。

== 各章简介

=== 第一章  集合

集合可以理解成一种总称，例如"所有不大于 $3$ 的正整数"就是一个集合，也可以用它的全部元素来表示，即 $\{1, 2, 3\}$。

这的内容，和高中教材对集合的表述，基本重合。
介绍集合的基本概念，便于更多的读者能轻松地阅读此书。

=== 第二章  取样

取样是一个集合的函数，将任意的概念变成 $0$ 或 $1$，判断依据仅仅是它是否属于这个集合。
最后对容斥原理作出表述。

=== 第三章  组合

补充话题，可以跳过。

从计数原理开始，讨论幂、阶乘、排列、组合、相似情形的合并问题、最值问题。
大多会以集合为背景，并且阐述这些组合学基本概念和集合论的联系。

=== 第四章  函数

从笛卡尔积开始，讨论关系、函数、单射、满射、双射、复合、左逆、右逆。
在此之后是集合相关的函数运算律。

=== 第五章  基数的相等关系

给出基数的相等关系的定义，表述为什么双射的存在性能说明基数相等这个本质性特征。

从可数集开始，介绍更多的可数集。

从可数基数引出连续统基数，介绍更多的有连续统基数的集合。

=== 第六章  朴素的维数观点

补充话题，可以跳过。

无穷领域的集合论并不直观，于是简单讨论一下符合直觉的高维空间应该怎么构造，以另一个视角描述无穷。
另外也会讨论一些自由度的话题，仅限于整数，一个系统的所有可能性是一个空间，它的维数就是这个系统的自由度。

这实质上是粗略的线性几何和自由度分析的表述。

=== 第七章  基数的不大于关系

讨论基数的不大于关系应该如何定义，介绍一些证题，例如 Cantor-Bernstein 定理，涉及一些 ZFC 的知识。

=== 第八章  基数运算

运算的定义是为了更方便地表达。

定义基数的运算之后，讨论更多的证题。

=== 第九章  序

（正在学）

=== 第十章  有序集

（正在学）

== 符号表

本书采用了一些非标准符号，例如将 $bold(1)_A$ 和 $chi_A$ 记作 $check(overline(A))$，只是因为觉得在下标位置写集合的表示会看不清。
为了避免困惑，本书的末尾有各个符号的说明。
这些特定的记法，将在这个数理逻辑系列的讲义和课程，一直沿用。

在这个笔记中，笔者采用自己的排版风格，请勿认为这是通用的规范。

== 参考资料

这本书的目录，目前还是按这本书来的。
书上有一些启发性的问题，其中一些很难。
本书的最初版本，其实是这本书的直接抄写，以及对书上习题的简要导读。
因为版权的问题，还有作者作为这本书的读者，有一些自己的想法，于是有了这本书现在的样子。

`[1]` A. Shen, N. K. Vereshchagin. 陈光还（译）. _集合论基础_，高等教育出版社，北京，2013.

本系列有相当一部分篇幅，基于以下这本书所在的 _逻辑与形而上学教科书系列_，后续还将继续深入。
这本书比较完整得表述了 ZFC 公理化集合论的基本内容。

`[2]` 郝兆宽，杨跃. _集合论 —— 对无穷概念的探索_，复旦大学出版社，上海，2014.

一本科普读物小书，介绍数理逻辑领域的通用概念。

`[3]` John N. Crossley 等，夏素敏（译），闫佳亮（译）. _数理逻辑是什么_，中国轻工业出版社，北京，2018.

黄老师的公理集合论网课。
本书作者目前还是这个领域的初学者，只是希望在通俗易懂的方面下功夫，至于教学的专业性尚且不能胜任。

`[4]` #link("https://space.bilibili.com/1961305354/lists/7673673")[公理集合论（黄书棋）- bilibili]

Azula 老师经常分享一些高度形式化表述的特定话题。

`[5]` #link("https://space.bilibili.com/663411660")[A-zula - bilibili]

- #link("https://www.bilibili.com/video/BV1154veeEuE")[容斥原理]
- #link("https://www.bilibili.com/video/BV1NqNaeiEgf")[示性函式的一些補充]
- #link("https://www.bilibili.com/video/BV1mw8ZzwEVp")[容斥原理的構造性證明]
- #link("https://www.bilibili.com/video/BV11to9YkEmS")[实数集是否是可数集]
- #link("https://www.bilibili.com/video/BV1mbodYSEjr")[不可数个集的交和并]
- #link("https://www.bilibili.com/video/BV1yt5zzqEqh")[淺談無窮]
- #link("https://www.bilibili.com/video/BV1zsbdzyEat")[依賴選擇公理（DC）]
- #link("https://www.bilibili.com/video/BV1b7KkzYETn")[并集的基数问题]
- #link("https://www.bilibili.com/video/BV1oZYaeFEG9")[Cantor-Bernstein 定理]
- #link("https://www.bilibili.com/video/BV1wJZ6YvExW")[Bernstein定理及其應用]

物形数语 老师把基础知识讲得很清楚，生怕我们看不懂。

`[6]` #link("https://space.bilibili.com/3546617711953935")[物形数语 - bilibili]

- #link("https://www.bilibili.com/video/BV1JD421j79J")[康托尔和集合论]
- #link("https://www.bilibili.com/video/BV16BPce6EmS")[集合势的重要不等式]
- #link("https://www.bilibili.com/video/BV1CXwXzyEEd")[有序集 有序域]

#quote(block: true)[欢迎向我推荐参考资料！]

== 石山  讲解

#link("https://space.bilibili.com/411282991/lists/8463276")[讲解 - 发行版 - bilibili]

#link("https://www.douyin.com/video/7657174171297859304")[讲解 - 预发布版 - douyin]

== 石山  笔记

#link("http://ducia.site/psjhl")[笔记 - 发行版 - ducia]

#link("https://fleetinglore.github.io/psjhl/")[笔记 - 测试版 - ghPages]

#link("https://github.com/FleetingLore/psjhl")[笔记 - Github 存储库 - Github]

== 本书作者  版权所有

本作品采用 #link("https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh-hans")[知识共享 署名 - 非商业性使用 - 相同方式共享 4.0 国际（CC BY-NC-SA 4.0）] 许可协议。

- *署名* —— 您必须标明作者（石山），并提供许可证的链接
- *非商业性使用* —— 您不得将本作品用于商业目的
- *相同方式共享* —— 如果您对本作品进行改编、转换或基于本作品进行创作，您必须基于相同的协议分发您的作品。

== 积极接收意见建议

可以在 Github 提交 issue 以提供意见建议。

当然，也可以批评我的写作排版习惯，但希望能说清楚理由。

== 交流群

如果以后有必要，会建立一个课程试讲群和若干交流群。

== 致谢

感谢给我提出过意见建议的前辈，大多是在 qq 上的数学交流群的往事。

在阅读别人的著作的时候，有一种被爱的感觉，他们想让我了解他们的思想。
而我，有自己的兴趣，学那些看似与现实世界无关的东西，并非有不务正业的感觉。

#v(2em)
石山 `Macro__9@outlook.com`

2026 年 7 月 15 日

// ========== 目录 ==========
#pagebreak()
#outline(title: [目录], indent: 1.5em, depth: 2)
#pagebreak()

// ============================================================
//  第一章  集合
// ============================================================

= 第一章  集合

== 1.1  集合的基本概念

*名词: 集合*  名词指代事物，*集合* 是一些名词的总称。

例如，当我们说"自然数集"时，或用它的符号 $\mathbb{N}$，是在用一个词，代指 $0$，$1$，$2$，$\cdots$ 这些数，这让我们可以简洁地指代每一个自然数。
所谓名词就是 $0$，$1$，$2$，诸如此类，无论每一个数字意味着什么，$\mathbb{N}$ 是它们的总称。
集合论如同语言学上的代数学，研究如何更严谨地表达。

// 图片 1.1.1 暂略

"某某学校的高一的同学"是一个性质，可以在某某学校范围内选择出高一的同学，也可以在高一的同学中选择出属于某某学校的那些。
这个表述可以意味着所有属于这一类的同学，但加上"所有"这两个字会更明确，即"某某学校的所有高一同学"，因为原表述也可能指的是某个同学或某些同学，如"某某学校的高一的同学把这道题写出来了"这种表述。
本书所谓的集合，仅仅由所有属于它的元素构成，除此之外没有更多的信息了。

更接近语言学时，不仅是量词的选取，就连选择的依据也会让表述显得模糊，比如"一个刚考完高一的期末卷子的同学"是"高一"的么？
本书的集合都是明确的，即讨论一个集合时，每一个对象，要么属于这个集合，要么不属于它，例如讨论 $x$ 是否属于自然数集，只要把 $x$ 的每一位按十进制写出来了，有 $x \in \mathbb{N}$。

我们对集合的定义，所谓的"总称"到底是什么东西，过于笼统，这导致了自指问题，朴素集合论没能解决。
参考 #link("https://chat.deepseek.com/share/90yhaa52nubmo69jep")[罗素悖论]。
本书并不会去钻研这类问题，只是规避那些构造得不明确的指代。

以下是一些集合的例子。

=== 数集

*自然数集*

$ \mathbb{N} = \{ 0, 1, 2, \cdots \} $

某些整数构成的集合。
我选这几个数字作为例子，并没有意味着什么特别的事情。

$ A = \{1, 2, 3, 5, 7\} $

*整数集*，所有整数构成的集合。

$ \mathbb{Z} = \{ \cdots, -2, -1, 0, 1, 2, \cdots \} $

*有理数集*，其中每个元素由某两个整数的除法确定。

$ \mathbb{Q} = \{ p/q \mid p \in \mathbb{Z}, q \in \mathbb{Z} \setminus \{ 0 \} \} $

数字是数集的基本元素，用 $\in$ 这个符号表示元素和集合之间的"属于"关系。
例如 $-6$ 属于整数集，可以记作

$ -6 \in \mathbb{Z} $

而 $-6$ 不属于自然数集，可以记作

$ -6 \not\in \mathbb{N} $

=== 图形

点是图形的基本元素。

例如直线有很多点，平面也有很多点。

// 图片 1.1.2 暂略

注意，一般说平面也是点的集合，但不会去说是直线的集合。

=== 属于关系

*名词: 属于关系*  一般地，可以记"$x$ 是 $A$ 的一个元素"，即"$x$ 和 $A$ 是属于关系"为

$ x \in A $

这个时候，在提及 $A$ 的时候，相当于间接在提及 $x$ 的事，但是此时提及的是所有和 $x$ 一样作为它的元素的东西。

=== Venn 图

用图形的形式画出所有可能的交集区域，所谓 #link("https://chat.deepseek.com/share/ft7cwyr7sv017pwf49")[Venn 图]。
这比直接列举所有的元素，或在一个范围中选取更小的部分，更直观地表达集合的元素分布有多广泛。
后文讨论集合的运算，会大量用到 Venn 图。

== 1.2  子集关系

// 在网课讲解中, 提及形式定义, 但也不去深入解释

$A$ 是 $B$ 的子集，记作 $A \subset B$。

// 图片 1.2.1 暂略

=== 一些数集的子集关系

$ \mathbb{N} \subset \mathbb{Z} \subset \mathbb{Q} $

// 图片 1.2.2 暂略

=== 一些图形的子集关系

$ 点 P \in 面 \alpha, 点 Q \in 平面 \alpha \to 线 PQ \subset 面 \alpha $

// 图片 1.2.3 暂略

=== 两集合相等

$A$ 和 $B$ 互为子集。

$ A = B \Leftrightarrow A \subset B \wedge B \subset A $

// 图片 1.2.4 暂略

=== 两集合为真子集关系

构成子集关系但不构成相等。

$ A \subsetneqq B \Leftrightarrow A \subset B \wedge B \not\subset A $

// 图片 1.2.5 暂略

=== 空集

// 在网课讲解中, 简单提及一下怎么互相推导

空集是所有集合的子集。

没有元素属于空集。

#quote(block: true)[可以想一下这两个表述有什么关系。]

#link("https://chat.deepseek.com/share/1m9nminmd6i9iemho7")[参考]

== 1.3  二元运算

// 在网课讲解中, 提及形式定义, 但也不去深入解释

// 在网课讲解中, 以 A = {1, 2, 3}, B = {2, 3, 4, 5} 举例

=== 交集

记作 $A \cap B$。

取两集合的重复元素。

// 图片 1.3.1 暂略

=== 并集

记作 $A \cup B$。

两集合的所有元素。

// 图片 1.3.2 暂略

=== 差集

记作 $A \setminus B$。

仅在前者的元素。

注意，$A \setminus B$ 和 $B \setminus A$ 一般是不同的集合。

// 图片 1.3.3 暂略

=== 补集

如果 $B \subset A$，也可以称 $A \setminus B$ 为 $B$ 在 $A$ 的补集。

#link("https://chat.deepseek.com/share/zz47emdl2elwmh59sq")[朴素集合论下没有绝对全集]。
为此，补集总是相对某个集合而言的。

=== 对称差集

$A \bigtriangleup B$。

仅仅属于两者中某一个集合的元素。

// 图片 1.3.4 暂略

用已经定义过的交、并、差运算，也能把对称差集表示出来。

$
A \bigtriangleup B
= (A \setminus B) \cup (B \setminus A)
= (A \cup B) \setminus (A \cap B)
$

显然，也能用对称差和一些别的运算，表示另一些别的运算，例如

$ A \cap B = (A \cup B) \setminus (A \bigtriangleup B) $

#quote(block: true)[$A \setminus B$ 的结果能用另外三种运算表示么？]

#link("https://chat.deepseek.com/share/fprez99nf770yqzxbh")[参考]

== 1.4  运算律

这一节，更像是参考资料，有很多结论性的表述，其中大部分会给出证明。
这样的章节往往放在每一章的最后，可以跳过，不影响后续的阅读。

// ...

// ============================================================
//  第二章  取样
// ============================================================

= 第二章  取样

== 2.1  基本概念

*名词: 取样*  一个集合 $A$ 的 *取样*，记作 $\check{\overline{A}}$，对任意的 $x$ 有

$
\check{\overline{A}}(x) = \begin{cases}
1, & x \in A \\
0, & x \not\in A
\end{cases}
$

*名词: 基数*  如果集合 $A$ 的元素是有限的，即可以数完，那么可以用一个自然数表示它有多大。
这个数字集合称为 $A$ 的 *基数*，记作 $|A|$。
这是第四章的事情，在那里会提及无穷集合。

对于有限情形，可以给出这样一个等式

$
|A| = \sum_{x \in A} \check{\overline{A}}(x)
$

这里的 $\sum$ 指的是，对所有 $x$ 确定的 $\check{\overline{A}}(x)$ 的求和。

对于有限情形，如果两个集合对任意 $x$ 取样总是相等，那么它们的基数相等。
反过来就不一定成立了，但第四章会提及"一一对应"的概念，两个集合的基数相等即存在元素的一一对应，这也是无穷集基数的一部分概念。

第五章会介绍更多和基数有关的事。

== 2.2  运算结果的取样

集合的运算结果，也是一个集合，怎么被构成参与运算的集合的元素确定？

=== 交集的取样

注意到，交集的取样是被确定的。
对任意的 $x$：

$
\check{\overline{A \cap B}}(x) = \check{\overline{A}}(x) \times \check{\overline{B}}(x)
$

// 此处用 $\times$ 表示乘法, 主要是为了照顾小学的读者. 这事会在书末尾的符号表细说

或者如此简写：

$
\check{\overline{A \cap B}} = \check{\overline{A}} \times \check{\overline{B}}
$

如图，既然 $\check{A}$ 和 $\check{B}$ 只有两种情况，那么 $\check{\overline{A \cap B}}$ 只有四种情况。

// 图片 2.2.1 暂略

=== 差集的取样

并集的取样表示也不是那么显然，先放放。
四个运算中，第二显然的是差集的取样。

// 图片 2.2.2 暂略

观察表格，差集和并集的取样值在 $0/1$ 的分布上很像。
不难发现，只要把 $\check{B}$ 的 $0$ 换成 $1$，$1$ 换成 $0$，就是差集的表格。
于是有：

$
\check{\overline{A \setminus B}} = \check{\overline{A}} \times (1 - \check{\overline{B}})
$

// 图片 2.2.3 暂略

*名词: 补样*  为了形式上的简洁，再定义集合的 *补样*，记作 $\hat{\overline{A}}$，对任意的 $x$，有：

$
\hat{\overline{A}}(x) = 1 - \check{\overline{A}}(x) = \begin{cases}
0, & x \in A \\
1, & x \not\in A
\end{cases}
$

于是将差集的取样重写为：

$
\check{\overline{A \setminus B}} = \check{\overline{A}} \times \hat{\overline{B}}
$

=== 并集的取样

通过两次补样，得到并集的取样。
这在逻辑上和计算并集的取样差不多，但形式上复杂一些。

// 这个过程在表述上并不直接, 而且涉及到深入的话题, 只是随着 Venn 图的直观感, 简单略过了

$
\check{\overline{A \cup B}} = \hat{\overline{\hat{A} \times \hat{B}}}
$

// 图片 2.2.4 暂略

#quote(block: true)[
找张能打草稿的纸，尝试证明：

$ (A \cup B) \cap (A \cup C) = A \cup (B \cap C) $

$ (A \cap B) \cup (A \cap C) = A \cap (B \cup C) $

提示：一个集合仅仅由它有哪些元素决定，可以通过证明它们对任意 $x$ 的取样相等来说明集合相等。
]

=== 对称差的取样

根据 $A \bigtriangleup B = (A \cup B) \setminus (A \cap B)$，可以得到：

$
\begin{aligned}
\check{\overline{A \bigtriangleup B}}
&= \check{\overline{A \cup B}} \times \hat{\overline{A \cap B}} \\
&= \text{（简短的吓人计算过程）} \\
&= \check{\overline{A}} + \check{\overline{B}} - 2 \times \check{\overline{A \cap B}}
\end{aligned}
$

== 2.3  子集取样

=== 不交集合的并集的取样

在讨论并集的时候，给出过这样的公式：

$
\check{\overline{A \cup B}} = \check{\overline{A}} + \check{\overline{B}} - \check{\overline{A \cap B}}
$

如果已知 $A$ 和 $B$ 没有交集，即 $\check{\overline{A \cap B}}$ 恒为零，那么留下了简单而直接的加法运算：

$
\check{\overline{A \cup B}} = \check{\overline{A}} + \check{\overline{B}}
$

对于 $n$ 个不交集合，注意到 $n$ 元容斥原理的等式右边，在单个集合的取样之后，全是零。
于是：

$
\check{\overline{A_1 \cup A_2 \cup \cdots \cup A_n}} = \check{\overline{A_1}} + \check{\overline{A_2}} + \cdots + \check{\overline{A_n}}
$

// 图片暂略

=== 小子集取样

有了这样一个加法公式，只要表示每个小的不可分区域的取样，然后加起来，就能表示任何若干集合的子集区域的。

*名词: 族*  若干集合的统称是 *族*。我们在用这个字去指代一个集合的时候，知道它的元素就是集合。

*名词: 小子集*  将一个族的不可再分交集的集合称为 *小子集*，并且要求不含空集。

显然 $n$ 个集合的族，最少有 $0$ 个小子集，最多有 $2^n - 1$ 个。
小子集最多的情形是怎么来的呢？
考虑外部区域之后，每次加一个集合，最多让原本的每个划分再次一分为二，所以计数翻倍，而小子集又不考虑外部，所以再减个 $1$，所以公式应该形如 $2^{\square} - 1$，而最初只有一个小子集，所以得到 $2^n - 1$。

下面讨论小子集的取样。
当小子集是每个集合的交集，那么这个取样就是简单的取样乘法：

$ \check{\overline{A_1 \cap A_2 \cap \cdots \cap A_n}} = \prod_{1..n} \check{\overline{A}} $

这边用了 $\prod$ 表示很多很多项的乘法，是一种简写。

对于一般的小子集，比如说它在 $k$ 个集合的内部，在 $n - k$ 个集合的外部，分别记为 $I_1$, $I_2$, $\cdots$, $I_k$ 和 $O_1$, $O_2$, $\cdots$, $O_{n - k}$，得到一个类似的等式：

$
\check{\overline{(I_1 \cap I_2 \cap \cdots \cap I_k) \setminus (O_1 \cup O_2 \cup \cdots \cup O_{n - k})}} = \prod_{1..k} \check{\overline{I}} \times \prod_{1..n - k} \check{\overline{O}}
$

=== 子集取样

...（此处回过来处理那个问题）

== 2.4  容斥原理

=== 二元情形

如果尝试将补样的概念退下，将并集的取样用别的集合的取样来表示：

$
\begin{aligned}
\check{\overline{A \cup B}}
&= 1 - (1 - \check{A}) \times (1 - \check{B}) \\
&= \check{\overline{A}} + \check{\overline{B}} - \check{\overline{A \cap B}}
\end{aligned}
$

又注意到 $\check{A} \times \check{B} = \check{\overline{A \cap B}}$，我们得到了所谓的容斥原理。

// 这也是筛法原理的二维情形, 但是我不太想过多提及它

$
\check{\overline{A \cup B}} = \check{\overline{A}} + \check{\overline{B}} - \check{\overline{A \cap B}}
$

对于高中生，或者是年龄更大一些的读者，可能对这种题目有些印象：

#quote(block: true)[
某某学校有 $a$ 位班主任，有 $b$ 位数学老师。
教务处有次开会，把班主任和数学老师都喊过去了，除此之外没有请别的老师过去。

当时有 $c$ 位老师过去开会，那么可以知道有且仅有 $a + b - c$ 位老师是带数学课的班主任。
]

=== 三元情形

与简单的二元情形同理，将容斥原理推广到三元。
通常认为没有叠加的取样才是最简表示。

$
\begin{aligned}
&\check{\overline{A \cup B \cup C}} \\
&= \hat{\overline{\hat{A} \times \hat{B} \times \hat{C}}} \\
&= \hat{\overline{(1 - \check{A}) \times (1 - \check{B}) \times (1 - \check{C})}} \\
&= \text{（优雅而漫长的展开过程）} \\
&= \hat{\overline{1 - \check{A} - \check{B} - \check{C} + \check{\overline{A \cap B}} + \check{\overline{B \cap C}} + \check{\overline{C \cap A}} - \check{\overline{A \cap B \cap C}}}} \\
&= \check{\overline{A}} + \check{\overline{B}} + \check{\overline{C}} - \check{\overline{A \cap B}} - \check{\overline{B \cap C}} - \check{\overline{C \cap A}} + \check{\overline{A \cap B \cap C}}
\end{aligned}
$

// 图片 2.4.1 暂略

// 我觉得此处不需要说明 $\check{A} \times \check{B} \times \check{C} = \check{\overline{A \cap B \cap C}}$

=== 四元情形

此时的表达式，还有表示一般情形的 Venn 图，已经有些难看了。

$
\begin{aligned}
&\check{\overline{A_1 \cup A_2 \cup A_3 \cup A_4}} \\
&= \hat{\overline{\hat{A_1} \times \hat{A_2} \times \hat{A_3} \times \hat{A_4}}} \\
&= \hat{\overline{(1 - \check{A_1}) \times (1 - \check{A_2}) \times (1 - \check{A_3}) \times (1 - \check{A_4})}} \\
&= \text{（漫长无聊的展开过程）} \\
&= \check{\overline{A_1}} + \check{\overline{A_2}} + \check{\overline{A_3}} + \check{\overline{A_4}} \\
&\quad - \check{\overline{A_1 \cap A_2}} - \check{\overline{A_1 \cap A_3}} - \check{\overline{A_1 \cap A_4}}
      - \check{\overline{A_2 \cap A_3}} - \check{\overline{A_2 \cap A_4}}
      - \check{\overline{A_3 \cap A_4}} \\
&\quad + \check{\overline{A_1 \cap A_2 \cap A_3}} + \check{\overline{A_1 \cap A_2 \cap A_4}}
      + \check{\overline{A_1 \cap A_3 \cap A_4}} + \check{\overline{A_2 \cap A_3 \cap A_4}} \\
&\quad - \check{\overline{A_1 \cap A_2 \cap A_3 \cap A_4}}
\end{aligned}
$

// 图片 2.4.2 暂略

=== 一般情形

$n$ 个集合构成的大的并集的取样，如何被子集的取样确定？

$
\begin{aligned}
&\check{\overline{A_1 \cup A_2 \cup \cdots \cup A_n}} \\
&= \check{\overline{A_1}} + \check{\overline{A_2}} + \cdots + \check{\overline{A_n}} \\
&\quad - \check{\overline{A_1 \cap A_2}} - \check{\overline{A_1 \cap A_3}} - \cdots - \check{\overline{A_1 \cap A_n}} \\
&\quad \quad - \check{\overline{A_2 \cap A_3}} - \cdots - \check{\overline{A_2 \cap A_n}} \\
&\quad \quad \vdots \\
&\quad \quad - \check{\overline{A_{n - 1} \cap A_n}} \\
&\quad \vdots \\
&\quad + (-1)^{n + 1} \ \check{\overline{A_1 \cap A_2 \cap \cdots \cap A_n}}
\end{aligned}
$

其中的 $(-1)^{n + 1}$，当 $n$ 为奇数时就是 $1$，当 $n$ 为偶数时就是 $-1$。
因为每增加一个 $A_{\square}$，等式右边都会多写一次 $(1 - \check{A_{\square}})$，让下一个新的深度的交集组合乘上又一个 $-1$。

这在高中数学竞赛的教材，常常采用一种很直接的证法，即数学归纳法：

// 此处故意回避了大于等于号

#quote(block: true)[
经分析，二元情形成立。

假设这个等式对 $n$ 元情形成立，此处 $n = 2, 3, 4, 5, \cdots$。

加了一个新的集合参与并集运算，这个等式还能变为原本的形式，唯一的区别只不过是 $n$ 换成了 $n + 1$，于是这个等式对 $n + 1$ 成立。
]

// 我们的证法, 本质上是用代数的性质表示集合的性质. 对集合论熟悉的读者, 可能此时已经想到, 取样的等式就是基数的等式. 在下一节表述这个事

#quote(block: true)[尝试求解 $n$ 个集合的对称差的取样。]

#link("https://chat.deepseek.com/share/ev512o0s2ptbx3ces7")[参考]

// ============================================================
//  第三章  组合
// ============================================================

= 第三章  组合

（本章内容待补充）

