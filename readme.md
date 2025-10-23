# ralphs dotfiles 

This is repo of my config files for my archlinux-based macbook. For those who
aren't aware, these files are called dotfiles because either its filename or its
parent dirname starts with a dot, eg. `.env, .profile, .config, .local/share`.

## next

Ngl, I miss the three- and four-finger trackpad gestures in macos. My current
window manager does not have them, so I'm considering [niri] for the next
iteration of my setup. It also doesn't have good tablet support afaik which
is hardware I wanna integrate into my workflow for no-ipad in-computer
pen-and-paper problem solving and note-taking.

Also, once my macbook stops working, I'll get a more behaved, linux-friendly
hardware which will most likely be installed with [alpine linux]. I don't really
hate systemd like a significant number of people do, but I think I'd benefit
from using a more minimal and easier to tweak system with fewer moving parts, in
that I'd be able to closely know how my system works.

[niri]: https://github.com/YaLTeR/niri
[alpine linux]: https://alpinelinux.org

## now

I'm currently on a very minimal, keyboard-driven, terminal-centric
[archlinux]-based setup, and I hella love it. I used to use a dark color scheme
but it made my eyesight worse, so I'm now rocking a light color scheme. The
latter also helps a lot with readability, and I read a bunch of papers and books
on the daily, so.

The tools I use for window management include

- [river] for window management and key bindings
- [foot] for terminal
- [fuzzel] for menus
- [mako] for notifications
- [eww] for bar and widgets, used to use [yambar] and [waybar].
 
The tools I use for productivity are

- [helix] for text editing, used to use [kakoune]
- [aerc] for email
- [zathura] for pdfs 
- [lf] for file navigation
- [typst] for typesettting, used to use [latex]
- [marimo] for python notebooks, used to use [jupyter]
- [bash] for shell, used to use [dash]
- [ncspot], [spotifyd] for music.

My current setup looks like this:

TODO: add screenshots

[archlinux]: https://archlinux.org
[river]: https://github.com/koekeishiya/yabai
[foot]: https://codeberg.org/dnkl/foot
[fuzzel]: https://codeberg.org/dnkl/fuzzel
[mako]: https://github.com/emersion/mako
[eww]: https://github.com/elkowar/eww
[helix]: https://github.com/helix-editor/helix
[kakoune]: https://github.com/mawww/kakoune
[aerc]: https://git.sr.ht/~rjarry/aerc
[zathura]: https://github.com/pwmt/zathura
[lf]: https://github.com/gokcehan/lf
[typst]: https://github.com/typst/typst
[latex]: https://wiki.archlinux.org/title/TeX_Live
[marimo]: https://github.com/marimo-team/marimo
[jupyter]: https://wiki.archlinux.org/title/Jupyter
[bash]: https://wiki.archlinux.org/title/Bash
[dash]: https://wiki.archlinux.org/title/Dash
[ncspot]: https://github.com/hrkfdn/ncspot
[spotifyd]: https://github.com/Spotifyd/spotifyd

## prev

I've only had four setup iterations so far: macos, archv1, archv2, and current.

I used to rock a very similar keyboard-driven macos setup but grew tired of

- window flickering: windows spawn from their original untiled position and get
  tiled with a minimal but noticeable delay which causes flickering. It is a
  limitation of me not allowing my window manager [yabai] lower-level access to
  the system
- binary space partitioning: I heavily prefer dynamic tiling where new windows
  spawn in a main region, eg. the left side of my screen
- freebsd flavor of cli tools: I don't mind it, really, it actually even taught
  me to prefer posix shell compliance, but gnu extensions of these tools are
  just good and helpful
- rounded corners: I prefer gapless window management similar to my current
- etc.

During my stay there, I used [sketchybar] for bar, [skhd] for key bindings, and
[alacritty] for terminal.

My macos setup looked like this:

TODO: add screenshots

My arch setup used to look like this (it's not the prettiest, I know):

TODO: add screenshots

[yabai]: https://github.com/koekeishiya/yabai
[sketchybar]: https://github.com/FelixKratz/SketchyBar
[skhd]: https://github.com/koekeishiya/skhd
[alacritty]: https://github.com/alacritty/alacritty

## hardware

I rock a very low-spec'd laptop (intel-based macbook air lol) and so
transitioning from macos to linux is called for, especially since apple has
since dropped support of x86_64 in favor of their arm-based M-series chip. This
linux-on-mac is made possible by contributors of [t2linux] (thanks so much).
Btw the project uses an exploit against the security enclave chip in macbook, so
while the device I'm using has a fingerprint sensor, it's rendered useless and
effectively disabled, so there's that.

[t2linux]: https://wiki.t2linux.org

The move was not that difficult since macos is unix-based and my stay there was
cli-heavy. And I'm rocking this device for years now btw -- thanks to linux!

## non-dots software

Some stuff that are software-based but are out of the scope of dotfiles
configuration that people may still find useful:

- [btrfs] for file system
- [luks] for disk encryption
- [wayland] and [wayland tools] for display and general use
- TODO: add more

[btrfs]: https://wiki.archlinux.org/title/Btrfs
[luks]: https://wiki.archlinux.org/title/Dm-crypt/Encrypting_an_entire_system
[wayland]: https://wiki.archlinux.org/title/Wayland
[wayland tools]: https://github.com/swaywm/sway/wiki/Useful-add-ons-for-sway
