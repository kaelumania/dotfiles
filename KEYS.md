# Shortcuts and Commands

## OSX

## ITERM

* `CMD-?` highlight cursor position
* `ALT-t` bring iterm to front

## TMUX

* `<C-b>` activation key must be prefixed before each command
* `z` toggle zoom current pane
* `c` create new window
* `,` rename current window
* `d` detach current session
* `%` split current pane vertically
* `"` split current pane horizontally
* `n` switch to next window
* `0...9` jump to window by number
* `x` kill current pane

## VIM

* `<L> = leader = ,` Leader is used for many other shortcuts
* `<L-cn>`, `<L-cp>` Navigate in quickfix list
* `<L-f>` Reformat the whole file
* `<;> = <:>` Convenient, e.g. `;w` wihtout using shift
* `<jk> = ESC` Faster escape
* `:help PLUGIN` Show docs of the plugin, e.g. `:help rails`

### Move

* `w`, `b` forward/backward one word (`W`, `B`)
* `e`, `ge` forward/backward to end of word (`E`, `gE`)
* `fCHAR`, `FCHAR` jump on next/previous CHAR on the same line
* `tCHAR`, `TCHAR` jump before next/previous CHAR on the same line
* `(`, `)` forward/backward one sentence
* `{`, `}` forward/backward one paragraph
* `%` jump to matching bracket/object
* `Ngg` jump to line *N*
* `<C-d>`, `<C-u>` scroll half page down/up
* `<C-f>`, `<C-b>` scroll full page down/up
* `<C-o>`, `<C-i>` jump to next/previous cursor position/file
* `<C-r>` evaluate expression (e.g. `4+4` or enter command mode)

### Modify

* `a`, `A` append text after cursor/end-of-line
* `i`, `I` insert text before cursor/beginning-of-line
* `o`, `O` new line before/after current line
* `x` delete character
* `dd{MOTION}` delete line/motion
* `D` delete until end-of-line
* `cc` change complete line
* `cw` chage word (or other text object like `ci)`
* `c$` change till end-of-line
* `=MOTION` re-indent object described by *MOTION*
* `==` re-indet current line
* `gg=G` re-indent entire file
* `>MOTION` indet object described by *MOTION*
* `>>` indet current line
* `<MOTION` unindet object described by *MOTION*
* `<<` unindet current line
* `yMOTION` copy object described by *MOTION*
* `yy` copy entire line
* `p`, `P` paste before/after current line

### Search/Replace

* `<*>`, `<#>` Search forward/backward for word under cursor
* `<n>`, `<N>` Navigate forward/backward to matches
* `</PATTERN>`, `<?PATTERN>`  Search forward/backward for *PATTERN*
* `</>`, `<?>` plus arrows to navigate search history
* `:s/from/to/g` replace all occurences `from` with `to` in the current line
* `:%s/from/to/g` replace all occurences `from` with `to` in the current file
  * `g` each occurence
  * `c` with confirmation
  * `i` case insensitive
* `&` repeat last substitution 

> An empty *PATTERN*/*from* will repeat the last search

### Quicklist/Locationlist

* `:cn`, `:cp` navigate through quicklist
* `:cq` close quicklist
* `:ln`, `:lp` navigate through locationlist
* `:lq` close locationlist

### Tags

* `<C-]>`, `<C-t>` Navigate to/back from tag definiton

### NERDtree

Inside tree press `?` to toggle help

* `<L-n>` Toggle tree
* `<L-L-n>` Find current file in tree

### Ctrlp

* `<C-p>` Open Ctrlp
* `<C-j>`, `<C-k>` Navigate through result list
* `<C-v>`, `<C-x>` Open file in split vertical/horizontal
* `<C-y>` Create file recursively

### VimSurround

* `<cs>` Change surrounding, e.g. `cs({`, `cs"'`
* `<ys>MOTION` Add surroudning, e.g. `ysw(`, `ys2w"`
* `<ds>` Remove Surrounding, e.g. `ds(`, `ds"`

### VimCommentary

* `<gcc>` Comment current line
* `<gcMOTION>` Comment until target of MOTION, e.g. `gcap` ~ around paragraph
* `<gc>` Comment selected text in *VISUAL* mode

### Matchit

* `<%>` Cycle forward through matching groups, such as "if", "else", "endif"
* `<g%>` Cycle backwards through matching groups

### VimTextobjRubyblock

* `<ar>` Describes the whole ruby block, e.g. `var`
* `<ir>` Describes the inner ruby block

### VimIndentObject

Works in *visual* mode or as motion

* `<ai>` (A)n (I)ndentation level and line above
* `<ii>` (I)nner (I)ndentation level (no line above)
* `<aI>` (A)n (I)ndentation level and lines above/below
* `<iI>` (I)nner (I)ndentation level (no lines above/below)

### VimRails/VimRake

* `<gf>` Go to file that defined the matching entity, e.g. Post.new -> /model/Post.rb
* `:A` jump to alternate file, e.g. unit test, functional test (Use `:AS`, `:AV` for splits)
* `:R` jump to related file, e.g. schema, template (Use `:RS`, `:RV` for splits)
* `:Exxx` jump to related `xxx`, e.g. `:Econtroller`, `:Emodel`, `:Espec` (Use `:Sxxx`, `:Vxxx` for splits) 
* `:Ctags` Calls ctags -R on the current app root
* `:Rake` Execute rake task

and a lot more, see `:help rails`/`:help rake` (available in plain ruby projects)

### VimBundler

* `:Bundle` Bundle current project
* `:Bopen GEM`, `:Bsplit GEM`, `:Bvsplit GEM` Open code of GEM

### RSpec

* `<L-t>` Run current spec file
* `<L-s>` Run nearest spec
* `<L-l>` Run last spec
* `<L-a>` Run all spec

### GitGutter

* `<]c>`, `<[c>` Next/Prev hunk
* `<L-hs>` Stage hunk
* `<L-hr>` Revert hunk

### Syntastic

* `:SyntasticCheck` Checks the file for errors

### TmuxNavigator

* `<C-h>`, `<C-j>`, `<C-k>`, `<C-l>` Navigate panes
* `<C-/>` Navigate to previous pane
