" О щие настройки
set nocompatible             " Отключаем режим совместимости с vi
set number                   " Номера строк
set relativenumber           " Относительные номера строк
set smartindent              " Умное автоотступление
set wrap                     " Перенос строк
set cursorline               " Подсветка текущей строки
set clipboard=unnamedplus   " Поддержка системного буфера обмена

" Поиск
set ignorecase smartcase     " Умный поиск
set incsearch                " Показывать результат во время поиска
set hlsearch                 " Подсветка результатов поиска
set smartcase       " Умный регистр (если ввели заглавную - учитывать)

" Отступы и табуляция (общие)
set autoindent      " Автоматический отступ
set expandtab       " Замена табов на пробелы
set tabstop=4       " Ширина таба - 4 пробела
set softtabstop=4   " Ширина soft tab
set shiftwidth=4    " Ширина сдвига >>

" Поддержка мыши (удобно на Linux)
set mouse=a

" Кодировка
set encoding=utf-8

" Интеграция с буфером обмена (на Linux с X11)
set clipboard=unnamedplus

" Лидер-ключ для映射 (пробел для удобства)
let mapleader = " "
" Быстрые команды
nnoremap <leader>w :w<CR>   " Сохранить файл
nnoremap <leader>q :q<CR>   " Выйти
nnoremap <leader>e :NERDTreeToggle<CR>  " Открыть файловый менеджер
nnoremap <leader>n :NERDTreeFind<CR>
" Подсветка trailing whitespace (лишних пробелов в конце строк)
match ErrorMsg /\s\+$/
" Цветовая схема и интерфейс
syntax on                    " Включение подсветки синтаксиса
set termguicolors
set background=dark

" Удобство
set scrolloff=8              " Отступ от краёв экрана при прокрутке
set showcmd                  " Отображение вводимых команд
set wildmenu                 " Упрощённый ввод команд
set completeopt=menuone,noinsert,noselect
" Открывать NERDTree только если нет открытого файла
autocmd VimEnter * if argc() == 0 | NERDTree | endif   " Это делает всплывающие меню удобными и управляемыми.
let NERDTreeShowHidden=1         " Показывает скрытые файлы
let NERDTreeMinimalUI=1          " Минимальный интерфейс
let NERDTreeDirArrows=1          " Красивые стрелки

call plug#begin('~/.vim/plugged')

" Файловый менеджер
Plug 'preservim/nerdtree'

" Автодополнение
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Комментирование
 Plug 'tpope/vim-commentary'

" Подсветка скобок
Plug 'jiangmiao/auto-pairs'

" Python
Plug 'vim-python/python-syntax'

" Bash & Shell
Plug 'Shougo/vimproc.vim'
Plug 'vim-scripts/bash-support.vim'

" Lua
Plug 'tbastos/vim-lua'

" Темы
Plug 'morhetz/gruvbox'

Plug 'frazrepo/vim-rainbow'

call plug#end()

colorscheme gruvbox
let g:rainbow_active = 1

set wildmode=full
