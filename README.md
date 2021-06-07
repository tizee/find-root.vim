# find-root.vim

Find the first matched file up to / in Unix-like system.

No dependency required.

## Usage

```
function! g:FindRootWindow(pattern) " -> v:string
```

```vimscript
call FindRootWindow("Cargo.toml")
call FindRootWindow("package.json")
call FindRootWindow("^README.*$")
call FindRootWindow(".*\.md")
call FindRootWindow(".editorconfig")
call FindRootWindow(".git$")
```
