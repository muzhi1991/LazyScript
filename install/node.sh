# env
source ./config.sh
# install nvm
brew install nvm
mkdir ~/.nvm
echo "export NVM_DIR=~/.nvm" >> $SHELL_CONFIG_PATH
echo ""source $(brew --prefix nvm)/nvm.sh"" >> $SHELL_CONFIG_PATH

# install node
proxy
nvm install node && nvm alias default node

# install react-native

# 1.watchman tool
brew install watchman
# 2.flow
brew install flow
# update 
brew update && brew upgrade

noproxy
# 3. self
npm install -g react-native-cli

