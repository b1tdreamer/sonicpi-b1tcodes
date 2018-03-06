# key: hb
# point_line: 0
# point_index: 0
# --
live_loop :heart do
  use_bpm 60
  sample  :bd_808, amp: fadii.tick, rate: 1.4
  sleep 0.35
  sample :bd_808, amp: fadii.look, rate: 1.2
  sleep 1
end