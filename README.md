# esim-mixed-signal-hackathon-2022

## installation of esim
./install-eSim.sh --install

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
