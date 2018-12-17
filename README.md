#Steps for setting up new mac

##Xcode and git

- `Git clone Confucius`
- You will be prompted to install xcode command line tools.
Click yes.
- When this has installed you can try again to git clone confucius, butler, the rest of our repos.

##Auto-install most of what you will need

- From confucius `cd mac_setup`
- You will see a bunch of scripts that are cribbed from tiffaniechia/inital_mac_setup on [github](https://github.com/tiffaniechia/initial_mac_setup/blob/master/playbook.yml), with modifications for our ml and mvp projects
- take a look at the scripts - they install homebrew which is installer for mac, elasticsearch (you can remove this is if you dont want it, needed on ml side), and then run an ansible playbook that uses brew, mostly, to install everything else you need... if you want to leave out or customise certain things just edit or remove.

### Initial Setup Script
Mish mash of Applescript, Bash Script, and Ansible to provision a new machine because y'know more time to sip on tea.

Installs:
* xcode command line Tools
* homebrew
* pip3
* python3
* ansible (did it the 'proper way' with pip, after installing python3)
* git
* elixir
* node
* docker
* wget
* zsh
* spectacle (for screen management)
* google-chrome
* firefox
* iterm2
* intellij-idea (community edition)
* visual studio code
* atom
* sublime-text
* charles
* slack
* oh-my-zsh
* java
* elasticsearch (did it non brew way, personal preference thing)
* (atom plugin) atom-terminal
* (atom plugin) platformio-atom-ide-terminal
* (atom plugin) react
* (atom plugin) script
* (atom plugin) typescript

#### ToDo:
* move apm and es into ansible playbook
* zsh/oh-my-zsh setup?
* one time password entry
* return keystrokes

- run `sh main.sh`

- zsh will not be setup as your default shell by this script, so if you want to do that then:
`sudo vim /etc/shells`
`chsh -s $(which zsh)`
`vim ~/.bash_profile`
Add these two lines:
echo 'export SHELL=$(which zsh)' >> ~/.bash_profile
echo 'exec $(which zsh) -l' >> ~./bash_profile
- When you restart your shell it will be using zsh

##Dotnet

- Not willing to risk doing this with brew install so...
- Download [Mac](https://www.microsoft.com/net/core#macos)
- Use the package installer!
