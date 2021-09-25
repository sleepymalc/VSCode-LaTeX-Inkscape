# Vscode-LaTeX-inkscape
A way to integrate LaTeX, Vscode and Inkscape in macOS

## Abstract

I use LaTeX heavily in past two years for both academic work and professional work, and I think I'm quite proficient in terms of type thing out in LaTeX. But when I see this blog post from **Gilles Castel**-(How I'm able to take notes in mathematics lectures using LaTeX and Vim)[https://castel.dev/post/lecture-notes-1/] and also (How I draw figures for my mathematical lecture notes using Inkscape)[https://castel.dev/post/lecture-notes-2/], I finally realize that I'm still too naive. 

I took quite a few math courses, hence after find out this incredible workflow, I decide to copy the whole setup from linux-Vim to macOS-Vscode. So, if you're interesting in this and in the same situation like me, don't want to jump into linux and Vim, follow me!

## Disclaimer

Please look through the two blog posts above from Gilles Castel! They are incredible, and worth spending your time to really understand how all things works, I'm only a copy-cat who want to mimic his workflow, but with a little bit patient to set-up whole thing in my environment. Definitely show the respect to the original author!

## Setup

First thing first, please set up your Vscode with LaTex properly with (LaTeX Workshop)[https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop], there are lots of tutorial online, just check them out and set them up properly.

Now, we go through thing one by one follow Gilles Castel's blog post.

### Tex Conceal

This is probably the only thing I don't like that much in Gilles Castel's set up. I'm quite confortable with looking at LaTeX sourcecode  for formula, and I don't think they look that nice. But if you want to set them up in Vscode, there are an extension (here)[https://github.com/Pancaek/vsc-conceal], I personally have no experience with this particular setup, feel free to try them out though.

### Snippets

#### What’s a snippet?

A snip­pet is a short reusable piece of text that can be trig­gered by some other text. For ex­am­ple, when I type `dm` and press Tab, the word `dm` will be ex­pand­ed to a math environment:

<video src="/Users/pbb/Desktop/ScreenShot 2021-09-25 at 2.01.52 AM.mov"></video>

