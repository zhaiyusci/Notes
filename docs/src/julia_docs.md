# 我是如何使用 `Documenter.jl` 来搭建这个网站的

多年前，人们流行写博客。于是我也写博客。

现在，人们讲究“碎片化”，我本来也是想写一些博客。用了一段时间的这样那样的博客系统。但是我一无写日记之习惯，二觉得按照时间来组织内容是十分无聊的事情。我本质上不想做那种有时效性的事，所以我的需求是做一个以文本为主要内容的静态同站，而不是博客。我也看了很多静态网站的生成器，但没有特别满意的。

Python的静态网站生成器，如Pelican之流，我是用过的。但本人的确不喜欢 Python。C语言系的Doxygen太丑……其他语言又不懂。最近开始用Julia写一些项目，很顺手。Julia里的文档生成器是Documenter.jl，生成的网站
算是不会看腻的风格，语法又是 Markdown,算比较熟悉的语法。

Documenter.jl 很好，但还是有一些坑可能会被踩中。但还好坑比较少。如果一切顺利的话，用这个工具去做一个课程网站也是很顺手的，以后工作中可以试试看。

# 基本思想
基本思想还是不要花钱。并不是说多么抠门，而是花了钱反而会闹得很不愉快。去租VPS也会遇到网络攻击、广告等等问题，要是用现成的服务又常常有交一辈子钱结果人家说散伙不做了这种尴尬的事情发生。加之我十分讨厌被平台绑架。
而如果咬定了一分钱不能花的思想，自然就会选择 [GitHub Pages](https://pages.github.com/)。
额外的好处是可以自己控制自己的内容。当然，除了GitHub的服务，也可以选择别家，例如国内的那几家。

# 安装工具
首先安装 Julia ，这没有什么可以说明的，在[官方网站](https://julialang.org/)上下载就好了。但是如果你是 Windows用户，你最好是在你的WSL里装 Linux 的版本，因为下文我会用 make 来生成 文件，如果是在 Windows 下这些工具又要配一次，很麻烦。

安装好 Julia 后，进入它的REPL,按下 `]` (右方括号），就进入了它的包管理器，然后打 `add Documenter`，回车。等等网络，主工具就安装好了。
另外有个小工具`ghp-import`，可以用也管理器安装，如在Manjaro下，`pacman -S python-ghp-import`。