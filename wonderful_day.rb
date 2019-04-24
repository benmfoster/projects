def animate_frame
    sleep(0.2) #pauses for 0.2 seconds (5 frames per second)
    print "\e[2J\e[H" #resets the terminal screen
end

chars = "This is a wonderful day. ".split("")
  
chars.length.times do
    animate_frame
    puts chars.join("")
    char = chars.shift
    chars << char
end

chars.length.times do
    animate_frame
    puts chars.join("")
    char = chars.pop
    chars.unshift(char)
end