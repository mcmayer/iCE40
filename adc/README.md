# ADC

## Standard delta sigma ADC ##

Delta sigma ADCs can achieve a resolution of up to 15 bits at sampling rates of tens of kHz ([TU Delft web page](http://cas.tudelft.nl/fpga_tdc/ADC_basic.html))

Lattice provide some information and IP:

- [Leveraging FPGA and CPLD Digital Logic to Implement ADC Converter](http://www.latticesemi.com/~/media/LatticeSemi/Documents/WhitePapers/AG/CreatingAnADCUsingFPGAResources.PDF?document_id=36525), Lattice Semiconductor White Paper, March 2010
- Lattice has ∆∑ IP for the MachXO and XP2 families. The design uses about 60 LUTs and achieves a sample rate of 7.63kHz (62.5MHz clock). See [Simple Sigma-Delta ADC](http://www.latticesemi.com/en/Products/DesignSoftwareAndIP/IntellectualProperty/ReferenceDesigns/ReferenceDesign03/SimpleSigmaDeltaADC) ([archive.org](https://web.archive.org/web/20171207043525/http://www.latticesemi.com/en/Products/DesignSoftwareAndIP/IntellectualProperty/ReferenceDesigns/ReferenceDesign03/SimpleSigmaDeltaADC])). It looks like the IP will run on an iCE40 as well.

## Using TDCs ##
Much more interesting :-)

Very high sample rates can be achieved.

- [A 17ps Time-to-Digital Converter Implemented in 65nm FPGA Technology](https://infoscience.epfl.ch/record/139431/files/isfpga09-cfavi.pdf).
- TU Delft has a nice website [FPGA designs **for**reconfigurable converters](http://cas.tudelft.nl/fpga_tdc/index.html):
  - [Basic FPGA TDC design](http://cas.tudelft.nl/fpga_tdc/TDC_basic.html)
  - [200 MS/s ADC implemented in a FPGA employing TDCs](http://cas.tudelft.nl/pubs/Homulle15fpga.pdf), from [TU Delft web page](http://cas.tudelft.nl/fpga_tdc/ADC_basic.html).
- [Low resource FPGA-based Time to Digital Converter](http://arxiv.org/vc/arxiv/papers/1206/1206.0679v3.pdf), Balla et al., 2012 demonstrates a 32 channel TDC with a precision of 255 ps on a Xilinx Virtex-5.
