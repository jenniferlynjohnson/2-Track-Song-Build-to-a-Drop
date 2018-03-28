=begin
live_loop :drums do
  stop
end

live_loop :bass do
  stop
end

live_loop :meh do
  stop
end

1.times do
  sleep 0.25
  sample ready
  sleep 2
end
