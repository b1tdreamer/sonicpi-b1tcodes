# key: voice
# point_line: 2
# point_index: 0
# --
live_loop :voices do
  with_fx :reverb, room: 0.8, mix: 0.4 do
    voz = voice, 14
    with_fx :flanger do
      sample voz, amp: 2
    end
    sleep (sample_duration voz) + 15
  end
end