# Fish

Symlink directory to `~/.config/fish`.

---

Add to the known shells and set as default:

```
sudo sh -c 'echo `which fish` >> /etc/shells'
chsh -s (which fish)
```

Install fishline:

```
git clone https://github.com/0rax/fishline.git
```
