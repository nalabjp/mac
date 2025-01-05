MacOS Provisioning
==================

# Initialization

## Installation
```
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install packages
brew install gh
brew install ansible

# Checkout repositories
gh repo clone nalabjp/mac ~/src/nalabjp/mac
gh repo clone nalabjp/dotfiles ~/src/nalabjp/dotfiles
```

## Ansible configuration
```
echo [Ansible vault password] > ~/.ansible-vault
```

## Patch Ansible collection source
See [here](https://github.com/nalabjp/mac/blob/c45704c5c2f115dc8aa5893d1e0fc02fef52d9a7/ansible/requirements.yml#L3-L5)
Patch location: ~/.ansible/collections/ansible_collections/geerlingguy/mac/roles/homebrew/tasks/main.yml

## Set up with ansible-playbook
```
cd ~/src/nalabjp/mac
make maui
```
# Update
## Run ansible-playbook
```
make maui
```

## Run ansible-playbook with `--tags` options
```
make maui TAGS=homebrew,dotfiles
```

## Show tags
```
make maui-tags
```

# Git credential-osxkeychain configuration
```
source ~/.zshrc.local
echo host=github.com\\n\
protocol=https\\n\
username=nalabjp\\n\
password=$(echo $GITHUB_ACCESS_TOKEN) | git credential-osxkeychain store
```

# Keyboard
- Keychron Q11
    - [VIA](caniusevia.com)
- ErgoDox EZ
    - ./ergodox
- Keyball61
    - [Remap](https://remap-keys.app/configure)
