local M = {}

-- Featured FIGlet fonts: BlurVision ASCII
local art1 = [[
░▒▓███████▓▒░░▒▓███████▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░▒▓████████▓▒░▒▓████████▓▒░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░       ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░ ░▒▓█▓▒░   ░▒▓██████▓▒░ ░▒▓███████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░       ░▒▓█████████████▓▒░░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░ 
]]

-- Regular FIGlet Fonts: Univers
local art2 = [[
                                                                                                                             
    88     ,a8888a,                                             88                                                           
  ,d88   ,8P"'  `"Y8,                                           88                                                           
888888  ,8P        Y8,                                          88                                                           
    88  88          88     8b,dPPYba,   88       88  ,adPPYba,  88,dPPYba,             88       88  8b,dPPYba,   ,adPPYba,   
    88  88          88     88P'    "8a  88       88  I8[    ""  88P'    "8a  aaaaaaaa  88       88  88P'    "8a  I8[    ""   
    88  `8b        d8'     88       d8  88       88   `"Y8ba,   88       88  """"""""  88       88  88       d8   `"Y8ba,    
    88   `8ba,  ,ad8'      88b,   ,a8"  "8a,   ,a88  aa    ]8I  88       88            "8a,   ,a88  88b,   ,a8"  aa    ]8I   
    88     "Y8888P"        88`YbbdP"'    `"YbbdP'Y8  `"YbbdP"'  88       88             `"YbbdP'Y8  88`YbbdP"'   `"YbbdP"'   
                           88                                                                       88                      
                           88                                                                       88                      
]]

-- Featured FIGlet Fonts: Sub-Zero
local art3 = [[
 ______   __     __   __   ______        __  __     ______     ______     __            ______     ______     __     ______     ______     ______    
/\  ___\ /\ \   /\ \ / /  /\  ___\      /\ \_\ \   /\  ___\   /\  ___\   /\ \          /\  == \   /\  __ \   /\ \   /\  ___\   /\  ___\   /\  ___\   
\ \  __\ \ \ \  \ \ \'/   \ \  __\      \ \  __ \  \ \  __\   \ \  __\   \ \ \____     \ \  __<   \ \  __ \  \ \ \  \ \___  \  \ \  __\   \ \___  \  
 \ \_\    \ \_\  \ \__|    \ \_____\     \ \_\ \_\  \ \_____\  \ \_____\  \ \_____\     \ \_\ \_\  \ \_\ \_\  \ \_\  \/\_____\  \ \_____\  \/\_____\ 
  \/_/     \/_/   \/_/      \/_____/      \/_/\/_/   \/_____/   \/_____/   \/_____/      \/_/ /_/   \/_/\/_/   \/_/   \/_____/   \/_____/   \/_____/ 
                                                                                                                                                     
]]

-- Featured FIGlet Fonts: Ogre
local art4 = [[
                                    _ _   _             _   _                       _     _   
  ___  _ __   ___   _ __   ___  ___(_) |_(_)_   _____  | |_| |__   ___  _   _  __ _| |__ | |_ 
 / _ \| '_ \ / _ \ | '_ \ / _ \/ __| | __| \ \ / / _ \ | __| '_ \ / _ \| | | |/ _` | '_ \| __|
| (_) | | | |  __/ | |_) | (_) \__ \ | |_| |\ V /  __/ | |_| | | | (_) | |_| | (_| | | | | |_ 
 \___/|_| |_|\___| | .__/ \___/|___/_|\__|_| \_/ \___|  \__|_| |_|\___/ \__,_|\__, |_| |_|\__|
                   |_|                                                        |___/           
]]

local art5 = [[

8888888888                                           88                                                          
88                                                   88                                                          
88  ____                                             88                                                          
88a8PPPP8b,     8b,dPPYba,   88       88  ,adPPYba,  88,dPPYba,             88       88  8b,dPPYba,   ,adPPYba,  
PP"     `8b     88P'    "8a  88       88  I8[    ""  88P'    "8a  aaaaaaaa  88       88  88P'    "8a  I8[    ""  
         d8     88       d8  88       88   `"Y8ba,   88       88  """"""""  88       88  88       d8   `"Y8ba,   
Y8a     a8P     88b,   ,a8"  "8a,   ,a88  aa    ]8I  88       88            "8a,   ,a88  88b,   ,a8"  aa    ]8I  
 "Y88888P"      88`YbbdP"'    `"YbbdP'Y8  `"YbbdP"'  88       88             `"YbbdP'Y8  88`YbbdP"'   `"YbbdP"'  
                88                                                                       88                      
                88                                                                       88                      
]]

local art6 = [[

░▒▓███████▓▒░       ░▒▓███████▓▒░░▒▓████████▓▒░▒▓████████▓▒░▒▓███████▓▒░       ░▒▓███████▓▒░░▒▓███████▓▒░░▒▓████████▓▒░░▒▓██████▓▒░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓███████▓▒░ 
       ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        
       ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░        
░▒▓███████▓▒░       ░▒▓█▓▒░░▒▓█▓▒░▒▓██████▓▒░ ░▒▓██████▓▒░ ░▒▓███████▓▒░       ░▒▓███████▓▒░░▒▓███████▓▒░░▒▓██████▓▒░ ░▒▓████████▓▒░ ░▒▓█▓▒░   ░▒▓████████▓▒░░▒▓██████▓▒░  
       ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░ 
       ░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░      ░▒▓█▓▒░             ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░ 
░▒▓███████▓▒░       ░▒▓███████▓▒░░▒▓████████▓▒░▒▓████████▓▒░▒▓█▓▒░             ░▒▓███████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓████████▓▒░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░   ░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░  
                                                                                                                                                                           
]]

-- Regular FIGlet Fonts: Colossal
local art7 = [[
d8b d8b                                            888             .d888          888       .d888                          
Y8P 88P                                            888            d88P"           888      d88P"                           
    8P                                             888            888             888      888                             
888 "  88888b.d88b.        .d88b.  888d888 8888b.  888888 .d88b.  888888 888  888 888      888888 .d88b.  888d888          
888    888 "888 "88b      d88P"88b 888P"      "88b 888   d8P  Y8b 888    888  888 888      888   d88""88b 888P"            
888    888  888  888      888  888 888    .d888888 888   88888888 888    888  888 888      888   888  888 888              
888    888  888  888      Y88b 888 888    888  888 Y88b. Y8b.     888    Y88b 888 888      888   Y88..88P 888  d8b d8b d8b 
888    888  888  888       "Y88888 888    "Y888888  "Y888 "Y8888  888     "Y88888 888      888    "Y88P"  888  Y8P Y8P Y8P 
                               888                                                                                         
                          Y8b d88P                                                                                         
                           "Y88P"                                                                                          
]]

-- Regular FIGlet Fonts: Lean
local art8 = [[
                                                                                      
    _/    _/                  _/    _/                                                
 _/_/  _/  _/        _/_/_/      _/_/_/_/              _/    _/  _/_/_/      _/_/_/   
  _/  _/  _/      _/_/      _/    _/      _/_/_/_/_/  _/    _/  _/    _/  _/_/        
 _/  _/  _/          _/_/  _/    _/                  _/    _/  _/    _/      _/_/     
_/    _/        _/_/_/    _/      _/_/                _/_/_/  _/_/_/    _/_/_/        
                                                             _/                       
                                                            _/                        
]]

-- Regular FIGlet Fonts: Alligator
local art9 = [[
      :::::::::  :::::::::  ::::::::::: ::::    ::: :::    :::        :::       :::     ::: ::::::::::: :::::::::: ::::::::: 
     :+:    :+: :+:    :+:     :+:     :+:+:   :+: :+:   :+:         :+:       :+:   :+: :+:   :+:     :+:        :+:    :+: 
    +:+    +:+ +:+    +:+     +:+     :+:+:+  +:+ +:+  +:+          +:+       +:+  +:+   +:+  +:+     +:+        +:+    +:+  
   +#+    +:+ +#++:++#:      +#+     +#+ +:+ +#+ +#++:++           +#+  +:+  +#+ +#++:++#++: +#+     +#++:++#   +#++:++#:    
  +#+    +#+ +#+    +#+     +#+     +#+  +#+#+# +#+  +#+          +#+ +#+#+ +#+ +#+     +#+ +#+     +#+        +#+    +#+    
 #+#    #+# #+#    #+#     #+#     #+#   #+#+# #+#   #+#          #+#+# #+#+#  #+#     #+# #+#     #+#        #+#    #+#     
#########  ###    ### ########### ###    #### ###    ###          ###   ###   ###     ### ###     ########## ###    ###      
]]

-- Featured FIGlet Fonts: Shaded Blocky
local art10 = [[
░       ░░░       ░░░        ░░   ░░░  ░░  ░░░░  ░░░░░░░░  ░░░░  ░░░      ░░░        ░░        ░░       ░░
▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒▒    ▒▒  ▒▒  ▒▒▒  ▒▒▒▒▒▒▒▒▒  ▒  ▒  ▒▒  ▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒
▓  ▓▓▓▓  ▓▓       ▓▓▓▓▓▓  ▓▓▓▓▓  ▓  ▓  ▓▓     ▓▓▓▓▓▓▓▓▓▓▓        ▓▓  ▓▓▓▓  ▓▓▓▓▓  ▓▓▓▓▓      ▓▓▓▓       ▓▓
█  ████  ██  ███  ██████  █████  ██    ██  ███  █████████   ██   ██        █████  █████  ████████  ███  ██
█       ███  ████  ██        ██  ███   ██  ████  ████████  ████  ██  ████  █████  █████        ██  ████  █
]]

local headers = { art1, art2, art3, art4, art5, art6, art7, art8, art9, art10 }

function M.set_random_header()
  local alpha = require "alpha"
  local dashboard = require "alpha.themes.dashboard"

  local index = math.random(1, #headers)
  dashboard.section.header.val = vim.split(headers[index], "\n")
  alpha.setup(dashboard.opts)
end

return M
