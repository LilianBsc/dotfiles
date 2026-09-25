# Dotfiles

Managed with the bare git repository method
([Best way to manage your dotfiles](https://medium.com/@simontoth/best-way-to-manage-your-dotfiles-2c45bb280049)):
the git directory lives at `~/.dotfiles/.git` and `$HOME` itself is the working tree.

The alias (already in `.zshrc`):

```sh
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/.git --work-tree=$HOME'
```

## Day-to-day sync

```sh
dotfiles status
dotfiles add <file>
dotfiles commit -m "..."
dotfiles push
```

Untracked files are hidden (`status.showUntrackedFiles = no`), so only managed
files ever show up. `~/.gitignore` guards the git dir itself, nested repos
(`~/.config/nvim`, `~/.oh-my-zsh`) and secrets (`~/.vibe/.env`).

## New machine / remote server bootstrap

Back up any stock rc files that exist (`mv ~/.bashrc ~/.bashrc.bak` etc.),
then:

```sh
git init ~/.dotfiles
git --git-dir=~/.dotfiles/.git remote add origin git@github.com:LilianBsc/dotfiles.git
git --git-dir=~/.dotfiles/.git fetch origin
git --git-dir=~/.dotfiles/.git symbolic-ref HEAD refs/heads/main
git --git-dir=~/.dotfiles/.git --work-tree=$HOME reset origin/main
git --git-dir=~/.dotfiles/.git --work-tree=$HOME checkout -- .
git --git-dir=~/.dotfiles/.git config status.showUntrackedFiles no
```

Then pull the alias in and you are synced:

```sh
source ~/.zshrc
```

## What is tracked where

- **nvim** (`~/.config/nvim`): tracked directly on `main`, including
  `lazy-lock.json` so plugin versions are pinned. The `nvim` branch is the
  archived history of its previous standalone repository.
- **oh-my-zsh**: stock install, not tracked. Re-clone from upstream.
- **Vibe skills**: run `~/.vibe/install-skills.sh` after checkout.
