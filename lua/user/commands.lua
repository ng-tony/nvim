vim.api.nvim_create_user_command("IDate", "execute ':normal! O' . strftime('--- %c ---')", {})

vim.api.nvim_exec(
	[[
function! GotoFileLine2()
  let curBuf = bufnr("%")
  let curPos = getcurpos()
  wincmd p
  exe 'buf' curBuf
  call cursor(curPos[1], curPos[2])
  exe "normal gF"
  stopinsert
endfunction
    ]],
	false
)

vim.api.nvim_exec(
	[[
function! Wipeout()
  " list of *all* buffer numbers
  let l:buffers = range(1, bufnr('$'))

  " what tab page are we in?
  let l:currentTab = tabpagenr()
  try
    " go through all tab pages
    let l:tab = 0
    while l:tab < tabpagenr('$')
      let l:tab += 1

      " go through all windows
      let l:win = 0
      while l:win < winnr('$')
        let l:win += 1
        " whatever buffer is in this window in this tab, remove it from
        " l:buffers list
        let l:thisbuf = winbufnr(l:win)
        call remove(l:buffers, index(l:buffers, l:thisbuf))
      endwhile
    endwhile

    " if there are any buffers left, delete them
    if len(l:buffers)
      execute 'bwipeout' join(l:buffers)
    endif
  finally
    " go back to our original tab page
    execute 'tabnext' l:currentTab
  endtry
endfunction
    ]],
	false
)
