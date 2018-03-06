# key: tra
# point_line: 16
# point_index: 0
# --
live_loop :travel do
  tick_reset_all
  use_synth :beep
  notes = scale(:e3, :minor_pentatonic, num_octaves: 2)
  use_random_seed 679
  with_fx :echo, phase: 0.125, mix: 0.3, reps: 16 do
    with_fx :reverb, room: 0.5, mix: 0.5 do
      sleep [0.125,0.25, 0.25].choose
      play notes.choose, attack: 0, release: 0.1, pan: (range -1, 1, step: 0.125).tick, amp: fadi.tick, cutoff: 120
    end
  end
end