Cuervo's vim configuration
=========================

I took some ideas from mbr0wn and dkozel for this custom vim configuration.

## Vundle'd plugins ##
* [Nerdtree] (https://github.com/scrooloose/nerdtree) - Filesystem explorer. Open files and directories
* [Nerdcommenter] (https://github.com/scrooloose/nerdcommenter) - Easy comment your code.
* [Syntastic] (https://github.com/scrooloose/syntastic) - Syntax and spell and what-not checking (needs the installation of the actual checkers, though)
* [Airline] (https://github.com/vim-airline/vim-airline) - sweet vim status-line
* [Airline-themes] (https://github.com/vim-airline/vim-airline-themes) - Customize your Airline with a theme and make it sweeter.
* [GitGutter] (https://github.com/jisaacks/GitGutter) - Shows an icon in the gutter that indicates differences with your HEAD at git.
* [Fugitive] (https://github.com/tpope/vim-fugitive) - Git wrapper
* [Indent guides] (https://github.com/nathanaelkane/vim-indent-guides) - Forget timewasting looking for mixed indents.
* [Tagbar] (https://github.com/majutsushi/tagbar) - Displays tags (such as python classes - reason why I use this) in a pane.
* [MiniBuffer Explorer] (https://github.com/fholgado/minibufexpl.vim) - Shows the open buffers in a line.
* [CtrlSpace] (https://github.com/vim-ctrlspace/vim-ctrlspace) - Amazing space controller with file, buffers and tab list/customization. Still learning how to use it. May replace Nerdtree and MinBuffExplorer from this list

## Themes ##
![Alt text](screenshot/screenshot.png?raw=true "This is how it looks like")
* [Miko] (https://github.com/vim-scripts/miko) Color theme. (Sorry, (not sorry) too colorful) But totally readable!
* **Cool** Theme for Airline, provided at the vim-airline-themes plugin

## Installation ##
If you have already a vim setup you can either back it up or completely delete it. To back it up:

    mv .vim .vim.bak
    mv .vimrc .vimrc.bak

Or delete your setup by running:

    rm -rf .vimrc .vim

Clone this repository:

    git clone https://github.com/primercuervo/vimfiles .vim

Create a symbolic link for the .vimrc

    ln -s .vim/vimrc .vimrc

Run the installation script (Thanks to Derek for the script)

    sh .vim/install.sh

And thanks to the magic of Vundle, you're all set!

## Custom Key Mappings ##
(I may use some of the generic keymappings from each plugin. Refer to the manual of each for further info.
* Leader key -> map ,s :source ~/.vimrc
* `F2` -> Toggle Nerdtree
* `F3` -> Toogle TagBar
* `F4` -> Toogle Indent Guides
* `C-F12` -> Minibuffer Explorer Toggle
* `C-left` -> Previous Tab
* `C-right` -> Next Tab
* `S-Tab` -> Previous Buffer
* `Tab` -> Next Buffer
* `Space bar` -> Does colon for faster command-ing

**I force myself to use the homeline navigation by desabling the arrow keys**

Also consider maping <ESC> to <CAPSLOCK> key (I personaly never use capslock, and even rather to press shift while writing for caps.)
This has to be done on filesystem, though. I use currently ubuntu and with this simple command:

    setxkbmap -option caps:swapescape

you can swap the capslock and the ESC key for one session, I think. If you like it, then you can find a way to do it for good (with xmodmap or gnome-tweaktool, for example) Find the option that suits you and your OS best.


Enjoy!
