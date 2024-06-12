#import "../../paddling-tongji-thesis/tongjithesis.typ": *

= 引用 <reference>

在本节（@reference）中，我们将探讨如何在 Typst
中进行参考文献引用和交叉引用，以便于读者查阅文献和方便地引用文档中的其他部分。

== 参考文献的引用

在学术论文或科技报告中，通常需要引用相关文献以支持观点或论证。为了方便读者查阅，我们需要在论文中标注参考文献。在
Typst 中，可使用 ```typ @``` 命令引用参考文献。参考文献的外观应符合国标 GB/T
7714-2015
的要求。请注意，Typst对国标的支持仍处于实验阶段，存在不兼容的情况（如专利引用格式），请谨慎使用。

在正文中，可使用 ```typ @``` 命令引用参考文献。例如：

#table(columns: (1fr, 1fr), [
  #set align(center)
  #strong[代码]
], [
  #set align(center)
  #strong[渲染结果]
], ```typ
这是一个引用示例 @book1。
  ```, [
  #h(2em)这是一个引用示例 @book1。
])

其中，`book1` 是参考文献的键值，即参考文献文件中每个条目的唯一标识符。引用命令会自动在文中插入相应文献序号，并在文末的参考文献列表中显示相应文献条目。

如果需要同时标注多个参考文献，可使用逗号分隔键值。例如：

#table(columns: (1fr, 1fr), [
  #set align(center)
  #strong[代码]
], [
  #set align(center)
  #strong[渲染结果]
], ```typ
这是一个引用示例 @book1 @online1。
  ```, [
  #h(2em)这是一个引用示例 @book1 @online1。
])

请注意，本模板所用的所有文献均为ChatGPT生成的。我们不保证这些文献的真实性。

以下是使用 `@` 命令的引用示例：

- 普通图书@book1 @book2
- 论文集、会议录@conf1 @conf2
- 科技报告@techreport1 @techreport2
- 学位论文@thesis1 @thesis2 @thesis3
- 专利文献@patent1 @patent2
- 专著中析出的文献@inbook1 @inbook2
- 期刊中析出的文献@qin2021 @article1 @article2
- 报纸中析出的文献@newspaper1 @newspaper2
- 电子文献@online1 @online2 @online3

另外，为了避免遗漏引用，有时候需要使用文献管理工具来管理参考文献，例如 Zotero 或
EndNote
等。这些工具可以帮助你轻松管理文献数据库，生成参考文献列表，甚至将参考文献直接插入到文档中。

无论使用何种方法，都应该注意文献的准确性和完整性。在引用文献时，应尽可能使用最新的版本，并注意对文献信息的正确引用和格式化。这样可以提高文献的可信度，也能为读者提供更多参考信息。

== 脚注

脚注是一种在文本底部添加注释或补充说明的方式。我们可以使用 `footnote` 命令添加脚注。

#table(
  columns: (1fr, 1fr), [
    #set align(center)
    #strong[代码]
  ], [
    #set align(center)
    #strong[渲染结果]
  ], ```typ
  脚注是一种在文本底部添加注释或补充说明的方式#footnote[通常，我们在脚注里也写完整的句子。在文本中使用脚注时，应该遵循学术规范，尽可能引用可信的来源。]。
    ```, [
    #h(2em)脚注是一种在文本底部添加注释或补充说明的方式#footnote[通常，我们在脚注里也写完整的句子。在文本中使用脚注时，应该遵循学术规范，尽可能引用可信的来源。]。
  ],
)

其中，中括号中的文本就是脚注的内容。编译文档后，脚注会出现在页面底部，并自动标上数字。

需要注意的是，在使用脚注时，应该尽量避免使用过多的脚注，以免影响文本的阅读体验。同时，脚注的内容应该尽可能简洁明了，突出重点，有助于读者理解和记忆文本内容。对于自己的观点和推断，应该明确标注为个人观点，以免误导读者。

== 交叉引用

在文档中，交叉引用是指引用文档中的某个标签或标记，例如章节、图表、公式或页码等。在
Typst 中，可以使用 ```typ <label>``` 命令为文档中的对象添加标签，使用 ```typ @``` 命令进行引用。

例如，我们可以在文档的其他位置使用 ```typ @``` 命令来引用@introduction：

#table(columns: (1fr, 1fr), [
  #set align(center)
  #strong[代码]
], [
  #set align(center)
  #strong[渲染结果]
], ```typ
请参见@introduction。
  ```, [
  #h(2em)请参见@introduction。
])

交叉引用在文档中很常用，可以帮助读者快速定位到相关内容，提高文档的可读性。但是，需要注意标签的唯一性和正确性，以及引用命令的正确使用方式。

由于我们对 Typst
中的浮动体（图表等）和公式的计数器进行了特殊处理，因此在引用浮动体和公式时，需要一些额外的操作。请参见@floats。
