#!/usr/bin/env ruby

#
# 2015 Brandon Calhoun
# wailrofl@gmail.com
#
# Syntax: fixraw.rb <filename>
# FixRaw will correctly set offsets 4 through 7 on a RAW file. Currently only supports Nikon. 
#

file = ARGV[0]
hexvalue = [0x00]

4.upto(7) do |offset|
  if offset == 7 then hexvalue = [0x08] end
    IO.binwrite(file, hexvalue.pack("C"), offset)
    end



