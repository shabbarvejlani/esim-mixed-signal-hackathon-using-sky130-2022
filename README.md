# esim-mixed-signal-hackathon-using-sky130-2022

## installation of esim
./install-eSim.sh --install

# Mixed Signal Flow
 - The mixed signal simulation consists of of mix of digital circuits which are simulator using digital simulator and the analog portion on an analog simulator. 
 - In the eSim tool used, the digital simulations are done using verilator tool and the analog simulations are done using ngspice tool.
 - For user, they do not need to call the two tools separately, instead ngspice is the toplevel tool which calls verilator(compiled executable) in background.
 - The interface between ngspice and verilator is made possible using ngVeri tool, which creates a ngspice comptatible model.
Additional, the user takes care of any analog to digital and digital to analog signal interactions by appropriate explicitly instantiating interface blocks(namely adc/dac_briges which are made available in the eSim model library) at the analog<->digital model boundaries.

# NgVeri tool flow:
## step1:
verilog to ngveri wrapper creation.

## step2:
- create circuit schematic with analog components and instantiate the ngveri wrapper.
- connect the outputs from the digital to analog using dac_bridge_x
- connect the inputs to the digital circuit using the adc_brdige_x
- digital blocks can be cascaded/connected directly to each other wihout the need of bridge.
- generate spice .cir netlist. This is a kicad netlist.

## step3:
- convert from kicad netlist to ngspice netlist.
- allows to specify type of simulation ac/dc/transient and set parameters for respective sim type.
- specify the configuration of voltage sources in "source details" tab.
- specify loading of the digital outputs and also configure the bridge thresholds for analog-to-digital and digtial-to-analog conversions in the "ngspice model" tab.
- Goto "subcircuits" tab and click on convert.
- The generated ngspice netlist is ".cir.out".


## step4:
 - run simulation.
 - It will render all the waveforms in "gaw", but each output will be in separate window
 - To customize the plot, we can edit the ".cir.out" directly, to add plots to same window.
 - eSim has embedded python plot window too.

# Edge Pursuit Comparator 
The edge pursuit comparator consists of a series of delay cells and nand gates which function as delay cum control cell.
The delay cell is named "epc_unit" and implemented as a separate subckt.
The nand logic gate is created using ngVeri flow in verilog hdl.
adc_brige and dac_bridge are used to interface the nand_gate in the schematic



# Results
The circuit should have functioned as a damped oscialltor which starts to oscillate and quickly settles the output  COMP should have settled to 1 or 0 based on relative values of VINP(V2) and VINM(V3).

Expected waveform:


Simulation waveform:





# Learning Outcomes
- Understood the mixed signal flow in general.
- Learnt basics of kicad(schematic capture), ngspice(spice simulator), ngVeri(makerchip ngspice wrapper over verilated code), gaw(analog waveform viewer) and sky130 library intergration
- Understood basics of sky130 primitive library.
- Understood how to perform basic analog/mixed-signal simulations in eSim.
- Challenges in simualating a oscillator circiut

# Further Work
Unfortunately, the simulator output was not as per expecation. 
It needs to be further investigated if its a tool issue or circuit tuning/setup issue.
One possible try could be to have the nand gate too in analog schematic using sky130 cells and checking if output matches in analog only simulation.
