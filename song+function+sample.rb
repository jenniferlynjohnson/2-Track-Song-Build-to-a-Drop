use_bpm 100
x=2
i=0
m = :ambi_choir
kanye_vocals = "C:/Users/jennifer_johnson/Desktop/My_samples/love_lockdown_full_song__.wav"


array=[ :c2, :c2, :e2, :f2]
s= [0.25, 2, 0.75, 1.25]
p= choose([36, 36, 40,41]) #this randomizes what note from the array is played. the numbers
#line 8 are equivalent to the notes on line 6
define :build_up do
  sample :m ,amp: x
  sleep 1
  sample :ambi_choir ,amp: x + 4
  sleep 1
  sample :ambi_choir ,amp: x + 6
  sleep 1
  sample :ambi_choir ,amp: x + 8
  sleep 1
end

3.times do
  4.times do
    play p
    sleep s[i]
    i=i+1
  end
  i=0
end


1.times do
  build_up
end

use_bpm 75
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
live_loop :kanye_vocals do
  sample kanye_vocals
  sleep 16 # this sleep is 8 because the sleep of both loops above are 4 allowing us to stay 'in pocket'
end
