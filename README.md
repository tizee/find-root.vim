# findfirst.vim

Find the first matched file path until reached root which is `\` in Unix-like system.

No dependency required.

## Usage

```
" return: path to file
function! g:FindFirst(pattern) " -> v:string
```

```vimscript
" find path
call FindFirst("Cargo.toml")
call FindFirst("package.json")
call FindFirst("^README.*$")
call FindFirst(".*\.md")
call FindFirst(".editorconfig")
call FindFirst(".git$")
```
