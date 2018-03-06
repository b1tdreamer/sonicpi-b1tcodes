# key: fade
# point_line: 2
# point_index: 0
# --
fadi =  (ramp *range(0, 1.01, 0.1))
fado =  (ramp *range(1.01, 0, 0.3))
fadii =  (ramp *range(0, 6, 0.3))
fadoo =  (ramp *range(6, 0, 0.3))
coff =  (range 90, 130.01, step: 1.01).mirror