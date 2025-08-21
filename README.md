## Описание
Этот репозиторий содержит конфигурационные файлы для:
- Zsh (с Oh My Zsh)
- Vim (с плагинами через Vim-Plug)
- Fish shell (с базовой настройкой)

Цель - предоставить готовые настройки для удобной работы в терминале и редакторе с подсветкой синтаксиса, автодополнением, файловым менеджером и темами.

В настройках есть пункты чтобы установить Powerlevel10k, если будет нужно.
## Зависимости
### Для Zsh:
- Zsh: Базовая оболочка.
- Oh My Zsh: Фреймворк для управления настройками Zsh (https://ohmyz.sh/).
- Powerlevel10k: Тема для быстрого и кастомизируемого промпта (https://github.com/romkatv/powerlevel10k).
- Плагины Oh My Zsh: fzf, command-not-found, extract, git, github, gitignore, node, npm, yarn, vscode, ohmyzsh-full-autoupdate (встроенные).
- Дополнительные плагины: zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions), zsh-syntax-highlighting (https://github.com/zsh-users/zsh-syntax-highlighting).
- fzf: Для fuzzy поиска (https://github.com/junegunn/fzf).

### Для Vim:
- Vim или Neovim: Редактор (рекомендуется Neovim для лучшей совместимости с coc.nvim).
- Vim-Plug: Менеджер плагинов (https://github.com/junegunn/vim-plug).
- Плагины:
  - preservim/nerdtree: Файловый менеджер (https://github.com/preservim/nerdtree).
  - neoclide/coc.nvim: Автодополнение (https://github.com/neoclide/coc.nvim) - требует Node.js >= 14.
  - tpope/vim-commentary: Комментирование кода (https://github.com/tpope/vim-commentary).
  - jiangmiao/auto-pairs: Автозакрытие скобок (https://github.com/jiangmiao/auto-pairs).
  - vim-python/python-syntax: Подсветка Python (https://github.com/vim-python/python-syntax).
  - Shougo/vimproc.vim: Для асинхронных команд (https://github.com/Shougo/vimproc.vim).
  - vim-scripts/bash-support.vim: Поддержка Bash (https://github.com/vim-scripts/bash-support.vim).
  - tbastos/vim-lua: Поддержка Lua (https://github.com/tbastos/vim-lua).
  - morhetz/gruvbox: Цветовая схема (https://github.com/morhetz/gruvbox).
  - frazrepo/vim-rainbow: Подсветка скобок (https://github.com/frazrepo/vim-rainbow).

### Установка и запуск
#### 1. Установка базовых зависимостей (на Ubuntu/Debian; адаптируйте для вашей ОС)
```bash
sudo apt update
sudo apt install zsh vim git curl nodejs npm fzf  # Node.js для coc.nvim
```

#### 2. Установка Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### 3. Установка Powerlevel10k
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

#### 4. Установка дополнительных плагинов Zsh
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/esc/conda-zsh-completion ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/conda-zsh-completion  # Если нужен conda
```

#### 5. Применение конфига Zsh
Скопируйте .zshrc в ~:
```bash
cp .zshrc ~/.zshrc
source ~/.zshrc
p10k configure  # Настройка Powerlevel10k
```

#### 6. Установка Vim-Plug
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### 7. Применение конфига Vim
Скопируйте .vimrc в ~:
```bash
cp .vimrc ~/.vimrc
```
Затем в Vim:
```
:PlugInstall
```

## Fish shell

Fish shell — современная альтернатива bash/zsh с автодополнением, подсветкой синтаксиса и удобной настройкой.

### Установка
```bash
sudo apt install fish
```

### Применение конфига
Скопируйте файл `config.fish` в папку:
```bash
mkdir -p ~/.config/fish
cp config.fish ~/.config/fish/config.fish
```

### Запуск
```bash
fish
```

### Сделать fish оболочкой по умолчанию
```bash
chsh -s $(which fish)
```
или добавить в `.zshrc`

```bash
if [ -t 1 ]; then
 exec zsh
fi
```
