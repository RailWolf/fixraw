#!/usr/bin/env ruby

#
# 2015 Brandon Calhoun
# wailrofl@gmail.com
#
# Syntax: fixraw.rb <filename>
# FixRaw will correctly set offsets 4 through 7 on RAW file. Currently only supports Nikon. 
#

file = ARGV[0]
hexvalue = [0x00]
offset = 4 
  
# Loop binwrite until offset 4 through 7 have been written  
until offset == 8 do 
 if offset == 7 then hexvalue = [0x08] end
  IO.binwrite(file, hexvalue.pack("C"), offset)
  offset += 1
end




