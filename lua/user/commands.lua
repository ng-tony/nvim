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

vim.api.nvim_exec(
	[[
function! Exec_on_term(cmd, pos)
  exec "normal! ma"
  let backup_a=@a
  let backup_b=@b
  let sep = "------"
  exec "normal! ?".sep."\<CR>jV/".sep."\<CR>k\"ay"
  exec "normal! /".sep."\<CR>jO"
  if a:pos == "next"
      exec "normal! O".sep
      exec "normal! jddkko"
  endif
  exec "normal! V/".sep."\<CR>kdO"
  let @b=system(@a)
  execute "put b"
  execute "normal! ?".sep."\<CR>jdd"
  exec "normal 'a"
  let @b=backup_b
  let @a=backup_a
endfunction
  ]],
	true
)

vim.api.nvim_exec(
	[[

function! NextTextObject(motion, dir)
  let c = nr2char(getchar())

  if c ==# "b"
      let c = "("
  elseif c ==# "B"
      let c = "{"
  elseif c ==# "d"
      let c = "["
  endif

  exe "normal! ".a:dir.c."v".a:motion.c
endfunction
onoremap an :<c-u>call NextTextObject('a', 'f')<cr>
onoremap an :<c-u>call NextTextObject('a', 'f')<cr>
xnoremap an :<c-u>call NextTextObject('a', 'f')<cr>
onoremap in :<c-u>call NextTextObject('i', 'f')<cr>
xnoremap in :<c-u>call NextTextObject('i', 'f')<cr>

onoremap al :<c-u>call NextTextObject('a', 'F')<cr>
xnoremap al :<c-u>call NextTextObject('a', 'F')<cr>
onoremap il :<c-u>call NextTextObject('i', 'F')<cr>
xnoremap il :<c-u>call NextTextObject('i', 'F')<cr>

  ]],
	true
)

