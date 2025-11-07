-- Configura rastros para localização em arquivos yaml
-- https://github.com/JFryy/keytrail.nvim
-- comandos
-- :KeyTrail <path>
-- :KeyTrailJump
-- :KeyTrailYank
--
-- By default, KeyTrail maps <leader>jq to :KeyTrailJump and <leader>jy to
-- :KeyTrailYank in normal mode.
return {
    "jfryy/keytrail.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter"
    }
}

