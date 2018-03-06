fadi =  (ramp *range(0, 1.01, 0.1))
fado =  (ramp *range(1.01, 0, 0.3))
fadii =  (ramp *range(0, 6.01, 0.3))
fadoo =  (ramp *range(6.01, 0, 0.3))
coff =  (range 90, 130.01, step: 1.01).mirror

live_loop :amb do
  amb = ambient, 12
  sample amb, amp: 1
  sleep sample_duration amb
end

live_loop :heart do
  use_bpm 60
  sample  :bd_808, amp: fadii.tick, rate: 1.4
  sleep 0.35
  sample :bd_808, amp: fadii.look, rate: 1.2
  sleep 1
end

with_fx :reverb, room: 0.8, mix: 0.4 do
  live_loop :voice do
    stop
    voz = voice, 14
    with_fx :flanger do
      sample voz, amp: 1.7
    end
    sleep (sample_duration voz) + 15
  end
  
  live_loop :kick do
    #stop
    sync :heart
    sleep 0.35
    sample :bd_haus, amp: fadi.tick, cutoff: 110
    sleep 0.65
    sample :bd_haus, amp: fadi.tick, cutoff: 110
  end
  
end