#! /usr/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1554-ge3a959196)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "/usr/lib/ivl/system.vpi";
:vpi_module "/usr/lib/ivl/vhdl_sys.vpi";
:vpi_module "/usr/lib/ivl/vhdl_textio.vpi";
:vpi_module "/usr/lib/ivl/v2005_math.vpi";
:vpi_module "/usr/lib/ivl/va_math.vpi";
S_0x55dc20796dc0 .scope module, "counter" "counter" 2 1;
 .timescale 0 0;
    .port_info 0 /OUTPUT 8 "count";
    .port_info 1 /INPUT 1 "clk";
    .port_info 2 /INPUT 1 "reset_n";
P_0x55dc20797900 .param/l "WIDTH" 0 2 2, +C4<00000000000000000000000000001000>;
o0x7febb5cd1018 .functor BUFZ 1, C4<z>; HiZ drive
v0x55dc20797010_0 .net "clk", 0 0, o0x7febb5cd1018;  0 drivers
v0x55dc207ddce0_0 .var "count", 7 0;
o0x7febb5cd1078 .functor BUFZ 1, C4<z>; HiZ drive
v0x55dc207dddc0_0 .net "reset_n", 0 0, o0x7febb5cd1078;  0 drivers
E_0x55dc207cf6e0/0 .event negedge, v0x55dc207dddc0_0;
E_0x55dc207cf6e0/1 .event posedge, v0x55dc20797010_0;
E_0x55dc207cf6e0 .event/or E_0x55dc207cf6e0/0, E_0x55dc207cf6e0/1;
    .scope S_0x55dc20796dc0;
T_0 ;
    %wait E_0x55dc207cf6e0;
    %load/vec4 v0x55dc207dddc0_0;
    %nor/r;
    %flag_set/vec4 8;
    %jmp/0xz  T_0.0, 8;
    %pushi/vec4 0, 0, 8;
    %assign/vec4 v0x55dc207ddce0_0, 0;
    %jmp T_0.1;
T_0.0 ;
    %load/vec4 v0x55dc207ddce0_0;
    %addi 1, 0, 8;
    %assign/vec4 v0x55dc207ddce0_0, 0;
T_0.1 ;
    %jmp T_0;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "counter.sv";
