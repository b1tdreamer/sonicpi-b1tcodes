# key: llss
# point_line: 0
# point_index: 11
# --
live_loop :sol do
  sole = solenoid, [0,1,2,3].choose
  sample sole, onset: pick, amp: fadi.tick
  sleep [0.125,0.25,0.25,0.5].choose
end