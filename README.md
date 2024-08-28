# Setup
I use Neovim btw (sometimes)

![image](https://github.com/iliaamiri/dotfiles/assets/37903573/2ea5ef92-aaa5-4f1f-adb4-7b9ce916d9a8)

## Things used
- Neovim (Editor)
- i3wm (Window Manager)
- Nerd fonts
- Rofi (Fuzzy finder on i3) -> https://github.com/catppuccin/rofi/tree/main/basic
- Tmux theme (Multiplexer's cat theme) -> https://github.com/catppuccin/tmux

## Setup
Obviously clone this repo first and navigate to it.
```zsh
git clone git@github.com:iliaamiri/dotfiles.git
cd ./dotfiles
```

### Configure Neovim
If you're on a non-MacOS ARM based OS build neovim from source. Else,  
just download the pre-build version. it's a RTFM for this one unfortunately  
:shrug:  

### Configure Oh My Zsh and Tmux
```zsh
sudo apt update -y

# Oh My Zsh
sudo apt install zsh -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp .zshrc ~
source ~/.zshrc

# Tmux
sudo apt install tmux -y

cp -r .tmux ~
cp .tmux.conf ~

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone git@github.com:catppuccin/tmux.git ~/.tmux/plugins/catppuccin
```

### Configure i3wm
```zsh
sudo apt install i3-wm -y

# ... depending on your OS environment you need to configure the i3 yourself.
#     there are no one size fits all for this one sowy.

cp -r i3 ~/.config

# i'm not so sure about this one. you might need to googool it   
# (i forgot where you should copy it exactly)
cp i3status.conf ~/.config/i3status/conf
```

## Add Terminal to Rofi's menu
https://chatgpt.com/share/829d904d-6183-4b9a-8b7f-354ba85e15c8
