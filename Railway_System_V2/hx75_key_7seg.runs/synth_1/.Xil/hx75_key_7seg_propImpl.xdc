set_property SRC_FILE_INFO {cfile:Z:/FPGA/Railway_System/Railway_System/hx75_key_7seg.srcs/constrs_1/imports/DSD/7A75_FPGA_IO.xdc rfile:../../../hx75_key_7seg.srcs/constrs_1/imports/DSD/7A75_FPGA_IO.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports sys_clk]
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {key[1]}]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS33} [get_ports {key[2]}]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {key[3]}]
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {key[4]}]
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {sw[1]}]
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports {sw[2]}]
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {sw[3]}]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {sw[4]}]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA6 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {led[2]}]
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports {led[3]}]
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVCMOS33} [get_ports {led[4]}]
set_property src_info {type:XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports beep]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB6 IOSTANDARD LVCMOS33} [get_ports sd_miso_DAT0]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVCMOS33} [get_ports sd_mosi_CMD]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS33} [get_ports sd_clk]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVCMOS33} [get_ports sd_cs_DAT3]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVCMOS33} [get_ports sd_DAT1]
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports sd_DAT2]
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports uart_RXD]
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports uart_TXD]
set_property src_info {type:XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN M9 [get_ports vn_in]
set_property src_info {type:XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:43 export:INPUT save:INPUT read:READ} [current_design]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets sys_clk_IBUF_BUFG]
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports {seg_value[0]}]
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U17  IOSTANDARD LVCMOS33} [get_ports {seg_value[1]}]
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U18  IOSTANDARD LVCMOS33} [get_ports {seg_value[2]}]
set_property src_info {type:XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN P14  IOSTANDARD LVCMOS33} [get_ports {seg_value[3]}]
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R14  IOSTANDARD LVCMOS33} [get_ports {seg_value[4]}]
set_property src_info {type:XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R18  IOSTANDARD LVCMOS33} [get_ports {seg_value[5]}]
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T18  IOSTANDARD LVCMOS33} [get_ports {seg_value[6]}]
set_property src_info {type:XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N17  IOSTANDARD LVCMOS33} [get_ports {seg_value[7]}]
set_property src_info {type:XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports {seg_sel[0]}]
set_property src_info {type:XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W17  IOSTANDARD LVCMOS33} [get_ports {seg_sel[1]}]
set_property src_info {type:XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V17  IOSTANDARD LVCMOS33} [get_ports {seg_sel[2]}]
set_property src_info {type:XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB20 IOSTANDARD LVCMOS33} [get_ports {seg_sel[3]}]
set_property src_info {type:XDC file:1 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports {seg_sel[4]}]
set_property src_info {type:XDC file:1 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V19  IOSTANDARD LVCMOS33} [get_ports {seg_sel[5]}]
set_property src_info {type:XDC file:1 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V18  IOSTANDARD LVCMOS33} [get_ports {seg_sel[6]}]
set_property src_info {type:XDC file:1 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y19  IOSTANDARD LVCMOS33} [get_ports {seg_sel[7]}]
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R16 [get_ports VGA_VSYNC]
set_property src_info {type:XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P15 [get_ports VGA_HSYNC]
set_property src_info {type:XDC file:1 line:69 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T20 [get_ports {VGA_D[0]}]  //VGA D11
set_property src_info {type:XDC file:1 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA21 [get_ports {VGA_D[1]}] //VGA D7
set_property src_info {type:XDC file:1 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB22 [get_ports {VGA_D[2]}] //VGA D3
set_property src_info {type:XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports VGA_HSYNC]
set_property src_info {type:XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports VGA_VSYNC]
set_property src_info {type:XDC file:1 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_D[2]}]
set_property src_info {type:XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_D[1]}]
set_property src_info {type:XDC file:1 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_D[0]}]
set_property src_info {type:XDC file:1 line:81 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T14 [get_ports {tmds_data_p[0]}]
set_property src_info {type:XDC file:1 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W15 [get_ports {tmds_data_p[1]}]
set_property src_info {type:XDC file:1 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T16 [get_ports {tmds_data_p[2]}]
set_property src_info {type:XDC file:1 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p[2]}]
set_property src_info {type:XDC file:1 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p[1]}]
set_property src_info {type:XDC file:1 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p[0]}]
set_property src_info {type:XDC file:1 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports tmds_clk_p]
set_property src_info {type:XDC file:1 line:88 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V13 [get_ports tmds_clk_p_A]
set_property src_info {type:XDC file:1 line:90 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports hpdin]
set_property src_info {type:XDC file:1 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AB12 [get_ports hpdin]
set_property src_info {type:XDC file:1 line:93 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W16 [get_ports {tmds_data_n_A[1]}]
set_property src_info {type:XDC file:1 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U16 [get_ports {tmds_data_n_A[2]}]
set_property src_info {type:XDC file:1 line:95 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[2]}]
set_property src_info {type:XDC file:1 line:96 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[1]}]
set_property src_info {type:XDC file:1 line:97 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[0]}]
set_property src_info {type:XDC file:1 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports tmds_clk_n_A]
set_property src_info {type:XDC file:1 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V14 [get_ports tmds_clk_n_A]
set_property src_info {type:XDC file:1 line:102 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA9 [get_ports {tmds_data_p_A[0]}]
set_property src_info {type:XDC file:1 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA10 [get_ports {tmds_data_p_A[1]}]
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V10 [get_ports {tmds_data_p_A[2]}]
set_property src_info {type:XDC file:1 line:105 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p_A[2]}]
set_property src_info {type:XDC file:1 line:106 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p_A[1]}]
set_property src_info {type:XDC file:1 line:107 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p_A[0]}]
set_property src_info {type:XDC file:1 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports tmds_clk_p_A]
set_property src_info {type:XDC file:1 line:109 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W11 [get_ports tmds_clk_p_A]
set_property src_info {type:XDC file:1 line:110 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports hpdin]
set_property src_info {type:XDC file:1 line:111 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W14 [get_ports hpdin]
set_property src_info {type:XDC file:1 line:113 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA11 [get_ports {tmds_data_n_A[1]}]
set_property src_info {type:XDC file:1 line:114 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W10 [get_ports {tmds_data_n_A[2]}]
set_property src_info {type:XDC file:1 line:115 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[2]}]
set_property src_info {type:XDC file:1 line:116 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[1]}]
set_property src_info {type:XDC file:1 line:117 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[0]}]
set_property src_info {type:XDC file:1 line:118 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports tmds_clk_n_A]
set_property src_info {type:XDC file:1 line:119 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W12 [get_ports tmds_clk_n_A]
set_property src_info {type:XDC file:1 line:122 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 40.000 -name cmos_pclk [get_ports cam_pclk]
set_property src_info {type:XDC file:1 line:123 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cam_pclk_IBUF]
set_property src_info {type:XDC file:1 line:124 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVCMOS33} [get_ports cam_pclk]
set_property src_info {type:XDC file:1 line:125 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports cam_rst_n]
set_property src_info {type:XDC file:1 line:126 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVCMOS33} [get_ports cam_pwdn]
set_property src_info {type:XDC file:1 line:127 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[0]}]
set_property src_info {type:XDC file:1 line:128 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[1]}]
set_property src_info {type:XDC file:1 line:129 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[2]}]
set_property src_info {type:XDC file:1 line:130 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[3]}]
set_property src_info {type:XDC file:1 line:131 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[4]}]
set_property src_info {type:XDC file:1 line:132 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[5]}]
set_property src_info {type:XDC file:1 line:133 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E14 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[6]}]
set_property src_info {type:XDC file:1 line:134 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[7]}]
set_property src_info {type:XDC file:1 line:135 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports cam_vsync]
set_property src_info {type:XDC file:1 line:136 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports cam_href]
set_property src_info {type:XDC file:1 line:137 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports cam_scl]
set_property src_info {type:XDC file:1 line:138 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports cam_sda]
set_property src_info {type:XDC file:1 line:141 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports eth_rst_n]
set_property src_info {type:XDC file:1 line:142 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports eth_rxc]
set_property src_info {type:XDC file:1 line:143 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports eth_rx_ctl]
set_property src_info {type:XDC file:1 line:144 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B13 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[0]}]
set_property src_info {type:XDC file:1 line:145 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[1]}]
set_property src_info {type:XDC file:1 line:146 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[2]}]
set_property src_info {type:XDC file:1 line:147 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[3]}]
set_property src_info {type:XDC file:1 line:149 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports eth_txc]
set_property src_info {type:XDC file:1 line:150 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports eth_tx_ctl]
set_property src_info {type:XDC file:1 line:152 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS33} [get_ports {eth_txd[0]}]
set_property src_info {type:XDC file:1 line:153 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports {eth_txd[1]}]
set_property src_info {type:XDC file:1 line:154 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {eth_txd[2]}]
set_property src_info {type:XDC file:1 line:155 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {eth_txd[3]}]
set_property src_info {type:XDC file:1 line:158 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports {P1IO[0]}]
set_property src_info {type:XDC file:1 line:159 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS33} [get_ports {P1IO[1]}]
set_property src_info {type:XDC file:1 line:160 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports {P1IO[2]}]
set_property src_info {type:XDC file:1 line:161 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports {P1IO[3]}]
set_property src_info {type:XDC file:1 line:162 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVCMOS33} [get_ports {P1IO[4]}]
set_property src_info {type:XDC file:1 line:163 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports {P1IO[5]}]
set_property src_info {type:XDC file:1 line:164 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports {P1IO[6]}]
set_property src_info {type:XDC file:1 line:165 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {P1IO[7]}]
set_property src_info {type:XDC file:1 line:166 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports {P1IO[8]}]
set_property src_info {type:XDC file:1 line:167 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {P1IO[9]}]
set_property src_info {type:XDC file:1 line:168 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports {P1IO[10]}]
set_property src_info {type:XDC file:1 line:169 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {P1IO[11]}]
set_property src_info {type:XDC file:1 line:170 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports {P1IO[12]}]
set_property src_info {type:XDC file:1 line:171 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J22 IOSTANDARD LVCMOS33} [get_ports {P1IO[13]}]
set_property src_info {type:XDC file:1 line:172 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS33} [get_ports {P1IO[14]}]
set_property src_info {type:XDC file:1 line:173 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports {P1IO[15]}]
set_property src_info {type:XDC file:1 line:174 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVCMOS33} [get_ports {P1IO[17]}]
set_property src_info {type:XDC file:1 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVCMOS33} [get_ports {P1IO[18]}]
set_property src_info {type:XDC file:1 line:176 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS33} [get_ports {P1IO[19]}]
set_property src_info {type:XDC file:1 line:177 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L21 IOSTANDARD LVCMOS33} [get_ports {P1IO[20]}]
set_property src_info {type:XDC file:1 line:178 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports {P1IO[16]}]
set_property src_info {type:XDC file:1 line:179 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports {P1IO[21]}]
set_property src_info {type:XDC file:1 line:180 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J21 IOSTANDARD LVCMOS33} [get_ports {P1IO[22]}]
set_property src_info {type:XDC file:1 line:181 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports {P1IO[23]}]
set_property src_info {type:XDC file:1 line:182 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS33} [get_ports {P1IO[24]}]
set_property src_info {type:XDC file:1 line:183 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {P1IO[25]}]
set_property src_info {type:XDC file:1 line:184 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports {P1IO[26]}]
set_property src_info {type:XDC file:1 line:185 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports {P1IO[27]}]
set_property src_info {type:XDC file:1 line:186 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports {P1IO[28]}]
set_property src_info {type:XDC file:1 line:187 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports {P1IO[29]}]
set_property src_info {type:XDC file:1 line:188 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS33} [get_ports {P1IO[30]}]
set_property src_info {type:XDC file:1 line:189 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {P1IO[31]}]
set_property src_info {type:XDC file:1 line:190 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports {P1IO[32]}]
set_property src_info {type:XDC file:1 line:191 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports {P1IO[33]}]
set_property src_info {type:XDC file:1 line:192 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS33} [get_ports {P1IO[34]}]
set_property src_info {type:XDC file:1 line:193 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {P1IO[35]}]
set_property src_info {type:XDC file:1 line:196 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T3  IOSTANDARD LVCMOS33} [get_ports {row[0]}]
set_property src_info {type:XDC file:1 line:197 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T1  IOSTANDARD LVCMOS33} [get_ports {row[1]}]
set_property src_info {type:XDC file:1 line:198 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U1  IOSTANDARD LVCMOS33} [get_ports {row[2]}]
set_property src_info {type:XDC file:1 line:199 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U2  IOSTANDARD LVCMOS33} [get_ports {row[3]}]
set_property src_info {type:XDC file:1 line:200 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V2  IOSTANDARD LVCMOS33} [get_ports {col[0]}]
set_property src_info {type:XDC file:1 line:201 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R3  IOSTANDARD LVCMOS33} [get_ports {col[1]}]
set_property src_info {type:XDC file:1 line:202 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R2  IOSTANDARD LVCMOS33} [get_ports {col[2]}]
set_property src_info {type:XDC file:1 line:203 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W2  IOSTANDARD LVCMOS33} [get_ports {col[3]}]
set_property src_info {type:XDC file:1 line:217 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y2  IOSTANDARD LVCMOS33} [get_ports {P2IO[8]}]
set_property src_info {type:XDC file:1 line:218 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W1  IOSTANDARD LVCMOS33} [get_ports {P2IO[9]}]
set_property src_info {type:XDC file:1 line:219 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y1  IOSTANDARD LVCMOS33} [get_ports {P2IO[10]}]
set_property src_info {type:XDC file:1 line:220 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U3  IOSTANDARD LVCMOS33} [get_ports {P2IO[11]}]
set_property src_info {type:XDC file:1 line:221 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V3  IOSTANDARD LVCMOS33} [get_ports {P2IO[12]}]
set_property src_info {type:XDC file:1 line:222 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA1 IOSTANDARD LVCMOS33} [get_ports {P2IO[13]}]
set_property src_info {type:XDC file:1 line:223 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB1 IOSTANDARD LVCMOS33} [get_ports {P2IO[14]}]
set_property src_info {type:XDC file:1 line:224 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB3 IOSTANDARD LVCMOS33} [get_ports {P2IO[15]}]
set_property src_info {type:XDC file:1 line:225 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB2 IOSTANDARD LVCMOS33} [get_ports {P2IO[16]}]
set_property src_info {type:XDC file:1 line:226 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y3  IOSTANDARD LVCMOS33} [get_ports {P2IO[17]}]
set_property src_info {type:XDC file:1 line:227 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA3 IOSTANDARD LVCMOS33} [get_ports {P2IO[18]}]
set_property src_info {type:XDC file:1 line:228 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA5 IOSTANDARD LVCMOS33} [get_ports {P2IO[19]}]
set_property src_info {type:XDC file:1 line:229 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB5 IOSTANDARD LVCMOS33} [get_ports {P2IO[20]}]
set_property src_info {type:XDC file:1 line:230 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y4  IOSTANDARD LVCMOS33} [get_ports {P2IO[21]}]
set_property src_info {type:XDC file:1 line:231 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA4 IOSTANDARD LVCMOS33} [get_ports {P2IO[22]}]
set_property src_info {type:XDC file:1 line:232 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V4  IOSTANDARD LVCMOS33} [get_ports {P2IO[23]}]
set_property src_info {type:XDC file:1 line:233 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W4  IOSTANDARD LVCMOS33} [get_ports {P2IO[24]}]
set_property src_info {type:XDC file:1 line:234 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R4  IOSTANDARD LVCMOS33} [get_ports {P2IO[25]}]
set_property src_info {type:XDC file:1 line:235 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T4  IOSTANDARD LVCMOS33} [get_ports {P2IO[26]}]
set_property src_info {type:XDC file:1 line:236 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T5  IOSTANDARD LVCMOS33} [get_ports {P2IO[27]}]
set_property src_info {type:XDC file:1 line:237 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U5  IOSTANDARD LVCMOS33} [get_ports {P2IO[28]}]
set_property src_info {type:XDC file:1 line:238 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W6  IOSTANDARD LVCMOS33} [get_ports {P2IO[29]}]
set_property src_info {type:XDC file:1 line:239 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN W5  IOSTANDARD LVCMOS33} [get_ports {P2IO[30]}]
set_property src_info {type:XDC file:1 line:240 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN U6  IOSTANDARD LVCMOS33} [get_ports {P2IO[31]}]
set_property src_info {type:XDC file:1 line:241 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN V5  IOSTANDARD LVCMOS33} [get_ports {P2IO[32]}]
set_property src_info {type:XDC file:1 line:242 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN R6  IOSTANDARD LVCMOS33} [get_ports {P2IO[33]}]
set_property src_info {type:XDC file:1 line:243 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN T6  IOSTANDARD LVCMOS33} [get_ports {P2IO[34]}]
set_property src_info {type:XDC file:1 line:244 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y6  IOSTANDARD LVCMOS33} [get_ports {P2IO[35]}]
