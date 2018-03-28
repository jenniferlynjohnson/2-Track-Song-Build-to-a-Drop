




 
  build_up



live_loop :drums do
  drum
end


live_loop :bass do
  4.times do
    play array[i]
    sleep s[i]
    i=i+1
  end
  i=0
end
