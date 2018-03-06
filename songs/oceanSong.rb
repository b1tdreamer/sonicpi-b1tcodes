# Ocean Song
# Coded by b1tdreamer

#chords = (ring :c3, :c3, :g3, :g3, :a3, :a3)
chords = (ring :b3, :a3, :e3, :e3)
Mm = (ring :minor, :major, :major, :major)


live_loop :picking do
  stop
  sync :perc
  use_synth :pluck
  with_fx :reverb, room: 0.8, reps: 5 do
    notes = scale(chords.look, :minor_pentatonic, num_octaves: 1.5) # :minor_pentatonic:egyptian
    play notes.choose
    #p = play (chord chords.look, :major).choose - [0, 12, -12].choose, divisor: 0.01, div_slide: rrand(0, 10), depth: rrand(0.001, 2), attack: 0.01, release: rrand(0, 3), amp: rrand(0.45, 1.05)#, cutoff: :f3
    #control p, divisor: rrand(0.001, 50)
    sleep [0.125,0.125,0.25,0.25,0.25,0.5].choose
  end
end

live_loop :chords do
  stop
  sync :perc
  use_synth :pluck
  with_fx :reverb, room: 0.8, mix: 0.6 do
    puts Mm.look
    play_pattern_timed chord(chords.tick(:chords), Mm.tick(:Mm)), 0.125 #, mantain: 3, release: 0.5, amp: 2.5
    sleep 1.5
  end
end #, Mm.tick

with_fx :reverb, mix: 0.5 do
  live_loop :oceans do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.5, 1.5), attack: rrand(1, 2), sustain: rrand(0, 2), release: rrand(1, 5), cutoff_slide: rrand(0, 5), cutoff: rrand(60, 90), pan: rrand(-1, 1), pan_slide: rrand(1, 5), amp: rrand(0.5, 0.8)
    control s, pan: rrand(-1, 1), cutoff: rrand(50, 90)
    sleep rrand(2, 4)
  end
end

live_loop :perc do
  stop
  sample :tabla_ke3, amp: 2
  sleep 1
  #sample :tabla_tun3
  #sleep 0.25
  #sample :tabla_na_s
  #sleep 0.125
  #sample :tabla_re
  #sleep 0.125
  #sample :tabla_na_o
  #sleep 0.25
end

live_loop :environment do
  stop
  sample :misc_crow, pan: 0.6
  sleep 0.6
  sample :misc_crow, amp: 0.7, pan: 0
  sleep 0.65
  sample :misc_crow, amp: 0.4, pan: -0.8
  sleep rrand(7, 18)
end
