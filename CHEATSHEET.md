# Shortcuts and Commands

[Unicode OSX Keys](http://apple.stackexchange.com/questions/55727/where-can-i-find-the-unicode-symbols-for-mac-functional-keys-command-shift-e)

* <kbd>&#8984;</kbd> CMD
* <kbd>&#8963;</kbd> CTRL
* <kbd>&#8997;</kbd> ALT
* <kbd>&#9251;</kbd> SPACE
* <kbd>&#8679;</kbd> SHIFT
* <kbd>&#9003;</kbd> DELETE
* <kbd>&#8677;</kbd> TAB
* <kbd>&#119891;</kbd> FN
* <kbd>&#8592;</kbd> <kbd>&#8593;</kbd> <kbd>&#8594;</kbd> <kbd>&#8595;</kbd> Arrows
* <kbd>yi})</kbd> VIM KEY SEQUENCE

## OSX

* <kbd>&#8984;</kbd> <kbd>&#8677;</kbd>   - Switch between applications
* <kbd>&#8984;</kbd> <kbd>~</kbd>         - Switch between application windows
* <kbd>&#8984;</kbd> <kbd>o</kbd>         - Open, e.g. open file, directory
* <kbd>&#8984;</kbd> <kbd>w</kbd>         - Close, e.g. file, tab
* <kbd>&#8984;</kbd> <kbd>&#9003;</kbd>   - Delete, e.g. file
* <kbd>&#8984;</kbd> <kbd>y</kbd>         - Open quicklook
* <kbd>&#8997;</kbd> <kbd>&#9251;</kbd>   - Open alfred

### Move

* <kbd>&#119891;</kbd> <kbd>&#8592;</kbd> - Translates to <kbd>Home</kbd>
* <kbd>&#119891;</kbd> <kbd>&#8594;</kbd> - Translates to <kbd>End</kbd>
* <kbd>&#119891;</kbd> <kbd>&#8593;</kbd> - Translates to <kbd>PageUp</kbd>
* <kbd>&#119891;</kbd> <kbd>&#8595;</kbd> - Translates to <kbd>PageDown</kbd>
* <kbd>&#8984;</kbd> <kbd>&#8592;</kbd>   - Go to beginning of line
* <kbd>&#8984;</kbd> <kbd>&#8594;</kbd>   - Go to end of line
* <kbd>&#8984;</kbd> <kbd>&#8593;</kbd>   - Go to first line alias <kbd>Home</kbd>
* <kbd>&#8984;</kbd> <kbd>&#8595;</kbd>   - Go to last line alias <kbd>End</kbd>
* <kbd>&#8984;</kbd> <kbd>&#9003;</kbd>   - Forward Delete

### Screenshot

* <kbd>&#8984;</kbd> <kbd>&#8679;</kbd> <kbd>3</kbd>                    - Full page screenshot
* <kbd>&#8984;</kbd> <kbd>&#8679;</kbd> <kbd>4</kbd>                    - Select section screenshot
* <kbd>&#8984;</kbd> <kbd>&#8679;</kbd> <kbd>4</kbd> <kbd>&#9251;</kbd> - Application window screenshot

## CHROME

## ITERM

* `CMD-?` highlight cursor position
* `ALT-t` bring iterm to front
* `CTRL-Tab` cycle tabs
* `CMD-arrows` navigate through tabs
* `CMD-number` jump to tab with number
* scroll page up/down

## FISH

* <kbd>&#119891;</kbd> <kbd>&#8592;</kbd>, <kbd>&#8963;</kbd> <kbd>a</kbd>  - Go to beginning of line
* <kbd>&#119891;</kbd> <kbd>&#8594;</kbd>, <kbd>&#8963;</kbd> <kbd>e</kbd>  - Go to end of line
* <kbd>&#8997;</kbd> <kbd>&#8594;</kbd>, <kbd>&#8997;</kbd> <kbd>f</kbd>    - Go one word forward
* <kbd>&#8997;</kbd> <kbd>&#8592;</kbd>, <kbd>&#8997;</kbd> <kbd>b</kbd>    - Go one word backward
* <kbd>&#8963;</kbd> <kbd>u</kbd>           - Delete to beginning of line
* <kbd>&#8963;</kbd> <kbd>k</kbd>           - Delete to end of line (CLASHES TMUX NAVIGATION)
* <kbd>&#8963;</kbd> <kbd>w</kbd>           - Delete word before cursor
* <kbd>&#8963;</kbd> <kbd>u</kbd>           - Delete word after cursor (NOT WORKING)

Other
* navigation
* string manipulation (vi binding?eol?bol?)
* command search (peco)
* env setzen
* custom functions

https://www.cheatography.com/myounkin/cheat-sheets/fish-shell/

## TMUX

* `CTRL`-`h`, `j`, `k`, `l` navigate panes
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

### Textobj

* `it` inner text, e.g. copy inner html tag `yit`

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
