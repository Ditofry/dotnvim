"" Start
"" ---------------------------------------------------------------------------
"" Load plugins with vim-plug, that type of thing.

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('$HOME/.config/nvim/.plugged')

function! DoRemote(arg)
    UpdateRemotePlugins
endfunction

" PlPlPlugin:
Plug 'bling/vim-bufferline'
Plug 'brooth/far.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'janko-m/vim-test'
Plug 'jceb/vim-orgmode'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'machakann/vim-highlightedyank'
Plug 'matze/vim-move'
Plug 'mhinz/vim-signify'
Plug 'mklabs/vim-json'
Plug 'myusuf3/numbers.vim'
Plug 'reedes/vim-pencil'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " Specific to Homebrew: https://github.com/junegunn/fzf.vim#installation
Plug 'sjl/vitality.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar' " @see http://bit.ly/2gyTOwp
Plug 'w0rp/ale', {'do': 'npm install -g standard'}

" I remember my first IDE:
Plug 'othree/csscomplete.vim'
Plug 'roxma/nvim-cm-tern'           , {'do': 'npm install'}
Plug 'roxma/nvim-completion-manager', {'do': 'pip3 install --user neovim jedi mistune psutil setproctitle'}
Plug 'eagletmt/neco-ghc',             {'for': ['haskell', 'cabal'], 'do': 'stack install ghc-mod'}
Plug 'Shougo/neco-vim',               {'for': 'vim'}
Plug 'sirver/ultisnips'


" HhHhTML: kill me plox
Plug 'Valloric/MatchTagAlways', {'for': ['html', 'tpl']}
Plug 'gcmt/breeze.vim',         {'for': ['html', 'tpl']}
Plug 'tpope/vim-liquid',        {'for': ['html', 'tpl']}

" JjJjavactipt: what is javascript?
Plug 'mxw/vim-jsx',              {'for': ['javascript', 'javascript.jsx']}
Plug 'pangloss/vim-javascript',  {'for': ['javascript', 'javascript.jsx']}

" tTTypeScript
Plug 'leafgarland/typescript-vim'

" HhHhaskell: laws only
Plug 'neovimhaskell/haskell-vim', {'for': ['haskell', 'cabal']}
Plug 'parsonsmatt/intero-neovim', {'for': ['haskell', 'cabal']}

" ScScScala: It's like JavaScript, but still bad
Plug 'ensime/ensime-vim',         {'for': 'scala'}
Plug 'derekwyatt/vim-scala',      {'for': 'scala'}

" OtOtOther
Plug 'LeonB/vim-nginx',           {'for': 'nginx'}
Plug 'cakebaker/scss-syntax.vim', {'for': 'scss'}
Plug 'nono/vim-handlebars',       {'for': 'hbs'}
Plug 'plasticboy/vim-markdown',   {'for': 'markdown'}
Plug 'toyamarinyon/vim-swift',    {'for': 'swift'}

" OtOtOtherOtOtOther
Plug 'powerman/vim-plugin-AnsiEsc'

" Lolkay: Some fance-shmance
Plug 'ryanoasis/vim-devicons'

call plug#end()
