# Fish

Add to the known shells and set as default:

```
sudo sh -c 'echo `which fish` >> /etc/shells'
chsh -s $(which fish)
```

Install plugins:

```
git clone https://github.com/0rax/fishline.git
git clone https://github.com/jethrokuan/z
```
