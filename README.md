[![Word Art](docs/images/wordArt.webp)](https://llm-security-demo.org/)

# 欢迎来到 **LLM Security Wiki**！

[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-brightgreen?logo=gitpod&style=flat-square)](https://gitpod.io/#https://github.com/llm-security-demo/llm-security-demo)  [![GitHub Actions](https://img.shields.io/github/actions/workflow/status/llm-security-demo/llm-security-demo/build.yml?style=flat-square&branch=master)](https://github.com/llm-security-demo/llm-security-demo/actions/workflows/build.yml)  [![Uptime Robot Status](https://img.shields.io/uptimerobot/status/m781254113-3e3bac467c64fc99eafd383e.svg?style=flat-square)](https://status.llm-security-demo.org/) [![Telegram](https://img.shields.io/badge/Telegram-LLM%20Security%20Wiki-%232CA5E0?style=flat-square&logo=telegram)](https://t.me/llm_security_wiki)  [![QQ](https://img.shields.io/badge/QQ%20group-LLM%20Security%20Wiki-blue?style=flat-square&logo=tencent-qq)](https://jq.qq.com/?_wv=1027&k=5EfkM6K)  [![GitHub watchers](https://img.shields.io/github/watchers/llm-security-demo/llm-security-demo.svg?style=social&label=Watch)](https://github.com/llm-security-demo/llm-security-demo)  [![GitHub stars](https://img.shields.io/github/stars/llm-security-demo/llm-security-demo.svg?style=social&label=Stars)](https://github.com/llm-security-demo/llm-security-demo)

* * *

## 内容

大语言模型安全发展多年，难度越来越高，内容越来越复杂，而网上资料大多零散，初学者往往并不知道如何系统地学习相关知识，需要花费大量时间摸索。

为了方便热爱大语言模型安全的小伙伴更好地入门，2024 年 1 月份，**LLM Security Wiki** 迁移至 GitHub。随着 **LLM Security Wiki** 的内容不断完善，越来越多的小伙伴参与其中。

**LLM Security Wiki** 致力于成为一个免费开放且持续更新的知识整合站点，大家可以在这里获取关于 **大语言模型安全 (LLM Security)** 有趣又实用的知识，我们为大家准备了大语言模型安全中的基础知识、常见题型、解题思路以及常用工具等内容，帮助大家更快速深入地学习大语言模型安全。

目前，**LLM Security Wiki** 的内容还有很多不完善的地方，知识点覆盖不够全面，存在一些低质量页面需要修改。**LLM Security Wiki** 团队以及参与贡献的小伙伴们正在积极完善这些内容。

关于上述待完善内容，请参见 **LLM Security Wiki** 的 [Issues](https://github.com/llm-security-demo/llm-security-demo/issues) 以及 [迭代计划](https://github.com/llm-security-demo/llm-security-demo/labels/Iteration%20Plan%20%2F%20%E8%BF%AD%E4%BB%A3%E8%AE%A1%E5%88%92)。

与此同时，**LLM Security Wiki** 源于社区，提倡 **知识自由**，在未来也绝不会商业化，将始终保持独立自由的性质。

* * *

## 部署

本项目目前采用 [MkDocs](https://github.com/mkdocs/mkdocs) 部署在 [llm-security-demo.org](https://llm-security-demo.org)。

我们在 [status.llm-security-demo.org](https://status.llm-security-demo.org) 维护了一份镜像站列表，它们的内容和 [llm-security-demo.org](https://llm-security-demo.org) 都是相同的。

当然，也可以在本地部署。（**需要安装 Python3 和 uv**）

**如果遇到问题，可以查阅 [F.A.Q.](https://llm-security-demo.org/intro/faq/) 来了解更多信息。**

```bash
git clone https://github.com/llm-security-demo/llm-security-demo.git --depth=1

cd llm-security-demo

# 安装 uv (如果尚未安装)
pip install uv

# 安装依赖
uv sync --index-url https://pypi.tuna.tsinghua.edu.cn/simple/

# 使用我们的自定义主题（Windows 下请使用 Git Bash 执行）
# 安装主题时将连接网络下载资源，可通过以下配置项控制下载链接
# .gitmodules:
# - url
# scripts/pre-build/install-theme-vendor.sh:
# - MATHJAX_URL
# - MATERIAL_ICONS_URL
./scripts/pre-build/install-theme.sh

# 两种方法（选其一即可）：
# 1. 运行一个本地服务器，访问 http://127.0.0.1:8000 可以查看效果
uv run mkdocs serve -v

# 2. 在 site 文件夹下得到静态页面
uv run mkdocs build -v

# 获取 mkdocs 的命令行工具的说明（解释了命令和参数的含义）
uv run mkdocs --help
```

我们现在在服务器端渲染 MathJax，如果希望实现类似效果，可以参考 [build.yml](https://github.com/llm-security-demo/llm-security-demo/blob/master/.github/workflows/build.yml)。（需要安装 Node.js）

### 镜像

```bash
# Gitee 码云 上的镜像仓库和 GitHub 仓库的内容相同
git clone https://gitee.com/llm-security-demo/llm-security-demo.git
```

### 离线版

可以使用 `gh-pages` 分支的内容

```bash
git clone https://gitee.com/llm-security-demo/llm-security-demo.git -b gh-pages
```

本地启动一个 http 服务器可能会更方便一些。

```bash
# 如果是 python3
python3 -m http.server
# 如果是 python2
python2 -m SimpleHTTPServer
# 有些环境下找不到名叫 python3/python2 的可执行文件，不妨运行 python 试试
```

* * *

## 如何参与完善 LLM Security Wiki

我们非常欢迎你为 **LLM Security Wiki** 编写内容，将自己的所学所得与大家分享。

具体的贡献方式在 [如何参与](https://llm-security-demo.org/intro/htc/)。

* * *

## 版权声明

<a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/"><img alt="知识共享许可协议" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />除特别注明外，项目中除了代码部分均采用<a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/deed.zh">(Creative Commons BY-SA 4.0) 知识共享署名 - 相同方式共享 4.0 国际许可协议</a>及附加的 [The Star And Thank Author License](https://github.com/zTrix/sata-license) 进行许可。

换言之，使用过程中您可以自由地共享、演绎，但是必须署名、以相同方式共享、分享时没有附加限制，

而且应该为 GitHub 仓库点赞（Star）。

而如果你想要引用这个 GitHub 仓库，可以使用如下的 bibtex：

    @misc{llm-security-demo,
      author = {llm-security-demo Team},
      title = {LLM Security Wiki},
      year = {2024},
      publisher = {GitHub},
      journal = {GitHub Repository},
      howpublished = {\url{https://github.com/llm-security-demo/llm-security-demo}},
    }

* * *

## 鸣谢

本项目受 [CTF Wiki](https://ctf-wiki.org/) 的启发，在编写过程中参考了诸多资料，在此一并致谢。

非常感谢一起完善 **LLM Security Wiki** 的 [小伙伴们](https://github.com/llm-security-demo/llm-security-demo/graphs/contributors) 和为 **LLM Security Wiki** 捐赠的 [朋友们](https://llm-security-demo.org/intro/thanks/)！

<a href="https://github.com/llm-security-demo/llm-security-demo/graphs/contributors"><img src="https://opencollective.com/llm-security-demo/contributors.svg?width=890&button=false" /></a>

<!-- <img src='https://i.loli.net/2018/12/07/5c0a6e4c31b30.png' alt='QVQNetWork' width=233>
鸣谢 QVQNetwork 赞助的服务器。 -->

感谢 北大算协 和 Hulu 的支持！

![](https://assets.pcmag.com/media/images/560767-hulu.png?width=333&height=245)
