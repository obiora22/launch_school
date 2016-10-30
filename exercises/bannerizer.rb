def bannerizer(str)
 main_border =  "+#{'-' * str.length}+"
 middle_border = "|#{' ' * str.length}|"
 p main_border
 p middle_border
 p "|#{str}|"
 p middle_border
 p main_border
end

bannerizer(" ")
