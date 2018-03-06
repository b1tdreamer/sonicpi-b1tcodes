# key: futu
# point_line: 16
# point_index: 0
# --
with_fx :reverb ,room: 1, mix: 0.6, mix_slide: 0.4 do |fx|
  live_loop :flute do
    flu =  flute, 7
    sample flu, rate: 1, attack: rrand(0.2,0.3), amp: fadi.tick, onset: pick
    sample flu, rate: -0.8, attack: rrand(0.2,0.3), amp: fadi.look, onset: pick
    sleep [0.75,1.2].choose
    control fx, mix:1
  end
end