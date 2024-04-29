# 1A2B game (Bulls and Cows)



## Run the result
1. In Questa folder

    vlib work -> vlog main_FSM.v dp.v top.v top_tb.v -> vsim top_tb (Questa would pop up)
    
2. In Questa

    Add -> To Wave -> Signals in Design -> run -all (see the waveform)

3. In Synthesis folder

    run (generate .rep file, .svf file, .log file, and .vh file)

    cp *.vh ../Questa_post_DC

4. In Questa_post_DC folder

    vlib work -> vlog top.vh osu.v top_tb.v -> vsim top_tb (then repeat the part "In Questa")

5. In Innovus folder
    
    run -> win (Innovus window pop up)
    cp *.gds ../Irsim

6. In Irsim folder

    magic

7. In Magic

    calma rescale no -> open final.gds file -> select layout -> expand -> extract all -> ext2sim -t!
