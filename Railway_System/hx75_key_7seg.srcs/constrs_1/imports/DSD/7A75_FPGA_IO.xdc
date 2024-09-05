#------------------------------系统时钟和复位-----------------------------------
create_clock -period 20.000 -name sys_clk [get_ports sys_clk]
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports sys_clk]

#----------------------------------按键-----------------------------------------
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports {key[1]}]
set_property -dict {PACKAGE_PIN G4 IOSTANDARD LVCMOS33} [get_ports {key[2]}]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports {key[3]}]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports {key[4]}]

#-----------------------------------乒乓开关引脚--------------------------------------
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {sw[1]}]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports {sw[2]}]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {sw[3]}]
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports {sw[4]}]

#-----------------------------------LED-----------------------------------------
set_property -dict {PACKAGE_PIN AA6 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {led[2]}]
set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports {led[3]}]
set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVCMOS33} [get_ports {led[4]}]

#-----------------------------------蜂鸣器--------------------------------------
set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports beep]

#-----------------------------------TF卡----------------------------------------
set_property -dict {PACKAGE_PIN AB6 IOSTANDARD LVCMOS33} [get_ports sd_miso_DAT0]
set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVCMOS33} [get_ports sd_mosi_CMD]
set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS33} [get_ports sd_clk]
set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVCMOS33} [get_ports sd_cs_DAT3]
set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVCMOS33} [get_ports sd_DAT1]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports sd_DAT2]

#-----------------------------------UART----------------------------------------
set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports uart_RXD]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports uart_TXD]

#-----------------------------------ADC引脚分配----------------------------------------

set_property PACKAGE_PIN M9 [get_ports vn_in]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets sys_clk_IBUF_BUFG]

#源码里未用到的XDC引脚set_property PACKAGE_PIN L10 [get_ports vn_in]

#--------------------------------数码管-----------------------------------------
set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports {seg_led[0]}]
set_property -dict {PACKAGE_PIN U17  IOSTANDARD LVCMOS33} [get_ports {seg_led[1]}]
set_property -dict {PACKAGE_PIN U18  IOSTANDARD LVCMOS33} [get_ports {seg_led[2]}]
set_property -dict {PACKAGE_PIN P14  IOSTANDARD LVCMOS33} [get_ports {seg_led[3]}]
set_property -dict {PACKAGE_PIN R14  IOSTANDARD LVCMOS33} [get_ports {seg_led[4]}]
set_property -dict {PACKAGE_PIN R18  IOSTANDARD LVCMOS33} [get_ports {seg_led[5]}]
set_property -dict {PACKAGE_PIN T18  IOSTANDARD LVCMOS33} [get_ports {seg_led[6]}]
set_property -dict {PACKAGE_PIN N17  IOSTANDARD LVCMOS33} [get_ports {seg_led[7]}]
set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports {seg_sel[0]}]
set_property -dict {PACKAGE_PIN W17  IOSTANDARD LVCMOS33} [get_ports {seg_sel[1]}]
set_property -dict {PACKAGE_PIN V17  IOSTANDARD LVCMOS33} [get_ports {seg_sel[2]}]
set_property -dict {PACKAGE_PIN AB20 IOSTANDARD LVCMOS33} [get_ports {seg_sel[3]}]
set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports {seg_sel[4]}]
set_property -dict {PACKAGE_PIN V19  IOSTANDARD LVCMOS33} [get_ports {seg_sel[5]}]
set_property -dict {PACKAGE_PIN V18  IOSTANDARD LVCMOS33} [get_ports {seg_sel[6]}]
set_property -dict {PACKAGE_PIN Y19  IOSTANDARD LVCMOS33} [get_ports {seg_sel[7]}]

#--------------------------------VGA接口取RGB最高位-----------------------------------------
set_property PACKAGE_PIN R16 [get_ports VGA_VSYNC]
set_property PACKAGE_PIN P15 [get_ports VGA_HSYNC]
set_property PACKAGE_PIN T20 [get_ports {VGA_D[0]}]  //VGA D11
set_property PACKAGE_PIN AA21 [get_ports {VGA_D[1]}] //VGA D7
set_property PACKAGE_PIN AB22 [get_ports {VGA_D[2]}] //VGA D3
set_property IOSTANDARD LVCMOS33 [get_ports VGA_HSYNC]
set_property IOSTANDARD LVCMOS33 [get_ports VGA_VSYNC]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_D[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_D[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_D[0]}]



#--------------------------------HDMI_A-----------------------------------------
set_property PACKAGE_PIN T14 [get_ports {tmds_data_p[0]}]
set_property PACKAGE_PIN W15 [get_ports {tmds_data_p[1]}]
set_property PACKAGE_PIN T16 [get_ports {tmds_data_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p[0]}]
set_property IOSTANDARD TMDS_33 [get_ports tmds_clk_p]
set_property PACKAGE_PIN V13 [get_ports tmds_clk_p_A]

set_property IOSTANDARD LVCMOS33 [get_ports hpdin]
set_property PACKAGE_PIN AB12 [get_ports hpdin]
#源码里未用到的HDMI引脚set_property PACKAGE_PIN T15 [get_ports {tmds_data_n_A[0]}]
                       set_property PACKAGE_PIN W16 [get_ports {tmds_data_n_A[1]}]
                       set_property PACKAGE_PIN U16 [get_ports {tmds_data_n_A[2]}]
                       set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[2]}]
                       set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[1]}]
                       set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[0]}]
                       set_property IOSTANDARD TMDS_33 [get_ports tmds_clk_n_A]
                       set_property PACKAGE_PIN V14 [get_ports tmds_clk_n_A]

#--------------------------------HDMI_B----------------------------------------
set_property PACKAGE_PIN AA9 [get_ports {tmds_data_p_A[0]}]
set_property PACKAGE_PIN AA10 [get_ports {tmds_data_p_A[1]}]
set_property PACKAGE_PIN V10 [get_ports {tmds_data_p_A[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p_A[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p_A[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p_A[0]}]
set_property IOSTANDARD TMDS_33 [get_ports tmds_clk_p_A]
set_property PACKAGE_PIN W11 [get_ports tmds_clk_p_A]
set_property IOSTANDARD LVCMOS33 [get_ports hpdin]
set_property PACKAGE_PIN W14 [get_ports hpdin]
#源码里未用到的HDMI引脚set_property PACKAGE_PIN AB10 [get_ports {tmds_data_n_A[0]}]
                       set_property PACKAGE_PIN AA11 [get_ports {tmds_data_n_A[1]}]
                       set_property PACKAGE_PIN W10 [get_ports {tmds_data_n_A[2]}]
                       set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[2]}]
                       set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[1]}]
                       set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n_A[0]}]
                       set_property IOSTANDARD TMDS_33 [get_ports tmds_clk_n_A]
                       set_property PACKAGE_PIN W12 [get_ports tmds_clk_n_A]

#--------------------------------OV5640摄像头------------------------------------------
create_clock -period 40.000 -name cmos_pclk [get_ports cam_pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cam_pclk_IBUF]
set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVCMOS33} [get_ports cam_pclk]
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports cam_rst_n]
set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVCMOS33} [get_ports cam_pwdn]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[0]}]
set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[1]}]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[2]}]
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[3]}]
set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[4]}]
set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[5]}]
set_property -dict {PACKAGE_PIN E14 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[6]}]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cam_data[7]}]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports cam_vsync]
set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports cam_href]
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports cam_scl]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports cam_sda]

#-----------------------------------以太网-----------------------------------------
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports eth_rst_n]
set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports eth_rxc]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports eth_rx_ctl]
set_property -dict {PACKAGE_PIN B13 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[0]}]
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[1]}]
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[2]}]
set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVCMOS33} [get_ports {eth_rxd[3]}]

set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports eth_txc]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports eth_tx_ctl]

set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS33} [get_ports {eth_txd[0]}]
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports {eth_txd[1]}]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {eth_txd[2]}]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {eth_txd[3]}]

#------------------------------J1扩展口引脚-----------------------------------
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports {P1IO[0]}]
set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS33} [get_ports {P1IO[1]}]
set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports {P1IO[2]}]
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports {P1IO[3]}]
set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVCMOS33} [get_ports {P1IO[4]}]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports {P1IO[5]}]
set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports {P1IO[6]}]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {P1IO[7]}]
set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports {P1IO[8]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {P1IO[9]}]
set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports {P1IO[10]}]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {P1IO[11]}]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports {P1IO[12]}]
set_property -dict {PACKAGE_PIN J22 IOSTANDARD LVCMOS33} [get_ports {P1IO[13]}]
set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS33} [get_ports {P1IO[14]}]
set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports {P1IO[15]}]
set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVCMOS33} [get_ports {P1IO[17]}]
set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVCMOS33} [get_ports {P1IO[18]}]
set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS33} [get_ports {P1IO[19]}]
set_property -dict {PACKAGE_PIN L21 IOSTANDARD LVCMOS33} [get_ports {P1IO[20]}]
set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports {P1IO[16]}]
set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports {P1IO[21]}]
set_property -dict {PACKAGE_PIN J21 IOSTANDARD LVCMOS33} [get_ports {P1IO[22]}]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports {P1IO[23]}]
set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS33} [get_ports {P1IO[24]}]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports {P1IO[25]}]
set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports {P1IO[26]}]
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports {P1IO[27]}]
set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports {P1IO[28]}]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports {P1IO[29]}]
set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS33} [get_ports {P1IO[30]}]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports {P1IO[31]}]
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports {P1IO[32]}]
set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports {P1IO[33]}]
set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS33} [get_ports {P1IO[34]}]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports {P1IO[35]}]

#------------------------------J2扩展口引脚-----------------------------------
set_property -dict {PACKAGE_PIN T3  IOSTANDARD LVCMOS33} [get_ports {row[0]}]
set_property -dict {PACKAGE_PIN T1  IOSTANDARD LVCMOS33} [get_ports {row[1]}]
set_property -dict {PACKAGE_PIN U1  IOSTANDARD LVCMOS33} [get_ports {row[2]}]
set_property -dict {PACKAGE_PIN U2  IOSTANDARD LVCMOS33} [get_ports {row[3]}]
set_property -dict {PACKAGE_PIN V2  IOSTANDARD LVCMOS33} [get_ports {col[0]}]
set_property -dict {PACKAGE_PIN R3  IOSTANDARD LVCMOS33} [get_ports {col[1]}]
set_property -dict {PACKAGE_PIN R2  IOSTANDARD LVCMOS33} [get_ports {col[2]}]
set_property -dict {PACKAGE_PIN W2  IOSTANDARD LVCMOS33} [get_ports {col[3]}]

set_property PULLUP true [get_ports row[0]]
set_property PULLUP true [get_ports row[1]]
set_property PULLUP true [get_ports row[2]]
set_property PULLUP true [get_ports row[3]]
#set_property -dict {PACKAGE_PIN T3  IOSTANDARD LVCMOS33} [get_ports {P2IO[0]}]
#set_property -dict {PACKAGE_PIN T1  IOSTANDARD LVCMOS33} [get_ports {P2IO[1]}]
#set_property -dict {PACKAGE_PIN U1  IOSTANDARD LVCMOS33} [get_ports {P2IO[2]}]
#set_property -dict {PACKAGE_PIN U2  IOSTANDARD LVCMOS33} [get_ports {P2IO[3]}]
#set_property -dict {PACKAGE_PIN V2  IOSTANDARD LVCMOS33} [get_ports {P2IO[4]}]
#set_property -dict {PACKAGE_PIN R3  IOSTANDARD LVCMOS33} [get_ports {P2IO[5]}]
#set_property -dict {PACKAGE_PIN R2  IOSTANDARD LVCMOS33} [get_ports {P2IO[6]}]
#set_property -dict {PACKAGE_PIN W2  IOSTANDARD LVCMOS33} [get_ports {P2IO[7]}]
set_property -dict {PACKAGE_PIN Y2  IOSTANDARD LVCMOS33} [get_ports {P2IO[8]}]
set_property -dict {PACKAGE_PIN W1  IOSTANDARD LVCMOS33} [get_ports {P2IO[9]}]
set_property -dict {PACKAGE_PIN Y1  IOSTANDARD LVCMOS33} [get_ports {P2IO[10]}]
set_property -dict {PACKAGE_PIN U3  IOSTANDARD LVCMOS33} [get_ports {P2IO[11]}]
set_property -dict {PACKAGE_PIN V3  IOSTANDARD LVCMOS33} [get_ports {P2IO[12]}]
set_property -dict {PACKAGE_PIN AA1 IOSTANDARD LVCMOS33} [get_ports {P2IO[13]}]
set_property -dict {PACKAGE_PIN AB1 IOSTANDARD LVCMOS33} [get_ports {P2IO[14]}]
set_property -dict {PACKAGE_PIN AB3 IOSTANDARD LVCMOS33} [get_ports {P2IO[15]}]
set_property -dict {PACKAGE_PIN AB2 IOSTANDARD LVCMOS33} [get_ports {P2IO[16]}]
set_property -dict {PACKAGE_PIN Y3  IOSTANDARD LVCMOS33} [get_ports {P2IO[17]}]
set_property -dict {PACKAGE_PIN AA3 IOSTANDARD LVCMOS33} [get_ports {P2IO[18]}]
set_property -dict {PACKAGE_PIN AA5 IOSTANDARD LVCMOS33} [get_ports {P2IO[19]}]
set_property -dict {PACKAGE_PIN AB5 IOSTANDARD LVCMOS33} [get_ports {P2IO[20]}]
set_property -dict {PACKAGE_PIN Y4  IOSTANDARD LVCMOS33} [get_ports {P2IO[21]}]
set_property -dict {PACKAGE_PIN AA4 IOSTANDARD LVCMOS33} [get_ports {P2IO[22]}]
set_property -dict {PACKAGE_PIN V4  IOSTANDARD LVCMOS33} [get_ports {P2IO[23]}]
set_property -dict {PACKAGE_PIN W4  IOSTANDARD LVCMOS33} [get_ports {P2IO[24]}]
set_property -dict {PACKAGE_PIN R4  IOSTANDARD LVCMOS33} [get_ports {P2IO[25]}]
set_property -dict {PACKAGE_PIN T4  IOSTANDARD LVCMOS33} [get_ports {P2IO[26]}]
set_property -dict {PACKAGE_PIN T5  IOSTANDARD LVCMOS33} [get_ports {P2IO[27]}]
set_property -dict {PACKAGE_PIN U5  IOSTANDARD LVCMOS33} [get_ports {P2IO[28]}]
set_property -dict {PACKAGE_PIN W6  IOSTANDARD LVCMOS33} [get_ports {P2IO[29]}]
set_property -dict {PACKAGE_PIN W5  IOSTANDARD LVCMOS33} [get_ports {P2IO[30]}]
set_property -dict {PACKAGE_PIN U6  IOSTANDARD LVCMOS33} [get_ports {P2IO[31]}]
set_property -dict {PACKAGE_PIN V5  IOSTANDARD LVCMOS33} [get_ports {P2IO[32]}]
set_property -dict {PACKAGE_PIN R6  IOSTANDARD LVCMOS33} [get_ports {P2IO[33]}]
set_property -dict {PACKAGE_PIN T6  IOSTANDARD LVCMOS33} [get_ports {P2IO[34]}]
set_property -dict {PACKAGE_PIN Y6  IOSTANDARD LVCMOS33} [get_ports {P2IO[35]}]

#------------------------------------SPI-------------------------------------------
#SPI 相关设置
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLUP [current_design]



