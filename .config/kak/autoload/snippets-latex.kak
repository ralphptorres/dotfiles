hook global BufSetOption filetype=latex %{ 
    set buffer snippets %opt{snippets}
    set -add buffer snippets 'alpha' ',,a' %{ snippets-insert %{\alpha${}} }
}
