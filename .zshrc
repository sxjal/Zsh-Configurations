export PATH=$PATH:/Users/sajal/flutter/bin 
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"


plugins=( 
    # other plugins...
    zsh-autosuggestions
    zsh-syntax-highlighting
    git
)

ZSH_THEME="passion";


zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

#alises
alias vs="code"
alias ..="cd .."
alias gp="git push"
alias gc="git commit -m"
alias ga="git add ."
alias gck="git checkout"
alias log="git log"
alias status="git status"
alias gb="git branch"
alias app="cd /Users/sajal/Desktop/Sids\ Code/App"
alias doctor="flutter doctor"
alias sids="cd /Users/sajal/Desktop/Sids\ Code"
alias comp="gitall"
#alias gitall="git add . ; git commit -m 'something' ; git push"
alias zource="source ~/.zshrc"
alias gitfirst="gitfirst"
alias fadd="flutteradd"
alias fetchkr="fetching"
alias cpp="cppcode"
alias firebaseinit="firebase"

function firebase()
{
firebase login
dart pub global activate flutterfire_cli
flutterfire configure
flutter pub add firebase_core
flutterfire configure
echo "import 'package:firebase_core/firebase_core.dart';"
echo "import 'firebase_options.dart';"
echo "initialize your main.dart with the command available on firebase web"
}

function cppcode()
{
echo "enter file name : "
read str
g++ ${str}.cpp -o ${str}
./${str}
}



function flutteradd()
{
read str
flutter pub add ${str}
}

function gitall()
{
read str
git add .
git commit -m "${str}"
git push
}

function fetching()
{
git remote -v
git fetch
git pull --no-ff 
git merge origin/main
echo "enter message : "
comp
}

function gitfirst()
{
read str
git add .
git commit -m "initial commit"
git branch -M main
git remote add origin ${str}
git push -u origin main
}
