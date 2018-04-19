# dotfiles

. clean.sh $$ . deploy.sh

# atom

## installed package save
apm list --installed --bare > packages.list

## install my package 
apm install --packages-file packages.list
