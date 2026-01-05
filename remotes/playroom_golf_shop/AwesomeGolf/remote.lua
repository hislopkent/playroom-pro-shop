local kb = require("keyboard");
local os = require("os");
local ms = require("mouse");

-- ============================================================================
-- 1. SYSTEM COMMANDS
-- ============================================================================

actions.launch_ag = function()
    os.open("C:\\Users\\hislo\\Documents\\playroom-pro-shop-control\\scripts\\open_shop_ag.bat");
end

actions.close_shop = function()
    os.open("C:\\Users\\hislo\\Documents\\playroom-pro-shop-control\\scripts\\close_shop.bat");
end

-- ============================================================================
-- 2. MOUSE CONTROL
-- ============================================================================

actions.touch_event = function(data)
    ms.touch(data);
end

actions.left_click = function() ms.click("left"); end
actions.right_click = function() ms.click("right"); end
actions.scroll_up = function() ms.scroll("up"); end
actions.scroll_down = function() ms.scroll("down"); end

-- ============================================================================
-- 3. GAMEPLAY ACTIONS (Official Shortcuts)
-- ============================================================================

-- "M" - Mulligan (Virtual Golf)
actions.mulligan = function() kb.stroke("m"); end

-- "SPACE" - Stop Auto-Countdown (Crucial for reviewing stats)
actions.stop_timer = function() kb.stroke("space"); end

-- "S" - Switch Player
actions.switch_player = function() kb.stroke("s"); end

-- "R" - Replay
actions.replay = function() kb.stroke("r"); end

-- "A" - Toggle Audio
actions.toggle_audio = function() kb.stroke("a"); end

-- ============================================================================
-- 4. NAVIGATION & VIEWS
-- ============================================================================

-- Arrows handle Aiming (Golf) AND Next/Prev Shot (History)
actions.left = function() kb.stroke("left"); end
actions.right = function() kb.stroke("right"); end

-- Enter / Escape handle Menus AND Continue/Dismiss
actions.enter = function() kb.stroke("return"); end
actions.escape = function() kb.stroke("escape"); end

-- View Controls
actions.cycle_view = function() kb.stroke("v"); end
actions.cycle_camera = function() kb.stroke("c"); end
actions.firmness = function() kb.stroke("f"); end