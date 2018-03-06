# Lost Temple
# Coded by b1tdreamer

base = sample_duration(:battery80)
valiha = (ring :valiha1, :valiha1, :valiha1, :valiha2)

live_loop :valiha do
  stop
  #sync :tripHop
  sample valiha.tick, beat_stretch: base*2
  sleep base*2
end

live_loop :tripHop do
  stop
  sample :battery80, amp: 1.5
  sleep sample_duration(:battery80)
end

live_loop :voice do
  stop
  sync :tripHop
  with_fx :reverb, room: 0.7, mix: 0.55 do
    sample :laoa, amp: 1.8
  end
  sleep sample_duration(:laoa)
end

with_fx :reverb, mix: 0.5 do
  live_loop :oceans do
    s = synth [:bnoise, :cnoise, :gnoise].choose, amp: rrand(0.35, 0.65), attack: rrand(1, 2), sustain: rrand(0, 2), release: rrand(1, 5), cutoff_slide: rrand(0, 5), cutoff: rrand(60, 90), pan: rrand(-1, 1), pan_slide: rrand(1, 5), amp: rrand(0.5, 1.4)
    control s, pan: rrand(-1, 1), cutoff: rrand(50, 90)
    sleep rrand(2, 4)
  end
end
