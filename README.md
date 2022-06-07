# Yosys-Surelog-Comparisons
Comparisons I've performed between Yosys-processed verilog files and Surelog-processed verilog files.

# Design Status:
| Design Name | Folder | Equivalent between both Yosys and Surelog | Description of issues |
| --- | --- | --- | --- |
| and3 | basic | Yes | None |
| and3_r | basic | Yes | None |
| and3_r_rst | basic | Yes | None |
| add4 | basic | Yes | None |
| add4_r | basic | Yes | None |
| add4_r_rst | basic | Yes | None | 
| add8_r_rst | basic | Yes | None |
| add16_r_rst | basic | Yes | None |
| add32_r_rst | basic | Yes | None |
| bram_dp_sclk | basic (not included) | **No** | Crashes Yosys when testing equivalence. |
| bram_sp_wf | basic (not included) | **No** | Crashes Yosys when testing equivalence. |
| ff | basic | Yes | None |
| rom | basic | **No** | Needs to be researched. |
| alu | byu | **No** | Needs to be researched. |
| buttoncount | byu | **No** | Needs to be researched. |
| calc | byu | **No** | Needs to be researched. |
| oneshot | byu | **No** | Needs to be researched. |
| seven_segment | byu | **No** | Needs to be researched. |
| UpDownButtonCount | byu | Yes | None |
| regfile | bugs | **No** | Needs to be researched. 
