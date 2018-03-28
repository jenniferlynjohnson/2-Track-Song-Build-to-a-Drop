live_loop :uhoh do
  sleep 8
  j= choose([1, 3,])
  sample beyonce_vocals ,amp: j
  sleep 8
end

live_loop :trumpet do #sleep=8
  trumpet
  play :C5
  sleep 0.5
  trumpet
  play :E5
  sleep 0.5
end

live_loop :tuba do #sleep=8
  tuba :Eb2
  tuba :C2
end

live_loop :bass1 do #sleep=8
  bass
end

live_loop :drum do
  sample :bd_boom
  sleep 1
end
=end
