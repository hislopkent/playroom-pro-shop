-- ============================================================================
-- REMOTE LOGIC SCRIPT
-- AUTHOR: Kent Hislop
-- PURPOSE: Maps remote buttons to Windows Batch Scripts and Keyboard Shortcuts
-- ============================================================================

-- EVENT: FOCUS
-- This runs once when the remote is opened on the tablet.
events.focus = function()
    -- Optional: You could verify the connection here, but we leave it empty.
end

-- ============================================================================
-- SECTION 1: LAUNCH COMMANDS
-- These functions trigger the .bat files to start the simulator software.
-- ============================================================================

actions.launch_e6 = function()
    -- IMPORTANT: Double slashes (\\) are required in Lua file paths.
    -- This command tells Windows to run the specific batch file.
    os.open("C:\\Users\\Kent\\Documents\\playroom-pro-shop-control\\scripts\\open_shop_e6.bat")
end

actions.launch_ag = function()
    os.open("C:\\Users\\Kent\\Documents\\playroom-pro-shop-control\\scripts\\open_shop_ag.bat")
end

actions.show_desktop = function()
    -- Sends "Windows Key + D" to minimize everything and show desktop.
    kb.stroke("win", "d")
end

-- ============================================================================
-- SECTION 2: E6 CONNECT SHORTCUTS
-- These map to the standard keyboard hotkeys for E6 Connect.
-- ============================================================================

actions.e6_mulligan = function()
    kb.stroke("m") -- Press 'M' for Mulligan
end

actions.e6_scorecard = function()
    kb.stroke("s") -- Press 'S' for Scorecard
end

actions.e6_left = function()
    kb.stroke("left") -- Arrow Left (Aim)
end

actions.e6_right = function()
    kb.stroke("right") -- Arrow Right (Aim)
end

actions.e6_club_up = function()
    kb.stroke("up") -- Arrow Up (Club Selection)
end

actions.e6_club_down = function()
    kb.stroke("down") -- Arrow Down (Club Selection)
end

actions.e6_enter = function()
    kb.stroke("return") -- Enter Key (Select)
end

actions.e6_esc = function()
    kb.stroke("escape") -- Escape Key (Menu/Back)
end

-- ============================================================================
-- SECTION 3: AWESOME GOLF SHORTCUTS
-- These map to the hotkeys for Awesome Golf.
-- ============================================================================

actions.ag_mulligan = function()
    kb.stroke("m")
end

actions.ag_view = function()
    kb.stroke("v") -- Press 'V' to toggle view (Fairway/Green)
end

actions.ag_left = function()
    kb.stroke("left")
end

actions.ag_right = function()
    kb.stroke("right")
end

actions.ag_enter = function()
    kb.stroke("return")
end

actions.ag_menu = function()
    kb.stroke("escape")
end
