# NJUbachelor

南京大学本科毕业论文（设计）LaTeX 模板

## 文件说明

| 文件 | 说明 |
|----|----|
| **NJUbachelor.cls** | 模板文件 |
| **NJUbachelor.bst**   | 国标参考文献样式文件 |
| **start.tex start.pdf** | 论文的默认模板及效果 |
| **test.tex test.pdf** | 说明文档及源文件 |
| **chapters** | 说明文档的章节文件 |
| **fortest** | 学校的排版要求 |
| **njulogos** | 校徽 |
| **refs** | 说明文档测试用文献数据库 |


将 NJUbachelor.cls NJUbachelor.bst start.tex njulogos 复制到工作目录即可开始你的毕业论文了。

详细的使用说明请参考 test.pdf。


## 关于平台

本模板使用 texlive 2012 制作，
使用 CTeX 套件或者版本过旧的 texlive 套件可能引起错误，
还需要进一步的测试。

XP 平台可能出现字体错误，可以自行更改字体定义的部分，
Windows XP 用户可以注释掉字体定义部分，
把载入宏包的字体选项由 nofonts 改为 winfonts，
当然，从 Win 7 移植必要的字体也是很好的解决方案。

字体问题主要由于平台的不兼容造成，但修改起来略有麻烦，
已经尽可能满足大多数人（Win 7 用户）的需求，
如果确实还有很多人反馈 bug，可以再考虑改进的方法。

Linux 和 Mac 下移植 Win 7 字体，使用 texlive 2012 套件的人应该也可以正常编译。

---

对模板的使用有疑问或者有改进意见的同学也欢迎和我联系

 * email: caozengle@163.com
 * QQ:    670434207
 * 也可以加我人人哦。
