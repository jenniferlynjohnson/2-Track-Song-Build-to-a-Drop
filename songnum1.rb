=begin
3.times do
  4.times do
    p= choose([36, 36, 40,41])
    play p
    sleep s[i]
    i=i+1
  end
  i=0
end




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
=end
