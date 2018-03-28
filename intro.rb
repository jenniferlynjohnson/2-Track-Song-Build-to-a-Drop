use_bpm 100
beyonce_vocals = "C:/Users/jennifer_johnson/Desktop/My_samples/auhoh.wav"
ready = "C:/Users/jennifer_johnson/Desktop/My_samples/uready.wav"
use_synth :blade
s= [2, 0.5, 0.25, 0.25,0.25, 0.5]
x=2
i=0
m = :ambi_choir
#lines 6-36 is called a function. Having a function makes it easy to repeat code throughout my song concisely
define :trumpet do
  play :a4
  sleep 2
  play :A4
  sleep 0.25
  play :B4
  sleep 0.5
  play :C5
  sleep 0.25
  play :r
  sleep 0.25
  play :D5
  sleep 0.25
end

define :tuba do |note1|
  play note1
  sleep 0.5
  play note1
  sleep 0.5
  play note1
  sleep 0.5
  play note1
  sleep 0.5
  play note1, sustain: 1.5
  sleep 2
  
end

define :bass do
  play :D4
  sleep 1
  play :D4
  sleep 1
  play :D4
  sleep 1
  play :D4
  sleep 1
  play :D4
  sleep 1
  play :D4
  sleep 1
  play :D4
  sleep 1
  play :D4
  sleep 1
end

define :build_up do
  sample :m ,amp: x
  sleep 1
  sample :ambi_choir ,amp: x + 4
  sleep 1
  sample :ambi_choir ,amp: x + 6
  sleep 1
  sample :ambi_choir ,amp: x + 8
end

define :drum do
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
end


#everything above this line are functions
#my first song




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
