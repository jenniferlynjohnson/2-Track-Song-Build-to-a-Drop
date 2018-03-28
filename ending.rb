#=begin

live_loop :uhoh do
  stop
end

live_loop :trumpet do #sleep=8
  stop
end

live_loop :tuba do #sleep=8
  stop
end

live_loop :bass1 do #sleep=8
  stop
end

live_loop :drum do
  stop
end

live_loop :ending do
  
  3.times do
    sample beyonce_vocals ,amp: e
    sleep 8
    e = e - 1
  end
  stop
end
#=end



