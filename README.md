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
* [YouCompleteMe] (https://github.com/Valloric/YouCompleteMe) - Autocomplete tools.

## Themes ##
![Alt text](screenshot/screenshot.png?raw=true "This is how it looks like")
* [Miko] (https://github.com/vim-scripts/miko) Color theme. (Sorry, (not sorry) too colorful) But totally readable!
* **Cool** Theme for Airline, provided at the vim-airline-themes plugin

For airline it is necessary to configure the powerline fonts. I did it following this guidelines: https://powerline.readthedocs.io/en/latest/installation/linux.html#font-installation

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


## TO-DO after clonning ##
This section means that there are a couple of steps that I have not yet automated.
However they are rather simple:
* C-family autocompletion with YCM: Go to ~/.vim/bundle/YouCompleteMe and there type:

        $ ./install.py --clang-completer

* Setup external fonts for Airline: Although I already said it above, I rather put the
specific steps that I followed here:

        $ wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    
        $ wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

    check the valid Xfont pah with the command:

        $ xset q

    in my case it is /usr/share/fonts/X11/misc. Then move the symbol file there:
    
         $ [sudo] mv PowerlineSymbols.oft /usr/share/fonts/X11/misc/

    Then update the font cache for the path the font was moved to:
    
        $ [sudo] fc-cache -vf /usr/share/fonts/x11/misc/

    Afterwards isntlal the fontconfig file. It could be installed at either
~/.config/fontconfig/conf.d/ (for newer versions) or at ~/.fonts.conf.d/ (for older
versions). In my case, I moved it to /etc/fonts/conf.d/:
    
        $ [sudo] mv 10-powerline-symbols.conf /etc/fonts/conf.d/

    After that, my airline bar had the necessary symbols



