# key: glitch
# point_line: 0
# point_index: 0
# --
with_fx :reverb, room: 0.8, mix:0.8 do
  with_fx :flanger, mix: 0.8 do
    live_loop :glitch do
      3.times do
        sample :glitch_bass_g, amp: rrand(1,2)
        sleep rrand(0.15,0.5)
      end
      sample :loop_3d_printer, rate: -0.8
      sleep sample_duration(:loop_3d_printer) * 0.8
    end
  end
end
