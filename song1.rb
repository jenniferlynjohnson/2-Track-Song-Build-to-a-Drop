array=[ :c2, :c2, :e2, :f2]
s= [0.25, 2, 0.75, 1.25]
#this randomizes what note from the array is played. the numbers on line 8 are equivalent to the notes on line 6
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



1.times do
  build_up
end

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
