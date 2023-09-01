function mpc = case33bw
%CASE33BW  Power flow data for 33 bus distribution system from Baran & Wu
%   Please see CASEFORMAT for details on the case file format.
%
%   Data from ...
%       M. E. Baran and F. F. Wu, "Network reconfiguration in distribution
%       systems for loss reduction and load balancing," in IEEE Transactions
%       on Power Delivery, vol. 4, no. 2, pp. 1401-1407, Apr 1989.
%       doi: 10.1109/61.25627
%       URL: https://doi.org/10.1109/61.25627

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 10;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [ %% (Pd and Qd are specified in kW & kVAr here, converted to MW & MVAr below)
	1	3	0	0	0	0	1	1	0	12.66	1	1.05	0.95;
	2	1	100	60	0	0	1	1	0	12.66	1	1.05	0.95;
	3	1	90	40	0	0	1	1	0	12.66	1	1.05	0.95;
	4	1	120	80	0	0	1	1	0	12.66	1	1.05	0.95;
	5	1	60	30	0	0	1	1	0	12.66	1	1.05	0.95;
	6	1	60	20	0	0	1	1	0	12.66	1	1.05	0.95;
	7	1	200	100	0	0	1	1	0	12.66	1	1.05	0.95;
	8	1	200	100	0	0	1	1	0	12.66	1	1.05	0.95;
	9	1	60	20	0	0	1	1	0	12.66	1	1.05	0.95;
	10	1	60	20	0	0	1	1	0	12.66	1	1.05	0.95;
	11	1	45	30	0	0	1	1	0	12.66	1	1.05	0.95;
	12	1	60	35	0	0	1	1	0	12.66	1	1.05	0.95;
	13	1	60	35	0	0	1	1	0	12.66	1	1.05	0.95;
	14	1	120	80	0	0	1	1	0	12.66	1	1.05	0.95;
	15	1	60	10	0	0	1	1	0	12.66	1	1.05	0.95;
	16	1	60	20	0	0	1	1	0	12.66	1	1.05	0.95;
	17	1	60	20	0	0	1	1	0	12.66	1	1.05	0.95;
	18	1	90	40	0	0	1	1	0	12.66	1	1.05	0.95;
	19	1	90	40	0	0	1	1	0	12.66	1	1.05	0.95;
	20	1	90	40	0	0	1	1	0	12.66	1	1.05	0.95;
	21	1	90	40	0	0	1	1	0	12.66	1	1.05	0.95;
	22	1	90	40	0	0	1	1	0	12.66	1	1.05	0.95;
	23	1	90	50	0	0	1	1	0	12.66	1	1.05	0.95;
	24	1	420	200	0	0	1	1	0	12.66	1	1.05	0.95;
	25	1	420	200	0	0	1	1	0	12.66	1	1.05	0.95;
	26	1	60	25	0	0	1	1	0	12.66	1	1.05	0.95;
	27	1	60	25	0	0	1	1	0	12.66	1	1.05	0.95;
	28	1	60	20	0	0	1	1	0	12.66	1	1.05	0.95;
	29	1	120	70	0	0	1	1	0	12.66	1	1.05	0.95;
	30	1	200	600	0	0	1	1	0	12.66	1	1.05	0.95;
	31	1	150	70	0	0	1	1	0	12.66	1	1.05	0.95;
	32	1	210	100	0	0	1	1	0	12.66	1	1.05	0.95;
	33	1	60	40	0	0	1	1	0	12.66	1	1.05	0.95;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [  %% (r and x specified in ohms here, converted to p.u. below)
	1	2	0.0922	0.0470	0	2.7	 0	0	0	0	1	-360	360;
	2	3	0.4930	0.2511	0	2.7	 0	0	0	0	1	-360	360;
	3	4	0.3660	0.1864	0	2.7	 0	0	0	0	1	-360	360;
	4	5	0.3811	0.1941	0	2.7	 0	0	0	0	1	-360	360;
	5	6	0.8190	0.7070	0	2.7	 0	0	0	0	1	-360	360;
	6	7	0.1872	0.6188	0	2.7	 0	0	0	0	1	-360	360;
	7	8	0.7114	0.2351	0	2.7	 0	0	0	0	1	-360	360;
	8	9	1.0300	0.7400	0	2.7	 0	0	0	0	1	-360	360;
	9	10	1.0440	0.7400	0	2.7 0	0	0	0	1	-360	360;
	10	11	0.1966	0.0650	0	2.7	 0	0	0	0	1	-360	360;
	11	12	0.3744	0.1238	0	2.7	 0	0	0	0	1	-360	360;
	12	13	1.4680	1.1550	0	2.7	 0	0	0	0	1	-360	360;
	13	14	0.5416	0.7129	0	2.7	 0	0	0	0	1	-360	360;
	14	15	0.5910	0.5260	0	2.7	 0	0	0	0	1	-360	360;
	15	16	0.7463	0.5450	0	2.7	 0	0	0	0	1	-360	360;
	16	17	1.2890	1.7210	0	2.7	 0	0	0	0	1	-360	360;
	17	18	0.7320	0.5740	0	2.7	 0	0	0	0	1	-360	360;
	2	19	0.1640	0.1565	0	2.7	 0	0	0	0	1	-360	360;
	19	20	1.5042	1.3554	0	2.7	 0	0	0	0	1	-360	360;
	20	21	0.4095	0.4784	0	2.7	 0	0	0	0	1	-360	360;
	21	22	0.7089	0.9373	0	2.7	 0	0	0	0	1	-360	360;
	3	23	0.4512	0.3083	0	2.7	 0	0	0	0	1	-360	360;
	23	24	0.8980	0.7091	0	2.7	 0	0	0	0	1	-360	360;
	24	25	0.8960	0.7011	0	2.7	 0	0	0	0	1	-360	360;
	6	26	0.2030	0.1034	0	2.7  0	0	0	0	1	-360	360;
	26	27	0.2842	0.1447	0	2.7	 0	0	0	0	1	-360	360;
	27	28	1.0590	0.9337	0	2.7	 0	0	0	0	1	-360	360;
	28	29	0.8042	0.7006	0	2.7	 0	0	0	0	1	-360	360;
	29	30	0.5075	0.2585	0	2.7	 0	0	0	0	1	-360	360;
	30	31	0.9744	0.9630	0	2.7	 0	0	0	0	1	-360	360;
	31	32	0.3105	0.3619	0	2.7	 0	0	0	0	1	-360	360;
	32	33	0.3410	0.5302	0	2.7	 0	0	0	0	1	-360	360;
%	21	8	2.0000	2.0000	0	0	0	0	0	0	0	-360	360; 
%	9	15	2.0000	2.0000	0	0	0	0	0	0	0	-360	360;
%	12	22	2.0000	2.0000	0	0	0	0	0	0	0	-360	360;
%	18	33	0.5000	0.5000	0	0	0	0	0	0	0	-360	360;
%	25	29	0.5000	0.5000	0	0	0	0	0	0	0	-360	360;
];
%%(branches 21-8; 9-15; 12-22; 18-33; 25-29 are opened in normal operations)

%% Diesel generator data (in MW, Mvar)
%	bus	Pg_max Pg_min Qg_max Qg_min min_up min_down ramp_up ramp_down PFRup_max PFRup_max HG
mpc.gen = [
	  2   0.8    0.10    0.8    -0.3    1    1    0.15    0.15    0.08     0.08   4.5
     18   1.0    0.15    1.0    -0.3    2    1    0.20    0.20    0.10     0.10   5.0
     33   1.5    0.20    1.0    -0.4    3    1    0.25    0.25    0.15     0.15   6.0
];

%	bus	SU_cost SD_cost NO_cost gene_cost PFRcost  (in $/MW)
mpc.gencost = [
     2    150    4    2   32    6.4
     18   220    4    2   27    5.4
     33   350    4    2   24    4.8
];

%% BESS data (in MW, Mvar)
%	bus	E_max E_min Pch_max Pdch_max eta_ch eta_dch HB_max HB_min	  
mpc.bess = [
	22   0.5   0.15   0.20   0.20   0.95   0.95   3.0   0.0      
    25   0.6   0.15   0.20   0.20   0.95   0.95   3.0   0.0  
];

%	bus	BESS_cost BESS_IR_cost BESS_PFR_cost (in $/MW)  
mpc.besscost = [
	22  8   1.6  1.6
    25  10  2.0  2.0
];

%% RES data
%	bus	RES_max HS_max HS_min DLrate_max	  
mpc.res = [
	22  2.5   3.5   0.0   0.1
    25  2.5   3.5   0.0   0.1
];

% bus RESIR_cost RESPFR_cost(in $/MW)	  
mpc.rescost = [
    22  0.6  0.6
    25  0.6  0.6
];

% PCC substation (in MVA, $/MW)
% bus_pcc capacity  price
mpc.pcc=[ 1  4 22
];


%% convert branch impedances from Ohms to p.u.
[PQ, PV, REF, NONE, BUS_I, BUS_TYPE, PD, QD, GS, BS, BUS_AREA, VM, ...
    VA, BASE_KV, ZONE, VMAX, VMIN, LAM_P, LAM_Q, MU_VMAX, MU_VMIN] = idx_bus;
[F_BUS, T_BUS, BR_R, BR_X, BR_B, RATE_A, RATE_B, RATE_C, ...
    TAP, SHIFT, BR_STATUS, PF, QF, PT, QT, MU_SF, MU_ST, ...
    ANGMIN, ANGMAX, MU_ANGMIN, MU_ANGMAX] = idx_brch;

Vbase = mpc.bus(1, BASE_KV) * 1e3;      %% in Volts
Sbase = mpc.baseMVA * 1e6;              %% in VA
mpc.branch(:, [BR_R BR_X]) = mpc.branch(:, [BR_R BR_X]) / (Vbase^2 / Sbase);

%% convert loads from kW to MW
mpc.bus(:, [PD, QD]) = mpc.bus(:, [PD, QD]) / 1e3;
