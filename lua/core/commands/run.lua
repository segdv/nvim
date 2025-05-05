local prefix_command = "botright new | :e term://";

local function run_project()
    local entries = {
        { path = ".nvimrun.sh",  cmd = "bash .nvimrun.sh", },
        { path = "Cargo.toml",   cmd = "cargo run", },
        { path = "android",      cmd = "flutter run -d linux", },
        { path = "pubspec.yaml", cmd = "dart run --enable-asserts", },
    };

    local found = false

    for _, entry in pairs(entries) do
        local path = vim.fn.getcwd() .. "/" .. entry.path;
        local stat = vim.uv.fs_stat(path);

        if stat ~= nil then
            found = true;
            vim.cmd(prefix_command .. entry.cmd);
            vim.api.nvim_feedkeys("i", "n", true);
            break;
        end
    end

    if not found then
        print("Command not found.");
    end
end

return run_project;
