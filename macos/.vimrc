set nocompatible        " 오리지날 VI와 호환하지 않음
set autoindent          " 자동 들여쓰기
set cindent             " C 프로그래밍용 자동 들여쓰기
set smartindent         " 스마트한 들여쓰기
set wrap                
set nowrapscan          " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup            " 백업 파일을 안만듬
set noswapfile          
"set visualbell         " 키를 잘못눌렀을 때 화면 프레시
set ruler               " 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set shiftwidth=4        " 자동 들여쓰기 4칸
set number              " 행번호 표시, set nu 도 가능
set fencs=ucs-bom,utf-8,euc-kr.latin1 " 한글 파일은 euc-kr로, 유니코드는 유니코드로
set fileencoding=utf-8  " 파일저장인코딩
set tenc=utf-8          " 터미널 인코딩
set expandtab           " 탭대신 스페이스
set hlsearch            " 검색어 강조, set hls 도 가능
set ignorecase          " 검색시 대소문자 무시, set ic 도 가능
set tabstop=4           " 탭을 4칸으로
set lbr                
set incsearch           " 키워드 입력시 점진적 검색
set cursorline          " 편집 위치에 커서 라인 설정
set laststatus=2        " 상태바 표시를 항상한다
set background=dark     " 하이라이팅 lihgt / dark
"colorscheme jellybeans  "  vi 색상 테마 설정
colorscheme desert      "  vi 색상 테마 설정
set backspace=eol,start,indent "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000        " vi 편집기록 기억갯수 .viminfo에 기록
set mouse=a             " vim 에서 마우스 사용
set t_Co=256            " 색 조정

syntax on               " 구문강조 사용
filetype indent on      " 파일 종류에 따른 구문강조
filetype plugin on
highlight Comment term=bold cterm=bold ctermfg=4 " 코멘트 하이라이트

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'neocomplcache'
Plugin 'L9'
"Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'valloric/youcompleteme'
Plugin 'jarrodctaylor/vim-shell-executor'
"Plugin 'soramugi/auto-ctags.vim'
Plugin 'shougo/vimshell.vim'
Plugin 'shougo/vimproc.vim'
Plugin 'fatih/vim-go'

call vundle#end()

" 키 맵핑
" <F1> 폴딩
"map <F1> v]}zf
map <F1> :tabnew<cr>
" <F2> 창이동
map <F2> <C-w><C-w>
" <F3> NERDTree
map <F3> :NERDTreeToggle<cr>
" <F4> Tlist
"map <F4> :Tlist<cr>
map <F4> :TagbarToggle<cr>
" <F5> [i 정의 내용 보여주기
map <F5> [i
" <F6> gd 변수 선언으로 이동
map <F6> gd
" <F7> shell
map <F7> :VimShell<cr>
" <F8> Dox
map <F8> :Dox<cr>
" bnext, bprev
map <Tab> :bp<cr>
map <S-Tab> :bn<cr>
" tabn
"map <S-Tab> gt<cr>
" bnext
map <S-F1> :bnext<cr>

let g:gitgutter_max_signs=9999

"============================================= neocomplcache Start
let g:neocomplcache_enable_at_startup = 1 

"============================================= syntastic Start
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0

"============================================= air-line Start
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"============================================= nerdcommenter
let g:NERDSpaceDelims = 1           " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1       " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left'     " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1        " Set a language to use its alternate delimiters by default
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } } " Add your own custom formats or override the defaults
let g:NERDCommentEmptyLines = 1     " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1   " Enable NERDCommenterToggle to check all selected lines is commented or not 

"============================================= auto_ctags
"let g:auto_ctags = 1
"let g:auto_ctags_directory_list = ['.git', '.svn','./']
"let g:auto_ctags_tags_name = 'tags'
"let g:auto_ctags_tags_args = ['--tag-relative=yes', '--recurse=yes', '--sort=yes']
"let g:auto_ctags_filetype_mode = 1

