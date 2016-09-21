# Shortcuts and Commands

## OSX

* `CMD-y` open quicklook view
* `ALT-space` open alfred
* etc.

## ITERM

* `CMD-?` highlight cursor position
* `ALT-t` bring iterm to front

## FISH

* navigation
* string manipulation (vi binding?eol?bol?)
* command search (peco)
* env setzen
* custom functions

## TMUX

* `CTRL-b` activation key must be prefixed before each command
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

* `LDR = leader = ,` leader key used by many other shortcuts
* `; = :` convenient shortcut, e.g. `;w` wihtout using shift
* `jk = ESC` convenient for faster escape
* `CTRL-r` evaluate expression (e.g. `4+4` or enter command mode)
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
* `CTRL-d`, `CTRL-u` scroll half page down/up
* `CTRL-f`, `CTRL-b` scroll full page down/up
* `CTRL-o`, `CTRL-i` jump to next/previous cursor position/file

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
* `LDR-f` re-indent the whole file (`gg=G`)
* `>MOTION` indet object described by *MOTION*
* `>>` indet current line
* `<MOTION` unindet object described by *MOTION*
* `<<` unindet current line
* `yMOTION` copy object described by *MOTION*
* `yy` copy entire line
* `p`, `P` paste before/after current line

### Search/Replace

* `*`, `#` Search forward/backward for word under cursor
* `n`, `N` Navigate forward/backward to matches
* `/PATTERN`, `<?PATTERN`  Search forward/backward for *PATTERN*
* `/`, `?` plus arrows to navigate search history
* `:s/from/to/g` replace all occurences `from` with `to` in the current line
* `:%s/from/to/g` replace all occurences `from` with `to` in the current file
  * `g` each occurence
  * `c` with confirmation
  * `i` case insensitive
* `&` repeat last substitution 

> An empty *PATTERN*/*from* will repeat the last search

### Quicklist/Locationlist

* `LDR-cn`, `LDR-cp` navigate through quicklist
* `:cn`, `:cp` navigate through quicklist
* `:cq` close quicklist
* `:ln`, `:lp` navigate through locationlist
* `:lq` close locationlist

### Tags

* `CTRL-]`, `CTRL-t` Navigate to/back from tag definiton

### NERDtree

Inside tree press `?` to toggle help

* `LDR-n` Toggle tree
* `LDR-LDR-n` Find current file in tree

### Ctrlp

* `CTRL-p` Open Ctrlp
* `CTRL-j`, `CTRL-k` Navigate through result list
* `CTRL-v`, `CTRL-x` Open file in split vertical/horizontal
* `CTRL-y` Create file recursively

### VimSurround

* `cs` Change surrounding, e.g. `cs({`, `cs"'`
* `ysMOTION` Add surroudning, e.g. `ysw(`, `ys2w"`
* `ds` Remove Surrounding, e.g. `ds(`, `ds"`

### VimCommentary

* `gcc` Comment current line
* `gcMOTION` Comment until target of MOTION, e.g. `gcap` ~ around paragraph
* `gc` Comment selected text in *VISUAL* mode

### Matchit

* `%` Cycle forward through matching groups, such as "if", "else", "endif"
* `g%` Cycle backwards through matching groups

### VimTextobjRubyblock

* `ar` Describes the whole ruby block, e.g. `var`
* `ir` Describes the inner ruby block

### VimIndentObject

Works in *visual* mode or as motion

* `ai` (A)n (I)ndentation level and line above
* `ii` (I)nner (I)ndentation level (no line above)
* `aI` (A)n (I)ndentation level and lines above/below
* `iI` (I)nner (I)ndentation level (no lines above/below)

### VimRails/VimRake

* `gf` Go to file that defined the matching entity, e.g. Post.new -> /model/Post.rb
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

* `LDR-t` Run current spec file
* `LDR-s` Run nearest spec
* `LDR-l` Run last spec
* `LDR-a` Run all spec

### GitGutter

* `]c`, `[c` Next/Prev hunk
* `LDR-hs` Stage hunk
* `LDR-hr` Revert hunk

### Syntastic

* `:SyntasticCheck` Checks the file for errors

### TmuxNavigator

* `CTRL-h`, `CTRL-j`, `CTRL-k`, `CTRL-l` Navigate panes
* `CTRL-/` Navigate to previous pane
