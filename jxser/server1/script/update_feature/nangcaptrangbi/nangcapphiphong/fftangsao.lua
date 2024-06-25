---------------------***Script*By*HeartDoldly***-----------------------------
Include("\\script\\lib\\composeex.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\update_feature\\nangcaptrangbi\\nangcapphiphong\\equip_fifongdotpha.lua")
---------------------------------------------------------------------------------------
PhiPhongTangSao = tbActivityCompose:new()
PhiPhongTangSao.bAccessBindItem = 1
local tbSuccessRate = {
	--K×nh L«i
	[1] = 80,
	[2] = 75,
	[3] = 70,
	[4] = 60,
	[5] = 50,
	[6] = 40,
	[7] = 30,
	[8] = 25,
	[9] = 20,
	[10] = 10,
	--Ngù Phong
	[11] = 80,
	[12] = 75,
	[13] = 70,
	[14] = 60,
	[15] = 50,
	[16] = 40,
	[17] = 30,
	[18] = 25,
	[19] = 20,
	[20] = 10,
	--PhÖ Quang
	[21] = 80,
	[22] = 75,
	[23] = 70,
	[24] = 60,
	[25] = 50,
	[26] = 40,
	[27] = 30,
	[28] = 25,
	[29] = 20,
	[30] = 10,
	--KhÊp ThÇn
	[31] = 80,
	[32] = 75,
	[33] = 70,
	[34] = 60,
	[35] = 50,
	[36] = 40,
	[37] = 30,
	[38] = 25,
	[39] = 20,
	[40] = 10,
	--K×nh Thiªn
	[41] = 80,
	[42] = 75,
	[43] = 70,
	[44] = 60,
	[45] = 50,
	[46] = 40,
	[47] = 30,
	[48] = 25,
	[49] = 20,
	[50] = 10,
	--HuyÒn Kim
	[51] = 80,
	[52] = 75,
	[53] = 50,
	[54] = 40,
	[55] = 30,
	[56] = 10,
	[57] = 5,
	[58] = 5,
	[59] = 5,
	[60] = 5,
	--V« Cùc
	[61] = 100,
	[62] = 100,
	[63] = 100,
	[64] = 100,
	[65] = 100,
	[66] = 100,
	[67] = 100,
	[68] = 100,
	[69] = 100,
	[70] = 100,
	--L¨ng TuyÖt
	[71] = 100,
	[72] = 90,
	[73] = 80,
	[74] = 70,
	[75] = 60,
	[76] = 50,
	[77] = 40,
	[78] = 25,
	[79] = 20,
	[80] = 10,
	--Tö V©n
	[81] = 100,
	[82] = 100,
	[83] = 100,
	[84] = 100,
	[85] = 100,
	[86] = 100,
	[87] = 100,
	[88] = 100,
	[89] = 100,
	[90] = 100,
	--V« Song
	[91] = 100,
	[92] = 100,
	[93] = 100,
	[94] = 100,
	[95] = 100,
	[96] = 100,
	[97] = 100,
	[98] = 100,
	[99] = 100,
	[100] = 100,
}
	
local tbLogAction = {
	[1] = "PhiPhongThanhCong",
	[2] = "PhiPhongThanhCong",
	[3] = "PhiPhongThanhCong",
	[4] = "PhiPhongThanhCong",
	[5] = "PhiPhongThanhCong",
	[6] = "PhiPhongThanhCong",
	[7] = "PhiPhongThanhCong",
	[8] = "PhiPhongThanhCong",
	[9] = "PhiPhongThanhCong",
	[10] = "PhiPhongThanhCong",
	[11] = "PhiPhongThanhCong",
	[12] = "PhiPhongThanhCong",
	[13] = "PhiPhongThanhCong",
	[14] = "PhiPhongThanhCong",
	[15] = "PhiPhongThanhCong",
	[16] = "PhiPhongThanhCong",
	[17] = "PhiPhongThanhCong",
	[18] = "PhiPhongThanhCong",
	[19] = "PhiPhongThanhCong",
	[20] = "PhiPhongThanhCong",
	[21] = "PhiPhongThanhCong",
	[22] = "PhiPhongThanhCong",
	[23] = "PhiPhongThanhCong",
	[24] = "PhiPhongThanhCong",
	[25] = "PhiPhongThanhCong",
	[26] = "PhiPhongThanhCong",
	[27] = "PhiPhongThanhCong",
	[28] = "PhiPhongThanhCong",
	[29] = "PhiPhongThanhCong",
	[30] = "PhiPhongThanhCong",
	[31] = "PhiPhongThanhCong",
	[32] = "PhiPhongThanhCong",
	[33] = "PhiPhongThanhCong",
	[34] = "PhiPhongThanhCong",
	[35] = "PhiPhongThanhCong",
	[36] = "PhiPhongThanhCong",
	[37] = "PhiPhongThanhCong",
	[38] = "PhiPhongThanhCong",
	[39] = "PhiPhongThanhCong",
	[40] = "PhiPhongThanhCong",
	[41] = "PhiPhongThanhCong",
	[42] = "PhiPhongThanhCong",
	[43] = "PhiPhongThanhCong",
	[44] = "PhiPhongThanhCong",
	[45] = "PhiPhongThanhCong",
	[46] = "PhiPhongThanhCong",
	[47] = "PhiPhongThanhCong",
	[48] = "PhiPhongThanhCong",
	[49] = "PhiPhongThanhCong",
	[50] = "PhiPhongThanhCong",
	[51] = "PhiPhongThanhCong",
	[52] = "PhiPhongThanhCong",
	[53] = "PhiPhongThanhCong",
	[54] = "PhiPhongThanhCong",
	[55] = "PhiPhongThanhCong",
	[56] = "PhiPhongThanhCong",
	[57] = "PhiPhongThanhCong",
	[58] = "PhiPhongThanhCong",
	[59] = "PhiPhongThanhCong",
	[60] = "PhiPhongThanhCong",
	[61] = "PhiPhongThanhCong",
	[62] = "PhiPhongThanhCong",
	[63] = "PhiPhongThanhCong",
	[64] = "PhiPhongThanhCong",
	[65] = "PhiPhongThanhCong",
	[66] = "PhiPhongThanhCong",
	[67] = "PhiPhongThanhCong",
	[68] = "PhiPhongThanhCong",
	[69] = "PhiPhongThanhCong",
	[70] = "PhiPhongThanhCong",
	[71] = "PhiPhongThanhCong",
	[72] = "PhiPhongThanhCong",
	[73] = "PhiPhongThanhCong",
	[74] = "PhiPhongThanhCong",
	[75] = "PhiPhongThanhCong",
	[76] = "PhiPhongThanhCong",
	[77] = "PhiPhongThanhCong",
	[78] = "PhiPhongThanhCong",
	[79] = "PhiPhongThanhCong",
	[80] = "PhiPhongThanhCong",
	[81] = "PhiPhongThanhCong",
	[82] = "PhiPhongThanhCong",
	[83] = "PhiPhongThanhCong",
	[84] = "PhiPhongThanhCong",
	[85] = "PhiPhongThanhCong",
	[86] = "PhiPhongThanhCong",
	[87] = "PhiPhongThanhCong",
	[88] = "PhiPhongThanhCong",
	[89] = "PhiPhongThanhCong",
	[90] = "PhiPhongThanhCong",
	[91] = "PhiPhongThanhCong",
	[92] = "PhiPhongThanhCong",
	[93] = "PhiPhongThanhCong",
	[94] = "PhiPhongThanhCong",
	[95] = "PhiPhongThanhCong",
	[96] = "PhiPhongThanhCong",
	[97] = "PhiPhongThanhCong",
	[98] = "PhiPhongThanhCong",
	[99] = "PhiPhongThanhCong",
	[100] = "PhiPhongThanhCong",
	[101] = "PhiPhongThatBai",
	[102] = "PhiPhongThatBai",
	[103] = "PhiPhongThatBai",
	[104] = "PhiPhongThatBai",
	[105] = "PhiPhongThatBai",
	[106] = "PhiPhongThatBai",
	[107] = "PhiPhongThatBai",
	[108] = "PhiPhongThatBai",
	[109] = "PhiPhongThatBai",
	[110] = "PhiPhongThatBai",
	[111] = "PhiPhongThatBai",
	[112] = "PhiPhongThatBai",
	[113] = "PhiPhongThatBai",
	[114] = "PhiPhongThatBai",
	[115] = "PhiPhongThatBai",
	[116] = "PhiPhongThatBai",
	[117] = "PhiPhongThatBai",
	[118] = "PhiPhongThatBai",
	[119] = "PhiPhongThatBai",
	[120] = "PhiPhongThatBai",
	[121] = "PhiPhongThatBai",
	[122] = "PhiPhongThatBai",
	[123] = "PhiPhongThatBai",
	[124] = "PhiPhongThatBai",
	[125] = "PhiPhongThatBai",
	[126] = "PhiPhongThatBai",
	[127] = "PhiPhongThatBai",
	[128] = "PhiPhongThatBai",
	[129] = "PhiPhongThatBai",
	[130] = "PhiPhongThatBai",
	[131] = "PhiPhongThatBai",
	[132] = "PhiPhongThatBai",
	[133] = "PhiPhongThatBai",
	[134] = "PhiPhongThatBai",
	[135] = "PhiPhongThatBai",
	[136] = "PhiPhongThatBai",
	[137] = "PhiPhongThatBai",
	[138] = "PhiPhongThatBai",
	[139] = "PhiPhongThatBai",
	[140] = "PhiPhongThatBai",
	[141] = "PhiPhongThatBai",
	[142] = "PhiPhongThatBai",
	[143] = "PhiPhongThatBai",
	[144] = "PhiPhongThatBai",
	[145] = "PhiPhongThatBai",
	[146] = "PhiPhongThatBai",
	[147] = "PhiPhongThatBai",
	[148] = "PhiPhongThatBai",
	[149] = "PhiPhongThatBai",
	[150] = "PhiPhongThatBai",
	[151] = "PhiPhongThatBai",
	[152] = "PhiPhongThatBai",
	[153] = "PhiPhongThatBai",
	[154] = "PhiPhongThatBai",
	[155] = "PhiPhongThatBai",
	[156] = "PhiPhongThatBai",
	[157] = "PhiPhongThatBai",
	[158] = "PhiPhongThatBai",
	[159] = "PhiPhongThatBai",
	[160] = "PhiPhongThatBai",
	[161] = "PhiPhongThatBai",
	[162] = "PhiPhongThatBai",
	[163] = "PhiPhongThatBai",
	[164] = "PhiPhongThatBai",
	[165] = "PhiPhongThatBai",
	[166] = "PhiPhongThatBai",
	[167] = "PhiPhongThatBai",
	[168] = "PhiPhongThatBai",
	[169] = "PhiPhongThatBai",
	[170] = "PhiPhongThatBai",
	[171] = "PhiPhongThatBai",
	[172] = "PhiPhongThatBai",
	[173] = "PhiPhongThatBai",
	[174] = "PhiPhongThatBai",
	[175] = "PhiPhongThatBai",
	[176] = "PhiPhongThatBai",
	[177] = "PhiPhongThatBai",
	[178] = "PhiPhongThatBai",
	[179] = "PhiPhongThatBai",
	[180] = "PhiPhongThatBai",
	[181] = "PhiPhongThatBai",
	[182] = "PhiPhongThatBai",
	[183] = "PhiPhongThatBai",
	[184] = "PhiPhongThatBai",
	[185] = "PhiPhongThatBai",
	[186] = "PhiPhongThatBai",
	[187] = "PhiPhongThatBai",
	[188] = "PhiPhongThatBai",
	[189] = "PhiPhongThatBai",
	[190] = "PhiPhongThatBai",
	[191] = "PhiPhongThatBai",
	[192] = "PhiPhongThatBai",
	[193] = "PhiPhongThatBai",
	[194] = "PhiPhongThatBai",
	[195] = "PhiPhongThatBai",
	[196] = "PhiPhongThatBai",
	[197] = "PhiPhongThatBai",
	[198] = "PhiPhongThatBai",
	[199] = "PhiPhongThatBai",
	[200] = "PhiPhongThatBai",
}	

local tbMaterialA = {
		[	1	]=	{szName="0 Sao Phi phong K×nh L«i",tbProp={0,	9387	},nQuality=1},
		[	2	]=	{szName="1 Sao Phi phong K×nh L«i",tbProp={0,	9388	},nQuality=1},
		[	3	]=	{szName="2 Sao Phi phong K×nh L«i",tbProp={0,	9389	},nQuality=1},
		[	4	]=	{szName="3 Sao Phi phong K×nh L«i",tbProp={0,	9390	},nQuality=1},
		[	5	]=	{szName="4 Sao Phi phong K×nh L«i",tbProp={0,	9391	},nQuality=1},
		[	6	]=	{szName="5 Sao Phi phong K×nh L«i",tbProp={0,	9392	},nQuality=1},
		[	7	]=	{szName="6 Sao Phi phong K×nh L«i",tbProp={0,	9393	},nQuality=1},
		[	8	]=	{szName="7 Sao Phi phong K×nh L«i",tbProp={0,	9394	},nQuality=1},
		[	9	]=	{szName="8 Sao Phi phong K×nh L«i",tbProp={0,	9395	},nQuality=1},
		[	10	]=	{szName="9 Sao Phi phong K×nh L«i",tbProp={0,	9396	},nQuality=1},
							
							
		[	11	]=	{szName="0 Sao Phi Phong Ngù Phong",tbProp={0,	9398	},nQuality=1},
		[	12	]=	{szName="1 Sao Phi Phong Ngù Phong",tbProp={0,	9399	},nQuality=1},
		[	13	]=	{szName="2 Sao Phi Phong Ngù Phong",tbProp={0,	9400	},nQuality=1},
		[	14	]=	{szName="3 Sao Phi Phong Ngù Phong",tbProp={0,	9401	},nQuality=1},
		[	15	]=	{szName="4 Sao Phi Phong Ngù Phong",tbProp={0,	9402	},nQuality=1},
		[	16	]=	{szName="5 Sao Phi Phong Ngù Phong",tbProp={0,	9403	},nQuality=1},
		[	17	]=	{szName="6 Sao Phi Phong Ngù Phong",tbProp={0,	9404	},nQuality=1},
		[	18	]=	{szName="7 Sao Phi Phong Ngù Phong",tbProp={0,	9405	},nQuality=1},
		[	19	]=	{szName="8 Sao Phi Phong Ngù Phong",tbProp={0,	9406	},nQuality=1},
		[	20	]=	{szName="9 Sao Phi Phong Ngù Phong",tbProp={0,	9407	},nQuality=1},
							
							
		[	21	]=	{szName="0 Sao Phi phong PhÖ Quang",tbProp={0,	9409	},nQuality=1},
		[	22	]=	{szName="1 Sao Phi phong PhÖ Quang",tbProp={0,	9410	},nQuality=1},
		[	23	]=	{szName="2 Sao Phi phong PhÖ Quang",tbProp={0,	9411	},nQuality=1},
		[	24	]=	{szName="3 Sao Phi phong PhÖ Quang",tbProp={0,	9412	},nQuality=1},
		[	25	]=	{szName="4 Sao Phi phong PhÖ Quang",tbProp={0,	9413	},nQuality=1},
		[	26	]=	{szName="5 Sao Phi phong PhÖ Quang",tbProp={0,	9414	},nQuality=1},
		[	27	]=	{szName="6 Sao Phi phong PhÖ Quang",tbProp={0,	9415	},nQuality=1},
		[	28	]=	{szName="7 Sao Phi phong PhÖ Quang",tbProp={0,	9416	},nQuality=1},
		[	29	]=	{szName="8 Sao Phi phong PhÖ Quang",tbProp={0,	9417	},nQuality=1},
		[	30	]=	{szName="9 Sao Phi phong PhÖ Quang",tbProp={0,	9418	},nQuality=1},
							
							
		[	31	]=	{szName="0 Sao Phi phong KhÊp ThÇn",tbProp={0,	9420	},nQuality=1},
		[	32	]=	{szName="1 Sao Phi phong KhÊp ThÇn",tbProp={0,	9421	},nQuality=1},
		[	33	]=	{szName="2 Sao Phi phong KhÊp ThÇn",tbProp={0,	9422	},nQuality=1},
		[	34	]=	{szName="3 Sao Phi phong KhÊp ThÇn",tbProp={0,	9423	},nQuality=1},
		[	35	]=	{szName="4 Sao Phi phong KhÊp ThÇn",tbProp={0,	9424	},nQuality=1},
		[	36	]=	{szName="5 Sao Phi phong KhÊp ThÇn",tbProp={0,	9425	},nQuality=1},
		[	37	]=	{szName="6 Sao Phi phong KhÊp ThÇn",tbProp={0,	9426	},nQuality=1},
		[	38	]=	{szName="7 Sao Phi phong KhÊp ThÇn",tbProp={0,	9427	},nQuality=1},
		[	39	]=	{szName="8 Sao Phi phong KhÊp ThÇn",tbProp={0,	9428	},nQuality=1},
		[	40	]=	{szName="9 Sao Phi phong KhÊp ThÇn",tbProp={0,	9429	},nQuality=1},
							
							
		[	41	]=	{szName="0 Sao Phi phong K×nh Thiªn",tbProp={0,	9431	},nQuality=1},
		[	42	]=	{szName="1 Sao Phi phong K×nh Thiªn",tbProp={0,	9432	},nQuality=1},
		[	43	]=	{szName="2 Sao Phi phong K×nh Thiªn",tbProp={0,	9433	},nQuality=1},
		[	44	]=	{szName="3 Sao Phi phong K×nh Thiªn",tbProp={0,	9434	},nQuality=1},
		[	45	]=	{szName="4 Sao Phi phong K×nh Thiªn",tbProp={0,	9435	},nQuality=1},
		[	46	]=	{szName="5 Sao Phi phong K×nh Thiªn",tbProp={0,	9436	},nQuality=1},
		[	47	]=	{szName="6 Sao Phi phong K×nh Thiªn",tbProp={0,	9437	},nQuality=1},
		[	48	]=	{szName="7 Sao Phi phong K×nh Thiªn",tbProp={0,	9438	},nQuality=1},
		[	49	]=	{szName="8 Sao Phi phong K×nh Thiªn",tbProp={0,	9439	},nQuality=1},
		[	50	]=	{szName="9 Sao Phi phong K×nh Thiªn",tbProp={0,	9440	},nQuality=1},
							
							
		[	51	]=	{szName="0 Sao Phi phong HuyÒn Kim",tbProp={0,	9442	},nQuality=1},
		[	52	]=	{szName="1 Sao Phi phong HuyÒn Kim",tbProp={0,	9443	},nQuality=1},
		[	53	]=	{szName="2 Sao Phi phong HuyÒn Kim",tbProp={0,	9444	},nQuality=1},
		[	54	]=	{szName="3 Sao Phi phong HuyÒn Kim",tbProp={0,	9445	},nQuality=1},
		[	55	]=	{szName="4 Sao Phi phong HuyÒn Kim",tbProp={0,	9446	},nQuality=1},
		[	56	]=	{szName="5 Sao Phi phong HuyÒn Kim",tbProp={0,	9447	},nQuality=1},
		[	57	]=	{szName="6 Sao Phi phong HuyÒn Kim",tbProp={0,	9448	},nQuality=1},
		[	58	]=	{szName="7 Sao Phi phong HuyÒn Kim",tbProp={0,	9449	},nQuality=1},
		[	59	]=	{szName="8 Sao Phi phong HuyÒn Kim",tbProp={0,	9450	},nQuality=1},
		[	60	]=	{szName="9 Sao Phi phong HuyÒn Kim",tbProp={0,	9451	},nQuality=1},
							
							
		[	61	]=	{szName="0 Sao Phi phong V« Cùc",tbProp={0,	9453	},nQuality=1},
		[	62	]=	{szName="1 Sao Phi phong V« Cùc",tbProp={0,	9454	},nQuality=1},
		[	63	]=	{szName="2 Sao Phi phong V« Cùc",tbProp={0,	9455	},nQuality=1},
		[	64	]=	{szName="3 Sao Phi phong V« Cùc",tbProp={0,	9456	},nQuality=1},
		[	65	]=	{szName="4 Sao Phi phong V« Cùc",tbProp={0,	9457	},nQuality=1},
		[	66	]=	{szName="5 Sao Phi phong V« Cùc",tbProp={0,	9458	},nQuality=1},
		[	67	]=	{szName="6 Sao Phi phong V« Cùc",tbProp={0,	9459	},nQuality=1},
		[	68	]=	{szName="7 Sao Phi phong V« Cùc",tbProp={0,	9460	},nQuality=1},
		[	69	]=	{szName="8 Sao Phi phong V« Cùc",tbProp={0,	9461	},nQuality=1},
		[	70	]=	{szName="9 Sao Phi phong V« Cùc",tbProp={0,	9462	},nQuality=1},
							
							
		[	71	]=	{szName="0 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9464	},nQuality=1},
		[	72	]=	{szName="1 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9465	},nQuality=1},
		[	73	]=	{szName="2 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9466	},nQuality=1},
		[	74	]=	{szName="3 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9467	},nQuality=1},
		[	75	]=	{szName="4 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9468	},nQuality=1},
		[	76	]=	{szName="5 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9469	},nQuality=1},
		[	77	]=	{szName="6 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9470	},nQuality=1},
		[	78	]=	{szName="7 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9471	},nQuality=1},
		[	79	]=	{szName="8 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9472	},nQuality=1},
		[	80	]=	{szName="9 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9473	},nQuality=1},
							
							
		[	81	]=	{szName="0 Sao Phi phong Tö V©n",tbProp={0,	9475	},nQuality=1},
		[	82	]=	{szName="1 Sao Phi phong Tö V©n",tbProp={0,	9476	},nQuality=1},
		[	83	]=	{szName="2 Sao Phi phong Tö V©n",tbProp={0,	9477	},nQuality=1},
		[	84	]=	{szName="3 Sao Phi phong Tö V©n",tbProp={0,	9478	},nQuality=1},
		[	85	]=	{szName="4 Sao Phi phong Tö V©n",tbProp={0,	9479	},nQuality=1},
		[	86	]=	{szName="5 Sao Phi phong Tö V©n",tbProp={0,	9480	},nQuality=1},
		[	87	]=	{szName="6 Sao Phi phong Tö V©n",tbProp={0,	9481	},nQuality=1},
		[	88	]=	{szName="7 Sao Phi phong Tö V©n",tbProp={0,	9482	},nQuality=1},
		[	89	]=	{szName="8 Sao Phi phong Tö V©n",tbProp={0,	9483	},nQuality=1},
		[	90	]=	{szName="9 Sao Phi phong Tö V©n",tbProp={0,	9484	},nQuality=1},
							
							
		[	91	]=	{szName="0 Sao Phi phong V« Song",tbProp={0,	9486	},nQuality=1},
		[	92	]=	{szName="1 Sao Phi phong V« Song",tbProp={0,	9487	},nQuality=1},
		[	93	]=	{szName="2 Sao Phi phong V« Song",tbProp={0,	9488	},nQuality=1},
		[	94	]=	{szName="3 Sao Phi phong V« Song",tbProp={0,	9489	},nQuality=1},
		[	95	]=	{szName="4 Sao Phi phong V« Song",tbProp={0,	9490	},nQuality=1},
		[	96	]=	{szName="5 Sao Phi phong V« Song",tbProp={0,	9491	},nQuality=1},
		[	97	]=	{szName="6 Sao Phi phong V« Song",tbProp={0,	9492	},nQuality=1},
		[	98	]=	{szName="7 Sao Phi phong V« Song",tbProp={0,	9493	},nQuality=1},
		[	99	]=	{szName="8 Sao Phi phong V« Song",tbProp={0,	9494	},nQuality=1},
		[	100	]=	{szName="9 Sao Phi phong V« Song",tbProp={0,	9495	},nQuality=1},
	}
	local tbAdditive = {szName="Tinh Ngäc",tbProp={6,1,4807,},nCount = 1500}
	local tbFormulaList = {
	nWidth = 1,
	nHeight = 1,
	nFreeItemCellLimit = 1,
	tbMaterial = {},
	tbProduct = {
		[	1	]=	{szName="1 Sao Phi phong K×nh L«i",tbProp={0,	9388	},nQuality=1},
		[	2	]=	{szName="2 Sao Phi phong K×nh L«i",tbProp={0,	9389	},nQuality=1},
		[	3	]=	{szName="3 Sao Phi phong K×nh L«i",tbProp={0,	9390	},nQuality=1},
		[	4	]=	{szName="4 Sao Phi phong K×nh L«i",tbProp={0,	9391	},nQuality=1},
		[	5	]=	{szName="5 Sao Phi phong K×nh L«i",tbProp={0,	9392	},nQuality=1},
		[	6	]=	{szName="6 Sao Phi phong K×nh L«i",tbProp={0,	9393	},nQuality=1},
		[	7	]=	{szName="7 Sao Phi phong K×nh L«i",tbProp={0,	9394	},nQuality=1},
		[	8	]=	{szName="8 Sao Phi phong K×nh L«i",tbProp={0,	9395	},nQuality=1},
		[	9	]=	{szName="9 Sao Phi phong K×nh L«i",tbProp={0,	9396	},nQuality=1},
		[	10	]=	{szName="10 Sao Phi phong K×nh L«i",tbProp={0,	9397	},nQuality=1},
							
							
		[	11	]=	{szName="1 Sao Phi Phong Ngù Phong",tbProp={0,	9399	},nQuality=1},
		[	12	]=	{szName="2 Sao Phi Phong Ngù Phong",tbProp={0,	9400	},nQuality=1},
		[	13	]=	{szName="3 Sao Phi Phong Ngù Phong",tbProp={0,	9401	},nQuality=1},
		[	14	]=	{szName="4 Sao Phi Phong Ngù Phong",tbProp={0,	9402	},nQuality=1},
		[	15	]=	{szName="5 Sao Phi Phong Ngù Phong",tbProp={0,	9403	},nQuality=1},
		[	16	]=	{szName="6 Sao Phi Phong Ngù Phong",tbProp={0,	9404	},nQuality=1},
		[	17	]=	{szName="7 Sao Phi Phong Ngù Phong",tbProp={0,	9405	},nQuality=1},
		[	18	]=	{szName="8 Sao Phi Phong Ngù Phong",tbProp={0,	9406	},nQuality=1},
		[	19	]=	{szName="9 Sao Phi Phong Ngù Phong",tbProp={0,	9407	},nQuality=1},
		[	20	]=	{szName="10 Sao Phi Phong Ngù Phong",tbProp={0,	9408	},nQuality=1},
							
							
		[	21	]=	{szName="1 Sao Phi phong PhÖ Quang",tbProp={0,	9410	},nQuality=1},
		[	22	]=	{szName="2 Sao Phi phong PhÖ Quang",tbProp={0,	9411	},nQuality=1},
		[	23	]=	{szName="3 Sao Phi phong PhÖ Quang",tbProp={0,	9412	},nQuality=1},
		[	24	]=	{szName="4 Sao Phi phong PhÖ Quang",tbProp={0,	9413	},nQuality=1},
		[	25	]=	{szName="5 Sao Phi phong PhÖ Quang",tbProp={0,	9414	},nQuality=1},
		[	26	]=	{szName="6 Sao Phi phong PhÖ Quang",tbProp={0,	9415	},nQuality=1},
		[	27	]=	{szName="7 Sao Phi phong PhÖ Quang",tbProp={0,	9416	},nQuality=1},
		[	28	]=	{szName="8 Sao Phi phong PhÖ Quang",tbProp={0,	9417	},nQuality=1},
		[	29	]=	{szName="9 Sao Phi phong PhÖ Quang",tbProp={0,	9418	},nQuality=1},
		[	30	]=	{szName="10 Sao Phi phong PhÖ Quang",tbProp={0,	9419	},nQuality=1},
							
							
		[	31	]=	{szName="1 Sao Phi phong KhÊp ThÇn",tbProp={0,	9421	},nQuality=1},
		[	32	]=	{szName="2 Sao Phi phong KhÊp ThÇn",tbProp={0,	9422	},nQuality=1},
		[	33	]=	{szName="3 Sao Phi phong KhÊp ThÇn",tbProp={0,	9423	},nQuality=1},
		[	34	]=	{szName="4 Sao Phi phong KhÊp ThÇn",tbProp={0,	9424	},nQuality=1},
		[	35	]=	{szName="5 Sao Phi phong KhÊp ThÇn",tbProp={0,	9425	},nQuality=1},
		[	36	]=	{szName="6 Sao Phi phong KhÊp ThÇn",tbProp={0,	9426	},nQuality=1},
		[	37	]=	{szName="7 Sao Phi phong KhÊp ThÇn",tbProp={0,	9427	},nQuality=1},
		[	38	]=	{szName="8 Sao Phi phong KhÊp ThÇn",tbProp={0,	9428	},nQuality=1},
		[	39	]=	{szName="9 Sao Phi phong KhÊp ThÇn",tbProp={0,	9429	},nQuality=1},
		[	40	]=	{szName="10 Sao Phi phong KhÊp ThÇn",tbProp={0,	9430	},nQuality=1},
							
							
		[	41	]=	{szName="1 Sao Phi phong K×nh Thiªn",tbProp={0,	9432	},nQuality=1},
		[	42	]=	{szName="2 Sao Phi phong K×nh Thiªn",tbProp={0,	9433	},nQuality=1},
		[	43	]=	{szName="3 Sao Phi phong K×nh Thiªn",tbProp={0,	9434	},nQuality=1},
		[	44	]=	{szName="4 Sao Phi phong K×nh Thiªn",tbProp={0,	9435	},nQuality=1},
		[	45	]=	{szName="5 Sao Phi phong K×nh Thiªn",tbProp={0,	9436	},nQuality=1},
		[	46	]=	{szName="6 Sao Phi phong K×nh Thiªn",tbProp={0,	9437	},nQuality=1},
		[	47	]=	{szName="7 Sao Phi phong K×nh Thiªn",tbProp={0,	9438	},nQuality=1},
		[	48	]=	{szName="8 Sao Phi phong K×nh Thiªn",tbProp={0,	9439	},nQuality=1},
		[	49	]=	{szName="9 Sao Phi phong K×nh Thiªn",tbProp={0,	9440	},nQuality=1},
		[	50	]=	{szName="10 Sao Phi phong K×nh Thiªn",tbProp={0,	9441	},nQuality=1},
							
							
		[	51	]=	{szName="1 Sao Phi phong HuyÒn Kim",tbProp={0,	9443	},nQuality=1},
		[	52	]=	{szName="2 Sao Phi phong HuyÒn Kim",tbProp={0,	9444	},nQuality=1},
		[	53	]=	{szName="3 Sao Phi phong HuyÒn Kim",tbProp={0,	9445	},nQuality=1},
		[	54	]=	{szName="4 Sao Phi phong HuyÒn Kim",tbProp={0,	9446	},nQuality=1},
		[	55	]=	{szName="5 Sao Phi phong HuyÒn Kim",tbProp={0,	9447	},nQuality=1},
		[	56	]=	{szName="6 Sao Phi phong HuyÒn Kim",tbProp={0,	9448	},nQuality=1},
		[	57	]=	{szName="7 Sao Phi phong HuyÒn Kim",tbProp={0,	9449	},nQuality=1},
		[	58	]=	{szName="8 Sao Phi phong HuyÒn Kim",tbProp={0,	9450	},nQuality=1},
		[	59	]=	{szName="9 Sao Phi phong HuyÒn Kim",tbProp={0,	9451	},nQuality=1},
		[	60	]=	{szName="10 Sao Phi phong HuyÒn Kim",tbProp={0,	9452	},nQuality=1},
							
							
		[	61	]=	{szName="1 Sao Phi phong V« Cùc",tbProp={0,	9454	},nQuality=1},
		[	62	]=	{szName="2 Sao Phi phong V« Cùc",tbProp={0,	9455	},nQuality=1},
		[	63	]=	{szName="3 Sao Phi phong V« Cùc",tbProp={0,	9456	},nQuality=1},
		[	64	]=	{szName="4 Sao Phi phong V« Cùc",tbProp={0,	9457	},nQuality=1},
		[	65	]=	{szName="5 Sao Phi phong V« Cùc",tbProp={0,	9458	},nQuality=1},
		[	66	]=	{szName="6 Sao Phi phong V« Cùc",tbProp={0,	9459	},nQuality=1},
		[	67	]=	{szName="7 Sao Phi phong V« Cùc",tbProp={0,	9460	},nQuality=1},
		[	68	]=	{szName="8 Sao Phi phong V« Cùc",tbProp={0,	9461	},nQuality=1},
		[	69	]=	{szName="9 Sao Phi phong V« Cùc",tbProp={0,	9462	},nQuality=1},
		[	70	]=	{szName="10 Sao Phi phong V« Cùc",tbProp={0,	9463	},nQuality=1},
							
							
		[	71	]=	{szName="1 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9465	},nQuality=1},
		[	72	]=	{szName="2 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9466	},nQuality=1},
		[	73	]=	{szName="3 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9467	},nQuality=1},
		[	74	]=	{szName="4 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9468	},nQuality=1},
		[	75	]=	{szName="5 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9469	},nQuality=1},
		[	76	]=	{szName="6 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9470	},nQuality=1},
		[	77	]=	{szName="7 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9471	},nQuality=1},
		[	78	]=	{szName="8 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9472	},nQuality=1},
		[	79	]=	{szName="9 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9473	},nQuality=1},
		[	80	]=	{szName="10 Sao Phi phong L¨ng TuyÖt",tbProp={0,	9474	},nQuality=1},
							
							
		[	81	]=	{szName="1 Sao Phi phong Tö V©n",tbProp={0,	9476	},nQuality=1},
		[	82	]=	{szName="2 Sao Phi phong Tö V©n",tbProp={0,	9477	},nQuality=1},
		[	83	]=	{szName="3 Sao Phi phong Tö V©n",tbProp={0,	9478	},nQuality=1},
		[	84	]=	{szName="4 Sao Phi phong Tö V©n",tbProp={0,	9479	},nQuality=1},
		[	85	]=	{szName="5 Sao Phi phong Tö V©n",tbProp={0,	9480	},nQuality=1},
		[	86	]=	{szName="6 Sao Phi phong Tö V©n",tbProp={0,	9481	},nQuality=1},
		[	87	]=	{szName="7 Sao Phi phong Tö V©n",tbProp={0,	9482	},nQuality=1},
		[	88	]=	{szName="8 Sao Phi phong Tö V©n",tbProp={0,	9483	},nQuality=1},
		[	89	]=	{szName="9 Sao Phi phong Tö V©n",tbProp={0,	9484	},nQuality=1},
		[	90	]=	{szName="10 Sao Phi phong Tö V©n",tbProp={0,	9485	},nQuality=1},
							
							
		[	91	]=	{szName="1 Sao Phi phong V« Song",tbProp={0,	9487	},nQuality=1},
		[	92	]=	{szName="2 Sao Phi phong V« Song",tbProp={0,	9488	},nQuality=1},
		[	93	]=	{szName="3 Sao Phi phong V« Song",tbProp={0,	9489	},nQuality=1},
		[	94	]=	{szName="4 Sao Phi phong V« Song",tbProp={0,	9490	},nQuality=1},
		[	95	]=	{szName="5 Sao Phi phong V« Song",tbProp={0,	9491	},nQuality=1},
		[	96	]=	{szName="6 Sao Phi phong V« Song",tbProp={0,	9492	},nQuality=1},
		[	97	]=	{szName="7 Sao Phi phong V« Song",tbProp={0,	9493	},nQuality=1},
		[	98	]=	{szName="8 Sao Phi phong V« Song",tbProp={0,	9494	},nQuality=1},
		[	99	]=	{szName="9 Sao Phi phong V« Song",tbProp={0,	9495	},nQuality=1},
		[	100	]=	{szName="10 Sao Phi phong V« Song",tbProp={0,	9496	},nQuality=1},
	}
}
	
function PhiPhongTangSao:GetRealLevel(nLevel)
	local nMaxLevel = 100
	if nLevel > nMaxLevel then
		nLevel = nLevel - nMaxLevel
	end
	return nLevel
end

function PhiPhongTangSao:CanCompose(nLevel)
	nLevel = self:GetRealLevel(nLevel)
	local nNumber = random(1,100)
	if nNumber <= %tbSuccessRate[nLevel] then
		return 1
	end
	return 0	
end

function PhiPhongTangSao:CalcItemCount(tbRoomItems, tbItem)
	local nTotalCount = 0
	for i=1, getn(tbRoomItems) do
		local nItemIndex = tbRoomItems[i]
		if nItemIndex and nItemIndex > 0 then
			local nCount = GetItemStackCount(nItemIndex)
			--local nItemBindState = GetItemBindState(nItemIndex)
			--if nItemBindState == 0 and self:CheckItem(tbItem ,nItemIndex) == 1 then
			if self:CheckItem(tbItem ,nItemIndex) == 1 then
				nTotalCount = nTotalCount + nCount
			end
		end
	end
	return nTotalCount	
end

function PhiPhongTangSao:CheckItemLegal(tbItem)
	local tbRoomItems = self:GetRoomItems(self.nRoomType)
	local nItemNeedCount = tbItem.nCount or 1
	if nItemNeedCount > 0 then
		local tbProp = tbItem.tbProp
		tbProp[4] = tbProp[4] or -1		
		local nCurCount = self:CalcItemCount(tbRoomItems, tbItem)
		if nCurCount < nItemNeedCount then
			return 0
		end	
	end			
	return 1
end

function PhiPhongTangSao:CheckLegal()
	local tbItem = self.tbAdditive
	local tbMaterial = self.tbFormula.tbMaterial
	for i=1, getn(tbMaterial) do
		local tbSubMaterial = tbMaterial[i]
		local bLeap = 1
		for j = 1, getn(tbSubMaterial) do
			tbItem = tbSubMaterial[j]
			if self:CheckItemLegal(tbItem) ~= 1 then
				bLeap = 0
				break
			end
		end
		if bLeap == 1 then
			return i
		end
	end
	return 0
end

function PhiPhongTangSao:Compose(nComposeCount, nLevel)
	local tbMaterial = self.tbFormula.tbMaterial[nLevel]
	local tbProduct	= self.tbFormula.tbProduct[nLevel]
	
	nComposeCount = nComposeCount or 1
	
	if type(self.tbFormula.pLimitFun) == "function" then
		if self.tbFormula:pLimitFun(nComposeCount) ~= 1 then
			return 0
		end
	end
	
	local nFreeItemCellLimit = self.tbFormula.nFreeItemCellLimit or 1
	nFreeItemCellLimit = ceil(nFreeItemCellLimit * nComposeCount)
	if self.tbFormula.nWidth ~= 0 and self.tbFormula.nHeight ~= 0 and CountFreeRoomByWH(self.tbFormula.nWidth, self.tbFormula.nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("§Ó b¶o ®¶m tµi s¶n cña ®¹i hiÖp, xin h·y ®Ó trèng %d %dx%d hµnh trang", nFreeItemCellLimit, self.tbFormula.nWidth, self.tbFormula.nHeight))
		return 0
	end
	
	if self:CheckMaterial(tbMaterial, nComposeCount) ~= 1 then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>§¹i hiÖp mang nguyªn liÖu kh«ng ®ñ råi!<color>"
		Talk(1, "", szMsg)
		return 0;
	end
	
	local bSuccess = self:CanCompose(nLevel)
	local tbConsume = {}
	if bSuccess ~= 1 then
		tinsert(tbConsume, tbMaterial[2])
	else
		tbConsume = tbMaterial
	end
	--print("compose nLevel = " .. tostring(nLevel))
	if self:ConsumeMaterial(tbConsume, nComposeCount, self.szLogTitle) ~= 1 then
		Msg2Player("ChÕ t¹o thÊt b¹i, mÊt ®i mét sè nguyªn liÖu.")
		return 0;
	end
	
	if bSuccess == 1 then
		if type(tbProduct) == "table" then
			tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount)
		end
		
		if type(self.tbFormula.pProductFun) == "function" then
			self.tbFormula:pProductFun(nComposeCount)
		end
	else
		local szMsg = format("<color=red>Hîp thµnh thÊt b¹i, mÊt ®i")
		for i=1,getn(tbConsume) do
			szMsg = szMsg .. tbConsume[i].szName
		end
		szMsg = szMsg .. "<color>"
		Msg2Player(szMsg)
	end
	self:Log(nLevel, bSuccess)
	return bSuccess
end

function PhiPhongTangSao:Log(nLevel, bSuccess)
	if bSuccess == 0 then
		nLevel = nLevel + 10
	end
	tbLog:PlayerActionLog("PhiPhongTangSao", %tbLogAction[nLevel])
end

function PhiPhongTangSao:ComposeGiveUI()
	local szTitle = "T¨ng Sao Phi Phong"
	szContent = (format("%-15s %s\n", "VËt PhÈm", "Sè L­îng"))
	szContent = gsub(szContent, "<color=?%w*>", "")
	szContent = gsub(szContent, "%((%d+)/(%d+)%)", "%2")
	szContent = szContent..(format("%-15s %s\n", "Phi Phong","1"))
	szContent = szContent..(format("%-15s %s\n", "Tinh Ngäc","1500"))
	g_GiveItemUI(szTitle, szContent, {self.GiveUIOk, {self}}, nil, self.bAccessBindItem)
end

function PhiPhongTangSao:GiveUIOk(nCount)
	local nLevel = self:CheckLegal()
	--print("nLeve = " .. tonumber(nLevel))
	if nLevel > 0 then
		self:Compose(1, nLevel)
	else
		CreateNewSayEx("<color=red>§¹i HiÖp Mang Nguyªn LiÖu Kh«ng §ñ Råi!<color>", {{"KÕt Thóc"}})
	end
	return 
end

function PhiPhongTangSao:Register()
	local tbOpt = {}
	local szMsg = "<color=green>T¨ng Sao Phi Phong Cã X¸c XuÊt NhÊt §Þnh T¨ng Lªn 1 Sao ThÊt B¹i MÊt HÕt Nguyªn LiÖu Ng­¬i Cã Muèn Thö Kh«ng!<color>"

	%tbFormulaList.tbMaterial = {}
	local tbProduct = %tbFormulaList.tbProduct
	
	for i=1,getn(%tbMaterialA) do
		local tbMaterial = {}
		tinsert(tbMaterial, %tbMaterialA[i])
		tinsert(tbMaterial, %tbAdditive)
		tinsert(%tbFormulaList.tbMaterial, tbMaterial)
	end
	
	local p = PhiPhongTangSao:new(%tbFormulaList, "PhiPhongTangSao", INVENTORY_ROOM.room_giveitem)
	tinsert(tbOpt, {"Phi Phong T¨ng Sao", p.ComposeGiveUI, {p}})
	tinsert(tbOpt, {"Phi Phong §ét Ph¸", tbDotPhaPhiPhong.DotPhaPhiPhong, {tbDotPhaPhiPhong}})
	tinsert(tbOpt, {"Hñy Bá "})
	CreateNewSayEx(szMsg, tbOpt)
	--nItem2EquipRegId = pEventType:Reg("Thî rÌn","N©ng CÊp Phi Phong", CreateNewSayEx, {szMsg, tbOpt})
end

--PhiPhongTangSao:Register()