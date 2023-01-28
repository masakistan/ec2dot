sudo yum install zsh util-linux-user -y

rm -rf ~/.oh-my-zsh

command -v zsh | sudo tee -a /etc/shells
sudo passwd ec2-user
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp .vimrc .zshrc ~/

git config --global user.name "M. Stanley Fujimoto"
git config --global user.email sfujimoto@gmail.com
