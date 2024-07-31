# Restart Simulation
restart

# Force a clock
add_force {/systolic_array_2x2/clk} -radix bin {1 0ns} {0 500ps} -repeat_every 1000ps

# Issue reset
add_force {/systolic_array_2x2/rstn} -radix bin {0 0ns}

# Run for 1ns
run 1 ns

# Remove reset
add_force {/systolic_array_2x2/rstn} -radix bin {1 0ns}

# Force read and write signals for FIFOs
add_force {/systolic_array_2x2/r_en0_w} -radix bin {0 0ns}
add_force {/systolic_array_2x2/r_en1_w} -radix bin {0 0ns}
add_force {/systolic_array_2x2/r_en0_i} -radix bin {0 0ns}
add_force {/systolic_array_2x2/r_en1_i} -radix bin {0 0ns}
add_force {/systolic_array_2x2/w_en0_w} -radix bin {1 0ns}
add_force {/systolic_array_2x2/w_en1_w} -radix bin {1 0ns}
add_force {/systolic_array_2x2/w_en0_i} -radix bin {1 0ns}
add_force {/systolic_array_2x2/w_en1_i} -radix bin {1 0ns}

# Input Matrix:
# | -1  0 | | 3  2 |
# |  4 10 | | 5 -8 |

# Add relevant values to fifo
add_force {/systolic_array_2x2/test_weight0} -radix dec {3 0ns}
add_force {/systolic_array_2x2/test_ifmap0} -radix dec {-1 0ns}
add_force {/systolic_array_2x2/test_weight1} -radix dec {0 0ns}
add_force {/systolic_array_2x2/test_ifmap1} -radix dec {0 0ns}

run 1 ns

add_force {/systolic_array_2x2/test_weight0} -radix dec {5 0ns}
add_force {/systolic_array_2x2/test_ifmap0} -radix dec {0 0ns}
add_force {/systolic_array_2x2/test_weight1} -radix dec {2 0ns}
add_force {/systolic_array_2x2/test_ifmap1} -radix dec {4 0ns}

run 1 ns

add_force {/systolic_array_2x2/test_weight0} -radix dec {0 0ns}
add_force {/systolic_array_2x2/test_ifmap0} -radix dec {0 0ns}
add_force {/systolic_array_2x2/test_weight1} -radix dec {-8 0ns}
add_force {/systolic_array_2x2/test_ifmap1} -radix dec {10 0ns}

run 1 ns

# Zero the fifos
add_force {/systolic_array_2x2/test_weight1} -radix dec {0 0ns}
add_force {/systolic_array_2x2/test_ifmap1} -radix dec {0 0ns}

# Run so values can be loaded
run 4 ns

# Allow read from FIFOs
add_force {/systolic_array_2x2/r_en0_w} -radix bin {1 0ns}
add_force {/systolic_array_2x2/r_en1_w} -radix bin {1 0ns}
add_force {/systolic_array_2x2/r_en0_i} -radix bin {1 0ns}
add_force {/systolic_array_2x2/r_en1_i} -radix bin {1 0ns}

run 6 ns