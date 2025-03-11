function fish_prompt
    string join '' -- (set_color red)'ฅ^•ﻌ•^ฅ ' (set_color yellow) $USER':' (set_color green) (prompt_pwd --full-length-dirs 1) '/' (set_color red)' ᓚᘏᗢ '
end
