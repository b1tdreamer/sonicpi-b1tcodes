# key: ddg
# point_line: 0
# point_index: 0
# --
live_loop :didge do
  with_fx :reverb, room: rrand(0.6,0.8), mix:0.8 do
    with_fx :slicer, phase: [0.125,0.25].choose, mix: rrand(0.5,0.85)  do
      sample didge, "didgeLow2", attack: 2, rate: -0.6
      #control fx, phase: 0.1
      sleep sample_duration didge, "didgeLow2"*1.6
    end
  end
end