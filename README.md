# NJUBachelor 南京大学本科毕业论文（设计）LaTeX 模板

## 文件说明

| 文件 | 说明 |
|----|----|
| **njubachelor.cls** | 模板文件 |
| **njubachelor.cfg** | 模板配置文件 |
| **njubachelor.bst**   | 国标参考文献样式文件 |
| **njubachelor.pdf**   | 模板说明文档 |
| **njubachelor.dtx**   | 宏包源文件 |
| **njubachelor.ins**   | 宏包安装驱动 |
| **start.tex start.pdf** | 论文的默认模板及效果 |
| **test.tex test.pdf** | 测试文档及源文件 |
| **chapters** | 说明文档的章节文件 |
| **fortest** | 学校的排版要求 |
| **njulogos** | 校徽 |
| **refs** | 说明文档测试用文献数据库 |


将 njubachelor.cls njubachelor.cfg njubachelor.bst start.tex njulogos
复制到工作目录即可开始你的毕业论文了。

详细的使用说明请参考 test.pdf。

## 相关命令

从 njubachelor.dtx 生成 njubachelor.cls 和 njubachelor.cfg

```shell
xelatex njubachelor.ins
```

通过编译 njubachelor.dtx 得到模板的说明文档

```shell
xelatex njubachelor.dtx
makeindex -s gind.ist njubachelor.idx
makeindex -s gglo.ist -o njubachelor.gls njubachelor.glo
xelatex njubachelor.dtx
xelatex njubachelor.dtx
```

## 关于平台

本模板最新兼容 texlive 2015 ，
使用 CTeX 套件或者版本过旧的 texlive 套件可能引起错误，
还需要进一步的测试。

为解决 \bf 命令导致的正文中相应字体对应正文文本无法复制的问题，
宏包中的加粗宋体和楷书都使用华文字体进行了替换。
所以使用前请务必确保自己有 windows 的默认字体和华文字体。

Linux 和 Mac 下移植 Windows 字体，使用 texlive 2015 套件的人应该也可以正常编译。


## 关于底层宏包的更新

本模板最早基于 texlive 2012 版的 xeCJK 和 ctex 1.02c 宏包制作。
后 xeCJK 和 ctex 宏包进行了比较大的更新，
宏包代码全部使用 LaTeX3 的语法进行重构。
虽然新的宏包对旧版代码保持了一定的兼容性，
不过我仍旧在 v2.4 版本中使用了新的底层宏包接口。
经测试，在 texlive 2013 下，
使用 v2.3 版本以前的 njubachelor 宏包，
可以维持原有的排版效果。
对于论文已经定稿的同学，
如果更新了 texlive 套件到更新的版本，
**重新编译时务必要谨慎！**
由于 v2.4 版本更新了语法，
使用此版及以后版本，
请将 texlive 套件更新到 2015 以后的版本。



---

对模板的使用有疑问或者有改进意见的同学也欢迎和我联系

 * email: caozengle@163.com
 * QQ:    670434207
 * 也可以加我人人哦。
