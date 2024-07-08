v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 540 0 570 0 {
lab=out}
N 570 0 570 110 {
lab=out}
N -90 110 570 110 {
lab=out}
N -90 0 -90 110 {
lab=out}
N -90 0 -60 -0 {
lab=out}
N 20 0 70 0 {
lab=#net1}
N 150 0 200 0 {
lab=#net2}
N 280 0 330 -0 {
lab=#net3}
N 410 0 460 -0 {
lab=#net4}
N -190 -200 -140 -200 {
lab=VGND}
N -190 -160 -140 -160 {
lab=VPWR}
C {sky130_stdcells/inv_1.sym} -20 0 0 0 {name=x1 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/einvn_0.sym} 110 0 0 0 {name=x2 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 70 40 0 0 {name=p1 lab=not_enable}
C {devices/ipin.sym} -190 -200 0 0 {name=p2 lab=VGND}
C {devices/ipin.sym} -190 -160 0 0 {name=p3 lab=VPWR}
C {devices/lab_pin.sym} -140 -200 2 0 {name=p4 sig_type=std_logic lab=VGND}
C {devices/lab_pin.sym} -140 -160 2 0 {name=p5 sig_type=std_logic lab=VPWR}
C {sky130_stdcells/inv_1.sym} 240 0 0 0 {name=x3 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 370 0 0 0 {name=x4 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 500 0 0 0 {name=x5 VGND=VGND VNB=VGND VPB=VPWR VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/code.sym} 10 -240 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice


"
spice_ignore=false}
C {devices/launcher.sym} 490 -140 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_dac.raw tran"
}
C {devices/code.sym} 170 -240 0 0 {name=SIMULATION
only_toplevel=true
value="
* .options filetype=ascii
Vgnd VGND 0 0
Vpwr VPWR 0 1.8
Venb not_enable 0 0
.control

tran 0.1p 2n uic
write ring_osc.raw
.endc
.end
"}
C {devices/opin.sym} 570 110 0 0 {name=p6 lab=out}
