MacOS Provisioning
==================

# Initialization

## Installation
```
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install packages
brew install ghq
brew install ansible

# Checkout repositories
ghq get https://github.com/nalabjp/mac.git
ghq get https://github.com/nalabjp/dotfiles.git
```

## Ansible configuration
```
echo [Ansible vault password] > ~/.ansible-vault
```

## Set up with ansible-playbook
```
cd `ghq root`/github.com/nalabjp/mac
make maui
```
## Update
### Run ansible-playbook
```
make maui
```

### Run ansible-playbook with `--tags` options
```
make maui TAGS=homebrew,dotfiles
```

### Show tags
```
make maui-tags
```

## Git credential-osxkeychain configuration
```
source ~/.zshrc.local
echo host=github.com\\n\
protocol=https\\n\
username=nalabjp\\n\
password=$(echo $GITHUB_ACCESS_TOKEN) | git credential-osxkeychain store
```
