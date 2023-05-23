# 我是如何使用 `Documenter.jl` 来搭建这个网站的

多年前，人们流行写博客。于是我也写博客。

现在，人们讲究“碎片化”。但是稍微长一点的文章还是有必要的。
我本来也是想写一些博客，用了一段时间的这样那样的博客系统。
但是我一无写日记之习惯，二觉得按照时间来组织内容是十分无聊的事情。
我本质上不想做那种有时效性的事，所以我的需求是做一个以长文本为主要内容的静态网站，而不是博客。
（其实我认为很多技术博客都应该符合这样的特征。）
我也看了很多静态网站的生成器，但没有特别满意的。

最近开始用Julia写一些项目，很顺手。
Julia里的文档生成器是`Documenter.jl`，生成的网站算是不会看腻的风格，语法又是 Markdown，算比较熟悉的语法。

`Documenter.jl` 很好，但还是有一些坑可能会被踩中。
但还好坑比较少。如果一切顺利的话，用这个工具去做一个课程网站也是很顺手的，以后工作中可以试试看。

## 基本思路

利用 `Documenter.jl` 作为静态网站生成器，生成网站，然后推到 [GitHub Pages](https://pages.github.com/) 去。
当然，除了GitHub的服务，也可以选择别家，例如国内的那几家。

## 安装工具

我会在 Linux 下完成本文所述的过程，你如果是 Mac 用户，应该不会有太大的差别。
但是如果你是 Windows用户，最省事的方法是在你的WSL里装 Linux 的版本。

首先安装 Julia，在[官方网站](https://julialang.org/)下载就好了。
按照自己的习惯去安装。我原来的习惯是整包解压到 `~/.local/opt/julia-x.y.z` 下，然后在 `~/.local/bin` 里面添加指向 Julia binary 的软链接。
最近我也开始用 `juliaup`，也很好用。这一步完成以后，你应该可以在终端里面输入 `julia`，然后可以出现 Julia 的 REPL。

安装好 Julia 后，进入它的 REPL，按下 `]` （右方括号），就进入了它的包管理器。
然后打 `add Documenter， LiveServer`，回车。等等网络，工具就安装好了。

然后你需要安装 `git` 和 `make`。如果是开发者的话，应该系统里面已然装好了。没装的人，可以用包管理器装一下，例如 `sudo apt install git`。

## 写你的文章去

基本上按照 `Documenter.jl` 的 [Guide](https://juliadocs.github.io/Documenter.jl/stable/man/guide/) 即可。

当然那个东西是个英文的，我也理解有的人读英文费劲。所以还有一个比较简单的方法是到我的 GitHub 里 fork 这个 [Repo](https://github.com/zhaiyusci/notes/tree/main)，
克隆到本地，然后用 `ag` 检索 `Yu Zhai`，也就是我的名字，然后一个个改掉。接下来就是去 repo 里的 `docs/src` 里，可以看到一些后缀是 `.md` 的文件。这些就是文章了。
里面有个叫 `index.md` 的，这个是主页，你进去改内容。其他的页面就是文章了，你可以直接删掉，自己创建自己的。请用 Markdown 格式写文章，具体参考上面的手册。
尤其是你又有个性化需求，又是公式
```math
\frac{-b\pm\sqrt{b^2-4c}}{2a}
```
又是图    
![就是个例子](afig.svg)    
的，你还是啃啃手册比较好。

如果你看了手册，那你应该创建了一个 `make.jl` 文件在 `docs` 里，里面内容大约是
```julia
using Documenter, Notes

makedocs(sitename="Yu Zhai's Notes")
```
那些直接复制我的 repo的人也会有这个。然后你运行 `julia --project make.jl` 可以生成网站的文件。你可以在发布前先看看，文件在 `docs/build` 里。
进到这个路径，运行 `julia -e "using LiveServer; serve()"`，然后按照终端提示，去浏览器打开 `localhost:8000` ，就可以看到你的网站。

## 发布在 GitHub 上

> 以下内容受 Rust 语言的 `mdBook` [Wiki](https://github.com/rust-lang/mdBook/wiki/Automated-Deployment%3A-GitHub-Pages) 启发，特此声明。

上面一步做好了，你想发布到 GitHub。坑来了。你会发现官方手册里单讲了使用Travis CI的方法。
这个东西虽然说给了个人使用者试用，但我的想法还是不想用这种付费服务。毕竟我生成这个小网站，用自己的电脑几秒钟好了，为何要去用人家的服务器？

那我的方法就是自己写个 `Makefile`，把生成的网站自动放到网站 repo 的 `gh-pages` 分支。具体做法是其实有两种，一种是用`ghp-import`，还有一种可以用`git worktree`。同样，偷懒的朋友，我的 repo里面 `Makefile` 已经写好了，直接用即可。

希望大家都多写多交流!
