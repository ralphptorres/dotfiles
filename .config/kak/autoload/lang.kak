hook global WinSetOption filetype=(git|mail) %{
    add-highlighter global/ column 50 default,blue
    set-option global autowrap_column 72
}
hook global BufCreate .*.patch %{
    add-highlighter global/ column 50 default,blue
    set-option global autowrap_column 72
}
hook global WinSetOption filetype=sh %{
    set-option window lintcmd "shellcheck -fgcc -Cnever"
}
