vim.api.nvim_create_augroup("alpha_on_empty", { clear = true })

vim.api.nvim_create_autocmd("BufEnter", {
  group = "alpha_on_empty",
  callback = function()
    vim.defer_fn(function()
      local wins = vim.api.nvim_list_wins()
      local real_wins = vim.tbl_filter(function(win)
        local buf = vim.api.nvim_win_get_buf(win)
        local ft = vim.api.nvim_buf_get_option(buf, "filetype")
        return ft ~= "neo-tree" and ft ~= "alpha"
      end, wins)

      local bufs = vim.fn.getbufinfo { buflisted = 1 }
      local current_name = vim.api.nvim_buf_get_name(0)
      local current_ft = vim.bo.filetype

      -- print ">>> evaluating conditions"
      -- print("current_name:", current_name)
      -- print("current_ft:", current_ft)
      -- print("#bufs:", #bufs)
      -- print("real_win_count:", #real_wins)

      if current_name == "" and current_ft == "" and #bufs == 1 and #real_wins == 1 then
        -- print ">>> conditions met!"
        local ok, alpha = pcall(require, "alpha")
        if ok then
          vim.schedule(function()
            alpha.start(true)
            -- print ">>> Alpha launched!"
            -- local ok_alpha, alpha = pcall(require, "alpha")
            local ok_custom, custom_alpha = pcall(require, "user.alpha") -- adjust path if needed

            if ok and ok_custom then
              custom_alpha.set_random_header()
              alpha.start(true)
            end
          end)
        end
      end
    end, 0) -- INFO: if this gets buggy, probably increase this to 50 or 100. alpha might be trying to replace the untitled file to early
  end,
})
