use_bpm 100

x=2
3.times do
  play :c2
  sleep 0.25
  play :c2
  sleep 2
  play :e2
  sleep 0.75
  play :f2
  sleep 1.25
end

1.times do
  sample :ambi_choir ,amp: x
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
  play :c2
  sleep 0.25
  play :c2
  sleep 2
  play :e2
  sleep 0.75
  play :f2
  sleep 1
end
