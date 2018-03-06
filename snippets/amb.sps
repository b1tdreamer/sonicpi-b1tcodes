# key: amb
# point_line: 16
# point_index: 0
# --
live_loop :amb do
 ambi = ambient, 10 #10
 sample ambi
 sleep sample_duration ambi
end
