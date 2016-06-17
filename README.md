# NJUBachelor
## 南京大学本科毕业论文（设计）LaTeX 模板

## 文件说明

以下文件在项目主页（源代码）中提供

| 文件 | 说明 |
|----|----|
| **njubachelor.bst**   | 国标参考文献样式 |
| **njubachelor.dtx**   | 模板源文件 |
| **njubachelor.ins**   | 模板安装驱动 |
| **start.tex** | 默认格式样例 |
| **test.tex** | 测试文档 |
| **chapters** | 测试文档的章节文件 |
| **format** | 学校的排版要求 |
| **njulogos** | 校徽 |
| **refs** | 测试文档文献数据库 |

以下文件并未包含于项目源码中，需自行编译生成。
这些文件可以在 release 的发布中找到。

| 文件 | 说明 |
|----|----|
| **njubachelor.cls** | 模板文类文件 |
| **njubachelor.cfg** | 模板配置文件 |
| **njubachelor.pdf**   | 模板说明文档 |
| **start.pdf** | 默认格式效果 |
| **test.pdf** | 测试文档 |

将 njubachelor.cls njubachelor.cfg njubachelor.bst start.tex njulogos
复制到工作目录即可开始你的毕业论文了。

详细的使用说明请参考 test.pdf。

## 模板安装并生成说明文档

如果直接下载项目主页的源代码，需自行完成安装和手册编译。
从 njubachelor.dtx 生成 njubachelor.cls 和 njubachelor.cfg

```shell
latex njubachelor.ins
```

通过编译 njubachelor.dtx 得到模板的说明文档

```shell
xelatex njubachelor.dtx
makeindex -s gind.ist njubachelor.idx
makeindex -s gglo.ist -o njubachelor.gls njubachelor.glo
xelatex njubachelor.dtx
xelatex njubachelor.dtx
```

test.tex 和 start.tex 自行用 `xelatex` 编译即可生成。

为方便使用，在项目源文件中提供了 make_doc.bat 文件，
可在 windows 平台安装并编译模板说明文档。
同时，为使用 `make` 的用户提供了 makefile。

## 兼容性

请统一使用 utf-8 编码撰写文档，
使用 `xelatex` 进行编译。

### 关于平台

本模板最新兼容 texlive 2016 ，
使用 CTeX 套件或者版本过旧的 texlive 套件会引起错误。

为解决 \bf 命令导致的正文中相应字体对应正文文本无法复制的问题，
宏包中的加粗宋体和楷书都使用华文字体进行了替换。
所以使用前请务必确保自己有 windows 的默认字体和华文字体。

Linux 和 Mac 下移植 Windows 字体，使用 texlive 2016 套件的用户应该也可以正常编译。


### 关于底层宏包的更新

本模板最早基于 texlive 2012 版的 xeCJK 和 ctex 1.02c 宏包制作。
后 xeCJK 和 ctex 宏包进行了比较大的更新，
宏包代码全部使用 LaTeX3 的语法进行重构。
虽然新的宏包对旧版代码保持了一定的兼容性，
不过 v2.4 版本中还是使用了新的底层宏包接口。
经测试，在 texlive 2013 下，
使用 v2.3 版本以前的 njubachelor 宏包，
可以维持原有的排版效果。
对于论文已经定稿的同学，
如果更新了 texlive 套件到更新的版本，
**重新编译时务必要谨慎！**
由于 v2.4 版本更新了语法，
使用此版及以后版本，
请将 texlive 套件更新到 2015 以后的版本。

## BibTex Style 模板 .bst 文件

v3.0 版以后，使用南大
[胡海星](https://github.com/Haixing-Hu/GBT7714-2005-BibTeX-Style)
编写的 bst 文件，
替换了原先
[吴凯](http://bbs.ctex.org/forum.php?mod=viewthread&tid=33591)
编写的 bst 文件。
`bibtex` 编译不再报错，以防止 `latexmk` 进行自动化编译过程被报错终止。

## 使用 latexmk 进行编译

使用 `latexmk` 编译，编译器会自动调用相关编译器，
直到解决所有的交叉引用并产生最正确的结果。
（前提是所有相关编译器都没有报错。）
原先编译测试文件 test.tex，
为了保证所有的交叉引用和参考文献引用都正确，
需要经过

```shell
xelatex test
bibtex test
xelatex test
xelatex test
```

以得到正确的结果。
（这还是不带索引的情况，如需生成索引，另需自行调用 `makeindex` 命令。）
现在只需要执行

```shell
latexmk -xelatex test
```

便可。同时，`latexmk` 还会自动判断需要的编译次数。
并非每次都要将相关编译程序全部重新执行。
同时，`latexmk` 还可以记录编译过程并清除编译中产生的辅助文件，
只需执行

```shell
latexmk -c test
```

即可。当 `-C` 大写时，连生成的 .pdf 文件都会一并清楚。




---

对模板的使用有疑问或者有改进意见的同学也欢迎和我联系

 * email: caozengle@163.com
 * QQ:    670434207
