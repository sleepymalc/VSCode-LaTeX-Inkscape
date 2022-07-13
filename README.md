# ***VSCode-LaTeX-Inkscape***

<p align="center"><b><i>
	A way to integrate LaTeX, VSCode, and Inkscape in macOS
</i></b></p>

> Also available: [My website](https://www.pbb.wtf/posts/VSCode-LaTeX-Inkscape)

## TODO

- [x] Document Inkscape shortcut manager for macOS implemented in [#1](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/issues/1)

## Table Of Contents
- [Abstract](#abstract)
- [Disclaimer](#disclaimer)
- [Setup For Typing Blasting Fast](#setup-for-typing-blasting-fast)
  * [Tex Conceal](#tex-conceal)
  * [Snippets](#snippets)
  * [HyperSnips](#hypersnips)
  * [Sympy and Mathematica](#sympy-and-mathematica)
  * [Correcting spelling mistakes on the fly](#correcting-spelling-mistakes-on-the-fly)
- [Drawing Like a Pro - With Inkscape](#drawing-like-a-pro---with-Inkscape)
  * [Inkscape](#inkscape)
    + [Set up the Environment in LaTeX](#set-up-the-environment-in-latex)
    + [Download Inkscape](#download-inkscape)
  * [Inkscape figure manager](#inkscape-figure-manager)
    + [Set up Inkscape Figure Manager](#set-up-inkscape-figure-manager)
    + [1. Watch](#1-watch)
    + [2. Create](#2-create)
    + [3. Edit](#3-edit)
  * [Inkscape shortcut manager](#inkscape-shortcut-manager)
  * [Summary: Workflow to Create a New Figure in VSCode with Inkscape](#summary-workflow-to-create-a-new-figure-in-vscode-with-inkscape)
- [Updates](#updates)
  * [About Inkscape Shortcut Manager (09.27.21)](#about-inkscape-shortcut-manager-092721)
  * [Quiver - For commutative diagram (01.24.22)](#quiver---for-commutative-diagram-012422)
  * [Migrate to HyperSnips (02.18.22)](#migrate-to-hypersnips-021822)
- [Credits](#credits)
- [Related Project](#related-project)

## Abstract
I use LaTeX heavily in the past two years for both academic work and professional work, and I think I'm quite proficient in terms of typing things out in LaTeX. But when I see this blog post from **Gilles Castel**-[How I'm able to take notes in mathematics lectures using LaTeX and Vim](https://castel.dev/post/lecture-notes-1/) and also [How I draw figures for my mathematical lecture notes using Inkscape](https://castel.dev/post/lecture-notes-2/), I realize that I'm still too naive. 

I took quite a few math courses, hence after finding out this workflow, I decided to adapt the whole setup from Linux-Vim to macOS-VSCode. So, if you're interested in this and in the same situation as me, namely if you don't want to jump into Linux and Vim, follow me!

If you still don't know what to expect, please check out my [Notes](https://github.com/sleepymalc/Notes) taken in this setup. Deciding to adopt this workflow probably is the best choice I did throughout my education!
# ***VSCode-LaTeX-Inkscape***
<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/figures/note_preview.png"/>
</p>

## Disclaimer

Please look through the two blog posts above by Gilles Castel! They are incredible and worth spending your time to understand how all things work, and what's the motivation behind all these. I'm only mimicking his workflow, with a little patience to set up the whole thing in my environment. Show respect to the original author!

## Setup For Typing Blasting Fast

First thing first, please set up your VSCode with LaTeX properly with [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop), there are lots of tutorials online, just check them out and set them up properly.

Now, we go through things one by one following Gilles Castel's blog post.

### Tex Conceal

This is probably the only thing I don't like that much in Gilles Castel's setup. I'm quite comfortable looking at LaTeX source code for formula, and I don't think they look that nice. But if you want to set them up in VSCode, there is an extension [here](https://github.com/Pancaek/vsc-conceal), I have no experience with this particular setup, feel free to try them out though.

### Snippets
#### What’s a snippet?

A snippet is a short reusable piece of text that can be triggered by some other text. For example, when I type `dm`, the word `dm` will be expanded to a math environment:
<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/dm.gif"/>
</p>


If you are a math guy, you may need to type some inline math like `\(\)`, which is kind of painful. But with snippet, you can have 
<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/fm.gif"/>
</p>


See? You just type `fm`, and then your snippet not only automatically type `\(\)` for you, but it also sends your cursor between `\(\)`! With this, you can type something **really** fast:
<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/fast.gif"/>
</p>

Note that in the above demo, I use a very common snippet, `qs` for `^{2}`.

As you can imagine, this can be quite complex. For example, you can even have something like this:
<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/table.gif"/>
</p>

or this:
<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/pmatrix.gif"/>
</p>

Too fast to keep track of? For the first snippet, I type `table2 5`, and then it generates a table with 2 rows and 5 columns. For the second one, I type `pmat` for matrix, and then type `2 5` to indicate that I want a 2 by 5 matrix, then boom! My snippets do that for me in an instant!

Feeling it? Let's try to set up this step by step. And maybe you can create your snippets also! Here is some useful 
snippets for you.
<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/useful.gif"/>
</p>

### HyperSnips

If you look around in the VSCode extension marketplace to find UltiSnips' equivalence, you probably will find [Vsnips](https://marketplace.visualstudio.com/items?itemName=corvofeng.Vsnips). But I'm not sure why this is the case, I can't figure out how to set it up properly. Hence, I find another alternative, which is [HyperSnips](https://marketplace.visualstudio.com/items?itemName=draivin.hsnips). Please first download [HyperSnips](https://marketplace.visualstudio.com/items?itemName=draivin.hsnips). Now, just follow the instruction, copy [latex.hsnips](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/Snippets/latex.hsnips) into `$HOME/Library/Application Support/Code/User/hsnips/`, and you're good to go!

To modify this file, you can either go to this file in your finder or use VSCode built-in command function. For command function, 

1. Press `shift+cmd+space` to type in some command to VSCode.
2. Type `>HyperSnips: Open Snippet File`
3. Choose `latex.hsnips`

For a further and detailed explanation for snippets, please go to check out the original blog post! 

### Sympy and Mathematica

Unlike Gilles Castel's approach, there is an available extension out there for you to simplify your math calculation already! Please go to checkout [Latex SYMPY Calculator](https://marketplace.visualstudio.com/items?itemName=OrangeX4.latex-sympy-calculator). It's works like follows:

<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/integral.gif"/>
</p>

Magic right? Let's set it up! First, please look at the installation document provided by [Latex Sympy Calculator](https://marketplace.visualstudio.com/items?itemName=OrangeX4.latex-sympy-calculator). After your installation is done, you can then set up the keybinding for calculating the math expression. I use `shift+e`, where `e` stands for evaluating, to calculate in the way that it will append an equal sign and the answer right after your formula, just like above. And if you don't want to show the intermediate steps of your calculation, you can use `shift+r`, where `r` stands for replacing, to directly replace the whole formula and give me the answer only. See the demo below:

<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/integral2.gif"/>
</p>


You can find my keybinding setup in this repo. But stay tuned, there is more to come! Let's go to the last thing covered in Gilles Castel's post, correcting spelling mistakes.

### Correcting spelling mistakes on the fly

Although my typing speed is quite high, I have typos all the time. So this is a must for me. And surprisingly, this is the hardest thing until now for me to set it upright. Let's see how we can configure this functionality in VSCode!

#### multi-command

Firstly, you need to download [multi-command](https://marketplace.visualstudio.com/items?itemName=ryuta46.multi-command) to perform this. And this is a very powerful extension, which allows you to do a sequence of actions in one shortcut. We will use this later on also, and that's the place it shines.

#### Code Spell Checker

And then, after searching for some time, I find out that there is a popular spelling checker out there which meets our needs, [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker). Just download it, it's useful.

#### LTeX

If you are bad at grammar like me, you definitely want to install [LTeX](https://marketplace.visualstudio.com/items?itemName=valentjn.VSCode-ltex) to check some simple grammar mistakes for you. Although it's not powerful like [Grammarly](https://www.grammarly.com/), not even comparable, it's still a good reference for you to keep your eyes on some simple mistakes you may overlook.

Now, it's time to configure all these. Open your Keyboard Shortcuts page in VSCode, which is in the bottom left

<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/figures/keyboard.png"/>  
</p>


And then go into its `JSON` file, which is at the upper right:

<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/figures/keyboard2.png"/>
</p>


Now, paste the following code in `keybindings.json`:

```json
{
    "key": "cmd+l",
    "command": "extension.multiCommand.execute",
    "args": {
        "sequence": [
	    "cSpell.goToPreviousSpellingIssue",
	    {
	        "command": "editor.action.codeAction",
	        "args": {
	            "kind": "quickfix",
		    "apply": "first"
                }
	    },
	    "cursorUndo",
        ]
    }
},
```
Make sure that the curly braces above have a trailing comma, otherwise, VSCode will complain about it.

Now, as long as you see there is a spelling error, you just type `cmd+l`, the keybinding will do the following things:

1. Use one of the default function from cSpell's: `goToPreviousSpellingIssue`, which jump your cursor on that spelling error word
2. Triggered a default editor action, with the argument being `quickfix` to open a quick fix drop-down list, and choose the `first` suggestion
3. Move your cursor back by `cursorUndo`

Here is a quick demo for how it works when typing:

<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/spell.gif"/>
</p>

Additionally, if you also want to correct your grammar error, I use the shortcut `cmd+k` to trigger a quick-fix for a general error. The setting looks like this:

```json
{
    "key": "cmd+k",
    "command": "extension.multiCommand.execute",
    "args": {
        "sequence": [
            "editor.action.marker.prev",
            {
                "command": "editor.action.codeAction",
                "args": {
                    "kind": "quickfix",
                    "apply": "first"
                }
            },
            "cursorUndo",
        ]
    }
 },
```

#### Grammarly

There is an unofficial API for Grammarly, but the functionality is not that useful if one wants to use auto-correction. Hence, I'll leave it as a TODO for now.

Now, the first part is over. Let's go to the next truly beautiful, elegant, and exciting world, drawing with [Inkscape](https://inkscape.org/zh-hant/).

## Drawing Like a Pro - With Inkscape

Before we go to any setup detail, let's first look at some figures I draw right after I have set this up:
<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/figures/inkscape_example.png"/>
</p>

This is quite eye-pleasing, right? Those are some drawings I made when taking Linear programming lectures. But this is just my naive drawing, compare to Gilles Castel's examples, this is nothing. Check it out for the original blog. Or for more figures I draw, you can check out [Note](https://github.com/sleepymalc/Notes).

One last thing is that I'll assume you have already installed [VSCode Vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim). While this is not required, if you don't want to use it, then you'll need to assign different keybinding. Anyway, you'll see what I mean until then!

### Inkscape

A big question is, why Inkscape? In Gilles Castel's blog, he had already explained it. One reason is that although $\texttt{TikZ}$ can do the job of drawing vector figures in LaTeX with original support, it's too slow to set all diagrams right. This is so true, since my experience with $\texttt{TikZ}$ is *nice looking, intuitive* but also *slow, bulky*. 
You think this is it? When you need to generate a series of figures, it'll go beyond hundreds of lines of codes easily. And up to this point, to let VSCode compile this, this is not fun at all. In this large amount of nested environment, it takes *[latexindent](https://ctan.org/pkg/latexindent)* to auto-indent them for almost tens of seconds, and then compile them by *pdfLaTeX* takes about another tens more seconds. That's not efficient at all, especially when you want some instant feedback for some small changes. 

However, by using Inkscape, you only need to type (Ok, not quite, you don't need to type them out manually as you'll see) the following:

```latex
\begin{figure}[H]
    \centering
    \incfig{figure's name}
    \caption{Your caption}
    \label{fig:label}
\end{figure}
```

And then you're done! And also, the compilation time for this is shorter than you can ever expect. Let's get started then!

#### Set up the Environment in LaTeX

First thing first, include the following in your header

```latex
\usepackage{import}
\usepackage{xifthen}
\usepackage{pdfpages}
\usepackage{transparent}

\newcommand{\incfig}[1]{%
    \def\svgwidth{\columnwidth}
    \import{https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/figures/}{#1.pdf_tex}
}
```

This assumes that your LaTeX project's home directory looks like this:

```bash
LaTeX_project
    │
    ├── LaTex.tex
    │
    ├── LaTex.pdf
    │
    ├── Figures
    │    ├── fig1
    │    ├── fig2
    │    .
    │	 .
    .
    .
```

Now, let's get into the fun part. Let's set up the shortcut for this.

#### Download Inkscape

You need to install [Inkscape](https://inkscape.org/zh-hant/) first. I recommend you install this in a terminal. I assume that you have your [`homebrew`](https://brew.sh/) installed. Then, just type the following into your terminal:

```bash
brew install --cask inkscape
```

### Inkscape figure manager

This is a figure manager developed by Gilles Castel, and here is the [repo](https://github.com/gillescastel/inkscape-figures). I recommend you to follow the installation instruction there. Here is just some guideline for you

1. You need to download [choose](https://github.com/chipsenkbeil/choose) first, for later usage.

2. Type this in your terminal

   ```bash
   pip3 install inkscape-figures
   ```

3. type `inkscape-figure` in your terminal to make sure you have corrected install it.

If you're using Linux and Vim, then you are done already. But since you're using macOS and VSCode, please follow me, there is some more thing for you to configure.

#### Set up Inkscape Figure Manager

##### Modify

Firstly, please type the following command in your terminal

```bash
where inkscape-figures 
```

to find out where the `inkscape-figures` is installed. In my environment, I use Anaconda quite a lot, so mine is `/Users/pbb/opt/anaconda3/bin/inkscape-figures`. 

Now, go to a **relative directory**, in my case, it's in `/Users/pbb/opt/anaconda3/lib/python3.8/site-packages/inkscapefigures`. Open this directory by VSCode, there is something for you to modify.

Ok, I know you probably don't have that much patience now, so I have a modified version available [here](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/Inkscape-setting/Inkscape-figure-manager/main.py). If you don't want to know the detail, you can just copy this [`main.py`](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/Inkscape-setting/Inkscape-figure-manager/main.py) and replace the current one. If you're interesting, lets me explain it to you.

###### Caveat

Notice that there is **one thing for you *need to* modify** in the source code in [`main.py`](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/Inkscape-setting/Inkscape-figure-manager/main.py) in [Inkscape figure manager](https://github.com/gillescastel/inkscape-figures). Since Gilles Castel originally use `figures/` as his subfolder name to store figures, you need to change every `figures/` in the source code into `Figures/` if you're modifying the source code on your own rather than copy mine.

###### Detail Explanation

In Gilles Castel's approach, he uses the shortcut `ctrl-f` to trigger this script, which will copy the whole line's content depending on the cursor's position, and the script will send the snippets by the function

```python
def latex_template(name, title):
    return '\n'.join((r"\begin{figure}[ht]",
                      r"    This is a custom LaTeX template!",
                      r"    \centering",
                      rf"    \incfig[1]{{{name}}}",
                      rf"    \caption{{{title}}}",
                      rf"    \label{{fig:{name}}}",
                      r"\end{figure}"))
```

to `stdout`, and then create a figure by the `name`, which is the content of the line.

But this in VSCode is impossible, hence we don't need this, we'll use another approach, namely, we'll accomplish the task by command line. And if we leave this function as it was, then it will send all these snippets into our terminal, which is quite annoying. So the modified version just removes this snippet completely.

Now, the only thing you need to do is to copy the [keybindings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/keybindings.json) and [settings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/settings.json) into your own `keybindings.json` and `settings.json` and then you're done. But let me explain it to you, in case you want to modify it to meet your need later on. First thing first, we see that in the given code in [keybindings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/keybindings.json) and [settings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/settings.json), we're using [Command Runner](https://marketplace.visualstudio.com/items?itemName=edonet.vscode-command-runner), so let me tell you how to set this up first.

##### Command Runner

The last thing you need to install is [Command Runner](https://marketplace.visualstudio.com/items?itemName=edonet.vscode-command-runner). This will allow you to send commands into a terminal with the shortcut. The configuration is in [`setting.json`](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/settings.json). Please copy the content into your own `setting.json`.

We're now prepared to see a detailed explanation about commands provided in [Inkscape figure manager](https://github.com/gillescastel/inkscape-figures). There are three different commands in the[Inkscape figure manager](https://github.com/gillescastel/inkscape-figures). We break it down one by one.

#### 1. Watch

Since Inkscape in default does not save the file in `pdf+latex`, hence we need [Inkscape figure manager](https://github.com/gillescastel/inkscape-figures) to help us. We need to first open the file watcher to *watch* the file for any changes. If there is any, then the file watcher will tell Inkscape to save the file in `pdf+latex` format.

To open the file watcher, you can type `inkscape-figures watch` in the terminal. In my case, I set up a short for this. In [keybindings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/keybindings.json), we have 

```json
{
    "key": "ctrl+f",
    "command": "command-runner.run",
    "args": {
        "command": "inkscapeStart",
        "terminal": {
            "name": "runCommand",
            "shellArgs": [],
            "autoClear": true,
            "autoFocus": false
        }
    },
    "when": "editorTextFocus && vim.active && vim.use<C-f> && !inDebugRepl && vim.mode == 'Visual'"
}
```

for starting the [Inkscape figure manager](https://github.com/gillescastel/inkscape-figures). And the command is defined in [settings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/settings.json):

```json
"command-runner.commands": {
    "inkscapeStart": "inkscape-figures watch"
}
```

In detail, we just use `command runner` to run the command we defined in [settings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/settings.json), in this case, I explicitly tell the keybinding `ctrl+f` will trigger `inkscapeStart` when I'm in `Visual` mode in Vim, which is just `inkscape-figures watcher` as defined above.

Notice that we set the `autoFocus=false` for the terminal `command runner` use since we don't want a pop-up terminal to distract us. If you want to see whether the command is triggered correctly every time, you can set it to `true`.

#### 2. Create

Same as above, we also use `ctrl+f` to trigger `inkscape-figures create` command. But in this case, we do a little bit more than that. We set up our [keybindings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/keybindings.json) as 

```json
{
    "key": "ctrl+f",
    "command": "extension.multiCommand.execute",
    "args": {
        "sequence": [
	    "editor.action.clipboardCopyAction",
	    "editor.action.insertLineAfter",
	    "cursorUp",
	    "editor.action.deleteLines",
	    {
	        "command": "editor.action.insertSnippet",
		"args": {
		    "name": "incfig"
		}
            },
            {
	        "command": "command-runner.run",
		"args": {
		    "command": "inkscapeCreate",
		},
		"terminal": {
		    "name": "runCommand",
		    "shellArgs": [],
		    "autoClear": true,
		    "autoFocus": false
		}
            },
	]
    },
    "when": "editorTextFocus && vim.active && vim.use<C-f> && !inDebugRepl && vim.mode == 'Insert'"
},
```

and also in [settings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/settings.json):

```json
"command-runner.commands": {
    "inkscapeCreate": "inkscape-figures create ${selectedText} ${workspaceFolder}/Figures/"
}
```

We break down what `ctrl+f` do in `Insert` mode exactly step by step. We see that when we press `ctrl+f` in `Insert` mode, we trigger `multiCommand.execute` to execute a sequence of instructions, which are

1. Copy the content into your clipboard of the line your cursor at
2. We insert a bland line after since we need to insert a snippet, and that's will delete an additional line. You can try to delete this and the next instruction, and see what happens.
3. After inserting a new line, we move back our cursor.
4. We delete that copied content by removing this line.
5. We insert a snippet defined in [`latex.json`](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/Snippets/latex.json). **Notice that this is the default snippet functionality built-in VSCode, not what we have used above**. I'll explain where to copy this file in a minute.
6. Lastly, we send a command in a terminal by `command runner`, with the command `inkscapeCreate` we defined in [settings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/settings.json). Then we're done!

In the fifth instruction, we need to use the snippet like 

```json
{
    "incfig": {
        "prefix": "incfig",
        "body": [
            "\\begin{figure}[H]",
	    "\t\\centering",
	    "\t\\incfig{${1:$CLIPBOARD}}",
	    "\t\\caption{${2:title}}",
	    "\t\\label{fig:${1:$CLIPBOARD}}",
	    "\\end{figure}",
	],
        "description": "Inserts mathematical diagram"
    }
}
```

which is just the snippet we remove from [Inkscape figure manager](https://github.com/gillescastel/inkscape-figures)'s source code! It's back again, in a different approach! You can paste this into your configuration by the following steps:

1. Press `shift+cmd+p` to open the VSCode command 
2. Type `snippets`, and choose `Preferences: Configure User Snippets`. 
3. Choose `New Global Snippets file...`
4. Enter `latex` to create a new file.
5. Paste the above snippets into that file.

<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/demo-create-inkscape.gif"/>
</p>

Don't know what happen? Let me break it down for you. Firstly, I change into `insert` mode in VSCode Vim and type my new figure's name `figure-test`. And then, I press `ctrl+f` to trigger a keybinding. Then it will automatically create an Inkscape figure named `figure-test` for me and open it. 

Now, let's see the last thing I have to share with you.

#### 3. Edit

Again, we also use `ctrl+f` to trigger `inkscape-figures edit` command. We set up our [keybindings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/keybindings.json) as 

```json
{
    "key": "ctrl+f",
    "command": "command-runner.run",
    "args": {
        "command": "inkscapeEdit",
        "terminal": {
            "name": "runCommand",
            "shellArgs": [],
            "autoClear": true,
            "autoFocus": false
        }
    },
    "when": "editorTextFocus && vim.active && vim.use<C-f> && !inDebugRepl && vim.mode == 'Normal'"
},
```

and also in [settings.json](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/settings.json):

```json
"command-runner.commands": {
    "inkscapeEdit": "inkscape-figures edit ${workspaceFolder}/Figures/"
}
```

This is what's you should expect when you want to edit a particular figure:

<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/demo-edit-inkscape.gif"/>
</p>


This is where [choose](https://github.com/chipsenkbeil/choose) comes into play. When you press `ctrl+f` in `Normal` mode, you'll trigger the `inkscape-figures edit` command, and it'll look into your `Figures/` subfolder to see what figures you have and pop out a window for you to choose. After you press `enter`, it will open that file for you to edit. In my demo, I create another figure named `figure-test2`, then modify it a little, and compile it again.

### Inkscape shortcut manager

In this section, we'll setup a very efficient shortcut manager to help you draw any mathematical figures faster than you can ever imagine!



### Summary

This is the whole setup I have, and let's wrap this up since I know this may be quite overwhelming.

1. Before you start your project, please go to `Visual` mode by entering `v` in `Normal` mode. And then press `ctrl+f`. This will set up the file watcher.
2. When you want to create a new figure, go into a new line, type the name of your figure in `Insert` mode, then press `ctrl+f`. This will create a new figure with the name you typed, and open it in Inkscape for you.
3. When you have drawn your figure, as long as you press `cmd+s`, it will automatically save the figure in `pdf+latex` for you, then you can close Inkscape.
4. When you want to edit one of your figures, you press `ctrl+f` in `Normal` mode, it will pop out a window for you to choose the figure you want to edit. And the rest is the same as 3.

## Updates

### About Inkscape Shortcut Manager (09.27.21)

After some research, although there is a way to let the original script in [inkscape-shortcut-manager](https://github.com/gillescastel/inkscape-shortcut-manager) run correctly since it depends on `xlib`, which is no longer used by macOS for almost every application(including Inkscape, as expected), hence the only thing I can do now is to give up. In a perceivable future, if I have time to find an alternative way to interrupt the window activity in macOS, I'll try to configure it for macOS.


### Quiver - For commutative diagram (01.24.22)

I have been working on Category Theory for a while, and I find out that [quiver](https://q.uiver.app/) is quite appealing, hence I integrate it into my workflow. You can also pull it to your local environment and configure the Vscode Task and combined it with a hotkey to use it **locally**. Specifically, I add the following code into my `keybindings.json`:

```json
{
    "key": "ctrl+c",
    "command": "command-runner.run",
    "args": {
        "command": "quiver",
        "terminal": {
            "name": "runCommand",
            "shellArgs": [],
            "autoClear": true,
            "autoFocus": false
        }
    },
    "when": "editorTextFocus"
},
```

and also, define the command `quiver` as 

```json
"command-runner.commands": {
    "quiver": "open -na 'Google Chrome' --args --new-window <path-to-quiver>/quiver/src/index.html"
},
```

Notice that you'll need to build it first if you want to use it offline! Please follow the tutorial [here](https://github.com/varkor/quiver). Otherwise, it's totally fine to use `"quiver": "open -na 'Google Chrome' --args --new-window https://q.uiver.app/"` as your command.

This is how the workflow looks like.
<p align="center">
	<img src="https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/demo/gifs/quiver.gif"/>
</p>

### Migrate to HyperSnips (02.18.22)

Now, instead using [HyperSnips for Math](https://marketplace.visualstudio.com/items?itemName=OrangeX4.hsnips), we're now using [HyperSnips](https://marketplace.visualstudio.com/items?itemName=draivin.hsnips), namely the **original one**! Since I just find out that we can trigger the snippets **only in math mode** by using the special keyword called `context`, hence I just migrate to the original one. To migrate, you just need to uninstall [HyperSnips for Math](https://marketplace.visualstudio.com/items?itemName=OrangeX4.hsnips), install [HyperSnips](https://marketplace.visualstudio.com/items?itemName=draivin.hsnips) with the updated [latex.hsnips](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape/blob/main/VSCode-setting/Snippets/latex.hsnips) I prepared for you, and then enjoy!

## Credits

Again, thanks to Gilles Castel, this workflow fits my style. Although it originally works in Linux+Vim only, the idea is the most important thing. Without his wonderful post, I can't even imagine this is possible. But now it is! Go to his original post to show him some love.

## Related Project

1. [Academic_Template](https://github.com/sleepymalc/Academic_Template) (A general LaTeX template for making PPT by beamer and Academic Report)
2. [Notes](https://github.com/sleepymalc/Notes) (All notes taken in this setup)
3. [gillescastel/inkscape-figures](https://github.com/gillescastel/inkscape-figures)
4. [gillescastel/inkscape-shortcut-manager](https://github.com/gillescastel/inkscape-shortcut-manager)
5. [chipsenkbeil/choose](https://github.com/chipsenkbeil/choose)
6. [varkor/quiver](https://github.com/varkor/quiver)
