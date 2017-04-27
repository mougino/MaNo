# Welcome to MaNo, the Markdown Notepad

This program is a free, open-source, lean editor for the Markdown language.
Read about Markdown on [Wikipedia](https://en.wikipedia.org/wiki/Markdown).

Markdown is very simple to use, and is a great language for technical docs.
The MaNo editor specifically supports the GitHub Flavored Markdown (GFM).
You can learn about GitHub Markdown [here](https://guides.github.com/features/mastering-markdown).

This file is divided into 2 parts:
1. a [manual](#manual) that will teach you how to make the best out of MaNo
2. a [tutorial](#tutorial) to quickly masterize Markdown writing with MaNo

> At any time, hit `F5` to see how this Markdown document is rendered.
> You can also navigate inside MaNo with `Ctrl`+`Left-Click` on any link.

<!------------------------------------------------------------------------>

# MANUAL

## MaNo actions

MaNo allows you to type, edit and format raw text, following Markdown specs.

### ...via Menu

All of MaNo actions can be realized through the top menu:

* *File*: open, save your file or create a new one
* *Edit*: edit text (undo/redo, copy/cut/paste, etc.)
* *Format*: set selection as bold/italic/strikethrough, or make a link out of it
* *Insert*: here you'll find all the specific Makdown controls you can add
* *Search*: the usual search and replace dialogs
* *Tools*: generate html, or use specific Markdown performance tools
* *Help*: show info about this program

### ...via Shortcuts

Furthermore every MaNo action can be done through a keyboard shortcut.
This allows very powerful and fast writing once you masterize the shortcuts.
We strongly suggest you follow the [tutorial](#tutorial) to learn the shortcuts.
It will make your experience with MaNo really enjoyable.

Each action shortcut is written next to its name in the menu.
Many shortcuts you will know from other programs: `Ctrl`+`S`, `Ctrl`+`C`,
`Ctrl`+`B` etc. to respectively save, copy, set as bold...

Other shortcuts follow a certain pattern:

**Insert**ing Markdown controls is always done via `Ctrl`+`Alt`+`key`.
e.g. `key`=`H` for header, `C` for code block, `T` for table, etc.

Generating the html of the .md file (the most important) is done via `F5`.
Performance tools have other `Fn` keys dedicated to them, see in the menu.

## MaNo engine

MaNo uses a highly configured Win32 RichEdit 2.0 native control.
It allows you to find the native behavior you're already familiar with.

Specifically, you can navigate with the keyboard arrows or the mouse (+wheel).
You can also zoom-in and zoom-out by using `Ctrl`+`Mouse-Wheel` up/down.
The zoom level is saved for your convenience when you exit the editor.
Finally you can do `Ctrl`+`Left-Click` on a link to navigate to it, e.g.
try to do it on the following link: [Tutorial](#tutorial)

<!------------------------------------------------------------------------>

# TUTORIAL

This tutorial will teach you how to write Markdown with the MaNo editor.
You will see that MaNo offers many convenient and performant tools.

## Headers and Links

First, the two most important elements in Markdown are headers and links.

<!------------------------------------------------------------------------>

### Headers

Headers are elements used for title:
# This is a level-1 header
## This is a level-2 header
### This is a level-3 header
#### This is a level-4 header
##### This is a level-5 header
###### This is a level-6 header

Now let's try to make a header:
Select (highlight) the following text-line and hit `Ctrl`+`Alt`+`H`

I am a header

This transforms the line into a header.
(You could also have used the menu > Insert > Header (Linkable)).
If you want to increase the header level, it's a piece of cake!
Just continue to hit `Ctrl`+`Alt`+`H` on the selection! Come on, try it.

Note that Markdown handles header levels 1 to 6. In MaNo, if you use
`Ctrl`+`Alt`+`H` on a level-6 header, it will reset to level-0 header.
Try it below, select the line and press `Ctrl`+`Alt`+`H`:

###### This is another level-6 header

Now, something really powerfull: 
Imagine we are writing a long technical documentation or a manual, with many
sections... Each section will of course have a title (header). If you're a
good planner maybe you already have all your sections identified before
starting writing.
So why not make the headers all at once, and fill the sections after?

MaNo makes it very easy to insert a Markdown control into multiple lines!
Try it, select the 4 lines below and hit `Ctrl`+`Alt`+`H` several times:

Header
Header Again
Still A Header
Last Header

Hands-on exercise: let's take this table-of-content (ToC) example:

# Animals

## Mammals
### Dog
### Cat
### Human
### Horse

## Birds
### Eagle
### Toucan
### Peacock

## Reptiles
### Snake
### Turtle
### Crocodile

# Vegetals
## Tree
## Cactus
## Algae
## Lichens

With a combination of multi-line selections, and hitting `Ctrl`+`Alt`+`H`,
try to replicate the headers hierarchy above to the raw text listed below:

Animals

Mammals
Dog
Cat
Human
Horse

Birds
Eagle
Toucan
Peacock

Reptiles
Snake
Turtle
Crocodile

Vegetals
Tree
Cactus
Algae
Lichens

<!------------------------------------------------------------------------>

### Links

Still assuming that we are writing a manual, if you followed the previous
exercise you now have a lot of section headers at your disposal.
What is common practice, and would be interesting for us, is to make links
to these headers, here and there in the body of our manual.
In html they are the well-known hyperlinks allowing to navigate the document.

MaNo allows you to make a header link with the `Ctrl`+`L` shortcut.
Try it out: select (highlight) the line below and hit `Ctrl`+`L`:

Animals

Ok this is interesting, but several questions come:

> Q: How to make a full table of content, not only a single link?
> A: Easy! Press `Ctrl`+`L` on a multi-line selection! Try it below:

Vegetals
Tree
Cactus
Algae
Lichens

> Q: Nice! But ToC elements are usually in a bullet-list, not flat...
> A: Easy too! Select the block, do `Ctrl`+`Alt`+`U` to insert an Unordered
> List (or `Ctrl`+`Alt`+`O` to insert an Ordered List) and only then, make
> the links with `Ctrl`+`L`, yeap this is handled! Try it below:

Birds
Eagle
Toucan
Peacock

(You could also have gone the other way around: `Ctrl`+`L` to make the links,
then either `Ctrl`+`Alt`+`U` or `Ctrl`+`Alt`+`O` to make the list...)

<!------------------------------------------------------------------------>

### Link Tools

> Q: I don't plan much. I prefer to write my sections on-the-fly and only
> after decide of the titles, is that a problem?

> A: Not a problem! Write the section bodies as you go, identify what ideas
> could be cool to develop further and make them links to (non-existing yet)
> headers. Example:

I'm blabla-ing so much but hey I'd like to talk of [Computers](#computers)
maybe another time...

Here we selected the word "Computers" and made it a link with `Ctrl`+`L`.
One week later, we finished writing our document, and we want to be sure
we didn't forget anything: we just hit `F4` (Progress Indicator) that will
open a dedicated performance tool to show the count and names of missing
headers! We can now complete the document...

> Q: I want to write fast, even faster, all what's in my head, I don't have
> time to go back to select a word and hit some `Ctrl` keys.

> A: You can manually type brackets around your word, immediately followed
> by empty parentheses, like this:

[Computers]()
[UX Development]()
[Material Design]()

If your document is full of those empty links, just hit `F8` to launch the
"Fill Empty Links" performance tool! Press `F8` now and look above...

> Q: Sometimes my headers text differ a little from my links. Typically my
> header has a few words before or after the link name.
> E.g.
> # Mushrooms and Co
> Link to [Mushrooms](#mushrooms)

> A: This becomes tricky, but there's hope! MaNo provides a performance tool
> called "Fix Incorrect Links" triggered by the `F9` key.
> It will detect incorrect links (links to non-existent headers) and see if
> there's a relatively close header that can match this link.
> The header `# Mushrooms and Co` has a link of `#mushrooms-and-co`.
> Hitting `F9` will automatically change the reference (#mushrooms) (that
> does not exist) to (#mushrooms-and-co).
> Hit `F9` now to see how it acts on the 2 links below:

# Mushrooms and Co
Link to [Mushrooms](#mushrooms)

# How to cook Shiitake
Link to [shiitake](#shiitake)

<!------------------------------------------------------------------------>

## Other Markdown Controls

We've seen headers and links. Following are the rest of Markdown controls:

### Lists

If you followed the exercise in the [Links](#links) section, you already
know that you can create an unordered list by pressing `Ctrl`+`Alt`+`U` on
a selection. Here you can try it on the lines of raw text below:

abcdefg
hijklmnop
lmnopqrst
uvw and xyz

If you want to remove an unordered list and make it flat-text lines again
just select the unordered list and press `Ctrl`+`Alt`+`U` on it:

* abcdefg
* hijklmnop
* lmnopqrst
* uvw and xyz

Ordered lists are very similar to unordered lists, their insert shortcut is
`Ctrl`+`Alt`+`O`. Try to select (highlight) the following lines and press
`Ctrl`+`Alt`+`O` to make a list:

abcdefg
hijklmnop
lmnopqrst
uvw and xyz

If you want to remove an ordered list, just select it and press again
`Ctrl`+`Alt`+`O`:

1. abcdefg
2. hijklmnop
3. lmnopqrst
4. uvw and xyz

### Blockquotes

Blocquotes are used to define a section of a document quoted from another
source. You can add/remove blockquotes by pressing `Ctrl`+`Alt`+`Q` in MaNo.
Select the following lines and press `Ctrl`+`Alt`+`Q` several times:

As Kanye West said:
We're living the future so
the present is our past.

### Code

There are two types of code in Markdown: code block and inline code.

A code block is targeted at multiple lines. It can be made with the shortcut
`Ctrl`+`Alt`+`C`. If you want to remove a code block marker, select what's
inside the code block and press `Ctrl`+`Alt`+`C` again.
Try to select the following lines and hit `Ctrl`+`Alt`+`C` several times:

function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}

You can add an optional language identifier to enable syntax highlighting
in your fenced code block. For example, to syntax highlight JavaScript code:

```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```

In MaNo, you would first create the code block with `Ctrl`+`Alt`+`C`, then
add the language identifier at the end of the opening code block marker.

You can see a list of all suported language identifiers in the file
"highlight\README_LANGLIST.TXT" inside your MaNo installation folder...

The second type of code, inline code, is much simpler. As its name indicates
it is targeted at words in a single line. It does not support syntax
highlighting. Inline code can be made with the shortcut `Ctrl`+`Alt`+`D`.
Same as the other insert actions from MaNo, doing `Ctrl`+`Alt`+`D` on an
already inline-code will change it back to plain text.
Test it below: select the word "myVariable" and press `Ctrl`+`Alt`+`D` two
or three times:

To activate debug mode, set myVariable to `true`.

Finally, note that MaNo can smartly choose between code block and inline
code depending if your selection contains line feeds or not.
Try to highlight "myVariable" below and hit `Ctrl`+`Alt`+`C` (Code Block):

To activate debug mode, set myVariable to `true`.

You see it is the same as pressing `Ctrl`+`Alt`+`D` (Inline Code) because
code block is not adapted to words in a single line, inline code is.

Similarly, select the whole paragraph below, and hit `Ctrl`+`Alt`+`D`
(Inline Code), you'll see it's the same as `Ctrl`+`Alt`+`C` (Code Block),
because inline code is not adapted to multiple lines, code block is.

function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}

If you want to force-insert a code block or an inline code, start without
any selection (empty control) and hit `Ctrl`+`Alt`+`C` or `D`, then you
can fill it with what you want.

### Task Lists

Task lists can be inserted in MaNo to keep track of tasks (todo list).
Same as the other controls, you can insert a task list on multiple lines.
Task list shortcut is `Ctrl`+`Alt`+`A`, try it on the following paragraph:

TODO:
walk the dog
grossery shopping
do the dishes
pick grandma at airport

To mark a task as done, you fill an "x" in it:

- [x] walk the dog
- [ ] grossery shopping
- [x] do the dishes
- [ ] pick grandma at airport

Doing `Ctrl`+`Alt`+`A` on an existing task list will remove the task list
marker, regardless of the status of its tasks (done or not, "x" or not).
Try to select the above task list and hit `Ctrl`+`Alt`+`A` for a demo...

### Tables

Markdown tables can be inserted with `Ctrl`+`Alt`+`T`.
Tables do not operate on a selection, if you select text and insert a table
MaNo will keep your selection intact and insert the table right before it.

Try to hit `Ctrl`+`Alt`+`T` on the empty line below, then add several rows
and hit `F5` to see the result in html:

### Emoji

MaNo supports a range of emoji emoticons, all available by pressing the
shortcut `Ctrl`+`Alt`+`J`. This will open an internet page in your browser
where you can click on the wanted emoji, and paste the result (`Ctrl`+`V`)
in MaNo.
Press now `Ctrl`+`Alt`+`J` and paste different emojis into the line below:

 :smile: :confused:

And press `F5` to see the result.

### External Links

By default any internet address starting with "http://" or "www." will be
rendered by MaNo as an hyperlink. You should not bother make them external
links manually.
But sometimes you want some text to be clickable and send you to a web page.
For this, press `Ctrl`+`Alt`+`E` (for External Link) and complete the "http"
part with the full address. Test it below by creating an external link to
"http://mougino.free.fr" after selecting "My Webpage" + `Ctrl`+`Alt`+`E`:

My Webpage

### Images

If you want to embed images, either local or remote (on the web), press
`Ctrl`+`Alt`+`I` on the url of your image. Try it below for a local image
and for a remote image:

my_image.png

https://octodex.github.com/images/yaktocat.png

<!------------------------------------------------------------------------>

## Performance Tools

Herebelow is a list of all the performance tools available in MaNo.
We already saw some of them in previous parts of the tutorial, for the
ones you don't know yet, try to hit their corresponding `Fn` key to see
what they do:

`F2` = Table Of Content
`F4` = Progress Indicator
`F7` = Check Duplicate Headers
`F8` = Fill Empty Links
`F9` = Fix Incorrect Links

Additionally, a last tool (not really a performance tool though ^^) has
been added: select a multi-line list of elements, and hit `F11` to sort
it alphabetically (regardless of case, i.e. aAbB > ... yYzZ).
Try to select (highlight) the list of words below, and hit `F11`:

Tango
Zulu
papa
Charlie
sierra
Alpha
Victor
Bravo
romeo
Foxtrot

<!------------------------------------------------------------------------>

## Tutorial Conclusion

And that's it, if you followed all of the above, you should now be fluent
with MaNo actions and shortcuts, all you need is a little practice!

Hope you'll make the best ouf of this editor, and don't hesitate to give
feedback at [mougino@free.fr](mailto:mougino@free.fr), have fun!

