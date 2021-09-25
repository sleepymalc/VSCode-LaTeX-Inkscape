# Vscode-LaTeX-inkscape
A way to integrate LaTeX, Vscode and Inkscape in macOS

## Abstract

I use LaTeX heavily in past two years for both academic work and professional work, and I think I'm quite proficient in terms of type thing out in LaTeX. But when I see this blog post from **Gilles Castel**-[How I'm able to take notes in mathematics lectures using LaTeX and Vim](https://castel.dev/post/lecture-notes-1/) and also [How I draw figures for my mathematical lecture notes using Inkscape](https://castel.dev/post/lecture-notes-2/), I finally realize that I'm still too naive. 

I took quite a few math courses, hence after find out this incredible workflow, I decide to copy the whole setup from linux-Vim to macOS-Vscode. So, if you're interesting in this and in the same situation like me, don't want to jump into linux and Vim, follow me!

## Disclaimer

Please look through the two blog posts above from Gilles Castel! They are incredible, and worth spending your time to really understand how all things works, I'm only a copy-cat who want to mimic his workflow, but with a little bit patient to set-up whole thing in my environment. Definitely show the respect to the original author!

## Setup

First thing first, please set up your Vscode with LaTex properly with [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop), there are lots of tutorial online, just check them out and set them up properly.

Now, we go through thing one by one follow Gilles Castel's blog post.

### Tex Conceal

This is probably the only thing I don't like that much in Gilles Castel's set up. I'm quite confortable with looking at LaTeX sourcecode  for formula, and I don't think they look that nice. But if you want to set them up in Vscode, there are an extension [here](https://github.com/Pancaek/vsc-conceal), I personally have no experience with this particular setup, feel free to try them out though.

### Snippets

#### What’s a snippet?

A snip­pet is a short reusable piece of text that can be trig­gered by some other text. For ex­am­ple, when I type `dm` and press Tab, the word `dm` will be ex­pand­ed to a math environment:

<p align="center">
	<img src="https://github.com/sleepymalc/sleepymalc/blob/main/Vscode-LaTEx-Inkscape/gif/dm.gif" width="500" height="155"/>
</p>

If you are a math guy, you may need to type some inline math like `$$`, which is kind of painful. But with snippet, you can have 

<p align="center">
	<img src="https://github.com/sleepymalc/sleepymalc/blob/main/Vscode-LaTEx-Inkscape/gif/inline.gif" width="500" height="155"/>
</p>

See? you just type `fm`, and then your snippet not only automatically type `$$`for you, it also send your cursor between `$$`!

As you can imagine, this can be quite complex. For example, you can even have something like this:

<p align="center">
	<img src="https://github.com/sleepymalc/sleepymalc/blob/main/Vscode-LaTEx-Inkscape/gif/table2_5.gif" width="500" height="362"/>
</p>

or this:

<p align="center">
	<img src="https://github.com/sleepymalc/sleepymalc/blob/main/Vscode-LaTEx-Inkscape/gif/pmatrix.gif" width="500" height="155"/>
</p>

To fast to keep track of? For the first snippet, I type `table2 5`, and then it generate a table with 2 rows and 5 columns. For the second one, I type `pmat` for matrix, and then type `2 4` to indicate that I want a 2 by 4 matrix, then boom! my snippets do that for me in an instant!

Feeling it? Let try to set up this step by step. And maybe you can create your own snippets also!

#### HyperSnips for Math

If you look around in Vscode extionsion marketplace to find UltiSnips' equivalence, you probably will find [Vsnips](https://marketplace.visualstudio.com/items?itemName=corvofeng.Vsnips). But I'm not sure why this is the case, I can't figure out how to set up _ properly. Hence, I find another alternative, which is [HyperSnips](https://marketplace.visualstudio.com/items?itemName=draivin.hsnips). But hold on, don't download this too quickly! We will use [HyperSnips for Math](https://marketplace.visualstudio.com/items?itemName=OrangeX4.hsnips) instead, and I'll explain why in a moment. Before then, please first download [HyperSnips for Math](https://marketplace.visualstudio.com/items?itemName=OrangeX4.hsnips). Now, just follow the instruction, copy [latex.hsnips](https://github.com/sleepymalc/Vscode-LaTeX-Inkscape/blob/main/HyperSnips/latex.hsnips) into `$HOME/Library/Application Support/Code/User/hsnips/` and you're good to go!

To modify this file, you can either go to this file in your finder or use Vscode build-in command function. For command function, 

1. Press `shift+cmd+space` to type in some command to Vscode.
2. Type `>HyperSnips: Open Snippet File`
3. Choose `latex.hsnips`

Now, let move on. Oh wait, I need to explain to you why I want to use [HyperSnips for Math](https://marketplace.visualstudio.com/items?itemName=OrangeX4.hsnips). This is because this version support *math mode*. Namely, you can specify a particular snippet will **only** be triggered in math mode. This is particularly useful when you need to switch beck and forth between text environment and math environment. 

For further and detaield explanation for snippets, please go to check out the original blog post! 
