-- M = {}
-- function M.setup()
--   local status_ok, nvim_tree = pcall(require, "nvim-tree")
--   if not status_ok then
--     Log:error "Failed to load nvim-tree"
--     return
--   end
--   if lvim.builtin.nvimtree._setup_called then
--     Log:debug "ignoring repeated setup call for nvim-tree, see kyazdani42/nvim-tree.lua#1308"
--     return
--   end
--   lvim.builtin.which_key.mappings["e"] = nil
--   lvim.builtin.nvimtree._setup_called = false;
-- end

-- return M

local M = {}
function M.setup()
  local status_ok, nvim_tree = pcall(require, "nvim-tree")
  if not status_ok then
    Log:error "Failed to load nvim-tree"
    return
  end


  if lvim.builtin.nvimtree._setup_called then
    Log:debug "ignoring repeated setup call for nvim-tree, see kyazdani42/nvim-tree.lua#1308"
    return
  end

  lvim.builtin.which_key.mappings["e"] = nil
  lvim.builtin.nvimtree._setup_called = false
end

-- tratando de quitar la e del menu
return M
