MacOS Provisioning
==================

### Mac

Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Installation
```
brew install ghq
brew install ansible
```

Prepare
```
# Checkout dotfiles with ghq
ghq get https://github.com/nalabjp/mac.git

# Install ansible-galaxy collections
cd `ghq root`/github.com/nalabjp/mac/ansible
ansible-galaxy collection install -r requirements.yml
```

Set up
```
cd `ghq root`/github.com/nalabjp/mac/ansible
ansible-playbook [machine].yml
```
