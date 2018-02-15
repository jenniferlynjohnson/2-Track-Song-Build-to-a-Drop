use_bpm 100
x=2
i=0
m = :ambi_choir

array=[ :c2, :c2, :e2, :f2]
s= [0.25, 2, 0.75, 1.25]
3.times do
  4.times do
    play array[i]
    sleep s[i]
    i=i+1
  end
  i=0
end


1.times do
  sample :m ,amp: x
  sleep 1
  sample :ambi_choir ,amp: x + 4
  sleep 1
  sample :ambi_choir ,amp: x + 6
  sleep 1
  sample :ambi_choir ,amp: x + 8
  sleep 1
end

live_loop :drums do
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
end


live_loop :bass do
  4.times do
    play array[i]
    sleep s[i]
    i=i+1
  end
  i=0
end


