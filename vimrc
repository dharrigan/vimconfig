"
" Source everything in from the 'custom' directory
"
for f in split(glob('~/.vim/custom/*.vim'), '\n')
    exe 'source' f
endfor
