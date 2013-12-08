# -*- coding: utf-8 -*-
testfile = ARGV[0]
correctfile = ARGV[1]

line = 0;
File.open(testfile){|t|
  File.open(correctfile){|c|
    while true
      line = line +1
      tl = t.gets
      cl = c.gets
      if !tl.nil?
        tl.chomp!
      end
      if !cl.nil?
        cl.chomp!
      end

      if tl != cl 
        puts "Incorrect"
        puts "Error line is "+line.to_s
        puts tl
        puts cl
        break
      elsif tl == cl
        #puts tl
        if tl.nil? & cl.nil?
          puts "Correct"
          break
        end
      end
    end
  }
}
