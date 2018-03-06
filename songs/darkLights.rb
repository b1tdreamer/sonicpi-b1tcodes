# Dark Lights
# Coded by b1tdreamer

aloloco = 0
chords = (ring :e2, :e2, :g2, :g2, :a2, :a2)
fadi =  (ramp *range(0, 1.01, 0.1))
fado =  (ramp *range(1.01, 0, 0.3))
fadii =  (ramp *range(0, 6, 0.3))
fadoo =  (ramp *range(6, 0, 0.3))
coff =  (range 90, 130.01, step: 1.01).mirror

live_loop :tempo do
  sleep 2
end

live_loop :foo do
  #stop
  case aloloco
  when 1
    sample :loop_garzul, amp: 0.8
    sleep 8
  when 2
    sample :loop_garzul, amp: 1.4
    use_synth :prophet
    play :e2, release: 8, cutoff: rrand(70, 110),pan: (range -1, 1, step: 0.125).tick, amp: 1.3
    sleep 4
    play :e2, release: 8, cutoff: rrand(70, 110),pan: (range -1, 1, step: 0.125).tick, amp: 1.3
    sleep 4
  when 3..4
    sample :loop_garzul, amp: 1.5
    use_synth :prophet
    play chords.tick(:chords), release: 8, cutoff: rrand(80, 115),pan: 0, amp: 1.6
    sleep 4
    play chords.tick(:chords), release: 8, cutoff: rrand(80, 115),pan: 0, amp: 1.6
    sleep 4
  else
    sample :loop_garzul, amp: 0
    sleep 8
  end
end

live_loop :travelling do
  sync :tempo
  tick_reset_all
  use_synth :beep
  notes = scale(:e3, :minor_pentatonic, num_octaves: 4)
  use_random_seed 679
  with_fx :echo, phase: 0.125, mix: 0.3, reps: 30 do
    with_fx :reverb, room: 0.5, mix: 0.5 do
      sleep [0.125,0.25, 0.25].choose
      play notes.choose, attack: 0, release: 0.1, pan: (range -1, 1, step: 0.125).tick, amp: fadi.tick, cutoff: coff.tick
    end
  end
end

aloloco = 0

live_loop :quotes do
  stop
  with_fx :reverb, mix: 0.3, room: 0.2 do
    sample "weAre.wav", amp: 6
  end
  sleep 40
end
