Include("\\script\\global\\pgaming\\tieubangchien\\lib\\tieubangchien_inc_memory.lua")

_MEMORY:SET("m_TieuBangChien", "\\script\\global\\pgaming\\tieubangchien\\inc.lua")

-- m_TieuBangChien.Debug = 1
m_TieuBangChien.MapId = 1008

m_TieuBangChien.Fee = {
	-- Td_DangKy = 50,
	Td_DangKy = 0,
}

m_TieuBangChien.m = {
	ID = 70,
	TimerID = 119,
	Timer_Interval = 1 * 60 * 18,
	PreparingTimeTemp = 0,
	TimeOpenMission = 60,
	CountComplete = 2,
	AwardExp_MASS = 5000000,
	AwardExp_RECEIVER = 10000000,
	StateWithNotMap = 0,
	StateWithNotMap_Pos = {c = 0, a = {}},
	
	i_State = 1,
	i_PreparingTime = 2,
	i_OnTimerTimes = 3,
	i_OnTimerNextTiepTe = 4,
	i_NextCamp = 5,
	i_TongCountID = 6,
	i_NextPlayer = 7,
}

m_TieuBangChien.ReviveRegion = {
	[1] = {1577, 3258},
	[2] = {1531, 2950},
	[3] = {1930, 2838},
	[4] = {1760, 3267},
}

m_TieuBangChien.t = {
	NpcPosID = 1,
	TieuXa_Arrive = 2,
	TieuXa_Preparing = 3,
	TieuXa_TongID = 4,
	NpcSupport = 5,
	TieuXa_Complete = 6,
	ChienLoiPham = 7,
}

m_TieuBangChien.Time = {
	TieuXa_Preparing = 30,
	TiepTe = 3,
	SortRank = 5,
}

m_TieuBangChien.Npc = {
	TieuXa = {m = 1903,},
	CamCo = {m = 1904,},
	TiepNhanTieu_Ngua = {m = 555,},
	TiepNhanTieu_Npc = {m = 625,},
	TiepNhanTieu_CamCo = {m = 627,},
	TiepNhanTieu_CotCo = {m = 630,},
	TiepNhanTieu_Nha = {m = 1165,},
	SatThu = {m = 1905,},
	GiaoTieu_Nha = {m = 1187,},
	BiCuop_XeTieu = {m = 1185,},
	BiCuop_RuongDo = {m = 1810,},
	TiepTe = {m = 1273,},
	TiepTe2 = {m = 181,},
	DaoKiem = {m = {1857,1858,1859},},
	Mask = {
		{1869, "S�t th� v� danh (��)"},
		{1871, "S�t th� v� danh (xanh bi�n)"},
		{1872, "S�t th� v� danh (b�c)"},
		{1873, "��i �c nh�n"},
		{1874, "��i c�t t� h�n"},
		{1875, "��i qu�n s�"},
		{1900, "Kim ��i qu�n"},
		{636, "T�ng ��i qu�n"},
		{643, "��c ch�ng ti�u xa"},
		{1808, "��i qu�n l��ng s�n"},
	}
}

m_TieuBangChien.Add = {
	TiepTe = {
		[1] = {
			i = m_TieuBangChien.Npc.TiepTe2.m,
			n = "Ti�u Qu�n Nhu",
			s = "\\script\\global\\pgaming\\tieubangchien\\n_tieu_quan_nhu.lua",
			p = {{1684, 3232},{1667, 3218},{1651, 3189},{1656, 3158},{1690, 3150},{1716, 3175},{1639, 3086},{1658, 3103},{1736, 3134},{1761, 3142},{1721, 3199},{1629, 3132},{1604, 3101},{1587, 3089},{1615, 3056},{1627, 2996},{1654, 2980},{1656, 3016},{1683, 3084},{1724, 3118},{1732, 3032},{1716, 2986},{1695, 2977},{1728, 2950},{1697, 2921},{1674, 2978},{1747, 2995},{1769, 3017},{1766, 2995},{1786, 2958},{1812, 2934},{1834, 2938},{1833, 2969},{1862, 2968},{1879, 2936},{1869, 2896},{1887, 2999},{1876, 3015},{1908, 3012},{1869, 3050},{1834, 3102},{1854, 3079},{1868, 3103},{1831, 3147},{1824, 3126},{1811, 3129},{1810, 3111},{1790, 3106},{1777, 3093},{1812, 3060},{1795, 3065},},
		},
		[2] = {
			i = m_TieuBangChien.Npc.TiepTe.m,
			n = "B� D��c",
			s = "\\script\\global\\pgaming\\tieubangchien\\n_bo_duoc.lua",
			p = {{1684, 3232},{1667, 3218},{1651, 3189},{1656, 3158},{1690, 3150},{1716, 3175},{1639, 3086},{1658, 3103},{1736, 3134},{1761, 3142},{1721, 3199},{1629, 3132},{1604, 3101},{1587, 3089},{1615, 3056},{1627, 2996},{1654, 2980},{1656, 3016},{1683, 3084},{1724, 3118},{1732, 3032},{1716, 2986},{1695, 2977},{1728, 2950},{1697, 2921},{1674, 2978},{1747, 2995},{1769, 3017},{1766, 2995},{1786, 2958},{1812, 2934},{1834, 2938},{1833, 2969},{1862, 2968},{1879, 2936},{1869, 2896},{1887, 2999},{1876, 3015},{1908, 3012},{1869, 3050},{1834, 3102},{1854, 3079},{1868, 3103},{1831, 3147},{1824, 3126},{1811, 3129},{1810, 3111},{1790, 3106},{1777, 3093},{1812, 3060},{1795, 3065},},
		},
	},
	Npc = {
		[1] = {
			i = m_TieuBangChien.Npc.TiepNhanTieu_Nha.m,
			p = {{1579,3235}, {1731,3275}, {1558,2936}, {1909,2843}},
		},
		[2] = {
			i = m_TieuBangChien.Npc.TiepNhanTieu_Npc.m,
			n = "Ti�p Nh�n Ti�u Xa",
			s = "\\script\\global\\pgaming\\tieubangchien\\n_tiep_nhan_tieu_xa.lua",
			p = {{1583,3240, 1}, {1562,2941, 2}, {1913,2848, 3}, {1740,3280, 4}},
		},
		[3] = {
			i = m_TieuBangChien.Npc.TiepNhanTieu_Ngua.m,
			p = {{1915,2838}, {1572,3233}, {1565,2931}, {1735,3279}},
		},
		[4] = {
			i = m_TieuBangChien.Npc.TiepNhanTieu_CamCo.m,
			p = {{1919,2840}, {1585,3230}, {1555,2940}, {1728,3282}},
		},
		[5] = {
			i = m_TieuBangChien.Npc.TiepNhanTieu_CotCo.m,
			p = {{1918,2835}, {1574,3238}, {1557,2925}, {1737,3273}},
		},
		[6] = {
			i = m_TieuBangChien.Npc.DaoKiem.m[1],
			p = {{1917,2836}, {1577,3242}, {1552,2938}, {1735,3285}},
		},
		[7] = {
			i = m_TieuBangChien.Npc.DaoKiem.m[2],
			p = {{1919,2836}, {1573,3241}, {1554,2944}, {1734,3282}},
		},
		[8] = {
			i = m_TieuBangChien.Npc.DaoKiem.m[2],
			p = {{1917,2841}, {1570,3236}, {1557,2942}, {1731,3286}},
		},
		[9] = {
			i = m_TieuBangChien.Npc.BiCuop_XeTieu.m,
			p = {{1915,2833}, {1574,3230}, {1553,2928}, {1726,3269}},
		},
		[10] = {
			i = m_TieuBangChien.Npc.GiaoTieu_Nha.m,
			p = {{1789,3044},},
		},
	},
	SatThu = {
		[1] = {
			i = m_TieuBangChien.Npc.SatThu.m,
			n = "V� Danh S�t Th�",
			p = {{1633, 3175},{1695, 3205},{1712, 3223},{1602, 2996},{1614, 3012},{1865, 2919},{1856, 2962},{1777, 3090},{1788, 3101},{1746, 3048},{1722, 3084},{1715, 3027},},
		},
	},
}

m_TieuBangChien.PosTieuXa = {
	[1] = {
		{1569 * 32, 3243 * 32},
		{{1581 * 32, 3253 * 32},{1581 * 32, 3247 * 32},{1588 * 32, 3258 * 32},{1587 * 32, 3247 * 32},{1577 * 32, 3250 * 32}},
		{1598 * 32, 3235 * 32},{1611 * 32, 3218 * 32}, {1724 * 32, 3101 * 32}, {1735 * 32, 3091 * 32}, {1747 * 32, 3078 * 32}, {1761 * 32, 3077 * 32}, {1772 * 32, 3067 * 32}, {1773 * 32, 3052 * 32}, {1777 * 32, 3047 * 32},
	},
	[2] = {
		{1568 * 32, 2941 * 32},
		{{1561 * 32, 2962 * 32},{1565 * 32, 2954 * 32},{1571 * 32, 2953 * 32},{1559 * 32, 2958 * 32},{1564 * 32, 2953 * 32}},
		{1569 * 32, 2977 * 32},{1587 * 32, 2996 * 32}, {1633 * 32, 3042 * 32}, {1644 * 32, 3046 * 32}, {1680 * 32, 3008 * 32}, {1688 * 32, 3007 * 32}, {1738 * 32, 3059 * 32}, {1761 * 32, 3052 * 32}, {1767 * 32, 3054 * 32}, {1775 * 32, 3047 * 32},
	},
	[3] = {
		{1916 * 32, 2851 * 32},
		{{1920 * 32, 2854 * 32},{1910 * 32, 2851 * 32},{1907 * 32, 2861 * 32},{1915 * 32, 2854 * 32}},
		{1905 * 32, 2880 * 32},{1897 * 32, 2894 * 32}, {1885 * 32, 2910 * 32}, {1841 * 32, 2955 * 32}, {1843 * 32, 2967 * 32}, {1885 * 32, 3010 * 32}, {1884 * 32, 3024 * 32}, {1797 * 32, 3112 * 32}, {1788 * 32, 3111 * 32}, {1764 * 32, 3087 * 32}, {1772 * 32, 3067 * 32}, {1773 * 32, 3055 * 32}, {1778 * 32, 3050 * 32},
	},
	[4] = {
		{1744 * 32, 3273 * 32},
		{{1741 * 32, 3270 * 32}, {1742 * 32, 3265 * 32}, {1739 *32, 3273 * 32}, {1739 * 32, 3264 * 32}, {1743 * 32, 3265 * 32}, {1736 * 32, 3270 * 32}, {1739 * 32, 3274 * 32}},
		{1723 * 32, 3250 * 32}, {1698 * 32, 3222 * 32}, {1699 * 32, 3209 * 32}, {1746 * 32, 3165 * 32}, {1743 * 32, 3153 * 32}, {1712 * 32, 3121 * 32}, {1736 * 32, 3090 * 32}, {1751 * 32, 3063 * 32}, {1761 * 32, 3054 * 32}, {1771 * 32, 3055 * 32}, {1777 * 32, 3048 * 32},
	},
}

 m_TieuBangChien.Trap = {
	{
		s = "\\script\\global\\pgaming\\tieubangchien\\trap_outside_1.lua",
		p = {{1502, 3292},{1579, 3332},},
	},
	{
		s = "\\script\\global\\pgaming\\tieubangchien\\trap_outside_2.lua",
		p = {{1562, 2868},{1492, 2896},},
	},
	{
		s = "\\script\\global\\pgaming\\tieubangchien\\trap_outside_3.lua",
		p = {{1945, 2791},{1953, 2818},},
	},
	{
		s = "\\script\\global\\pgaming\\tieubangchien\\trap_outside_4.lua",
		p = {{1762, 3324},{1771, 3333},},
	},
	{
		s = "\\script\\global\\pgaming\\tieubangchien\\trap_inside_1.lua",
		b = 7,
		p = {{1615, 3213}},
	},
	{
		s = "\\script\\global\\pgaming\\tieubangchien\\trap_inside_2.lua",
		b = 7,
		p = {{1576, 2985}},
	},
	{
		s = "\\script\\global\\pgaming\\tieubangchien\\trap_inside_3.lua",
		b = 7,
		p = {{1893, 2898}},
	},
	{
		s = "\\script\\global\\pgaming\\tieubangchien\\trap_inside_4.lua",
		b = 7,
		p = {{1721, 3242}},
	},
}

m_TieuBangChien.i = {
	Forbid = {
		{	"C�ng T�c ho�n", {6, 1, 218, -1, 0, 0}, 511	},
		{	"B�o T�c ho�n", {6, 1, 219, -1, 0, 0}, 512	},
		{	"Ph� Ph�ng ho�n", {6, 1, 220, -1, 0, 0}, 513	},
		{	"��c Ph�ng ho�n", {6, 1, 221, -1, 0, 0}, 514	},
		{	"B�ng Ph�ng ho�n", {6, 1, 222, -1, 0, 0}, 515	},
		{	"H�a Ph�ng ho�n", {6, 1, 223, -1, 0, 0}, 516	},
		{	"L�i Ph�ng ho�n", {6, 1, 224, -1, 0, 0}, 517	},
		{	"Gi�m Th��ng ho�n", {6, 1, 225, -1, 0, 0}, 518	},
		{	"Gi�m H�n ho�n", {6, 1, 226, -1, 0, 0}, 519	},
		{	"Gi�m ��c ho�n", {6, 1, 227, -1, 0, 0}, 520	},
		{	"Gi�m B�ng ho�n", {6, 1, 228, -1, 0, 0}, 521	},
		{	"Ph� C�ng ho�n", {6, 1, 229, -1, 0, 0}, 522	},
		{	"��c C�ng ho�n", {6, 1, 230, -1, 0, 0}, 523	},
		{	"B�ng C�ng ho�n", {6, 1, 231, -1, 0, 0}, 524	},
		{	"H�a C�ng ho�n", {6, 1, 232, -1, 0, 0}, 525	},
		{	"L�i C�ng ho�n", {6, 1, 233, -1, 0, 0}, 526	},
		{	"Tr��ng M�nh ho�n", {6, 1, 234, -1, 0, 0}, 527	},
		{	"Tr��ng N�i ho�n", {6, 1, 235, -1, 0, 0}, 528	},
		{	"Y�n H�ng �an", {6, 1, 115, -1, 0, 0}, 450	},
		{	"X� Lam �an", {6, 1, 116, -1, 0, 0}, 451	},
		{	"N�i Ph� ho�n", {6, 1, 117, -1, 0, 0}, 453	},
		{	"N�i ��c ho�n", {6, 1, 118, -1, 0, 0}, 454	},
		{	"N�i B�ng ho�n", {6, 1, 119, -1, 0, 0}, 455	},
		{	"N�i H�a ho�n", {6, 1, 120, -1, 0, 0}, 456	},
		{	"N�i L�i ho�n", {6, 1, 121, -1, 0, 0}, 457	},
		{	"Tr��ng M�nh ho�n", {6, 0, 1, -1, 0, 0}, 256	},
		{	"Gia B�o ho�n", {6, 0, 2, -1, 0, 0}, 257	},
		{	"��i L�c ho�n", {6, 0, 3, -1, 0, 0}, 258	},
		{	"Cao Thi�m ho�n", {6, 0, 4, -1, 0, 0}, 259	},
		{	"Cao Trung ho�n", {6, 0, 5, -1, 0, 0}, 260	},
		{	"Phi T�c ho�n", {6, 0, 6, -1, 0, 0}, 261	},
		{	"B�ng Ph�ng ho�n", {6, 0, 7, -1, 0, 0}, 262	},
		{	"L�i Ph�ng ho�n", {6, 0, 8, -1, 0, 0}, 263	},
		{	"H�a Ph�ng ho�n", {6, 0, 9, -1, 0, 0}, 264	},
		{	"��c Ph�ng ho�n", {6, 0, 10, -1, 0, 0}, 265	},
		{	"B�nh ch�ng H�t d� ", {6, 0, 60, -1, 0, 0}, 401	},
		{	"B�nh ch�ng Th�t heo", {6, 0, 61, -1, 0, 0}, 402	},
		{	"B�nh ch�ng Th�t b� ", {6, 0, 62, -1, 0, 0}, 403	},
		{	"B�ch Qu� L� ", {6, 1, 73, -1, 0, 0}, 442	},
		{	"C�t t��ng h�ng bao", {6, 1, 19, -1, 0, 0}, 442	},
		{	"Ho�ng Kim B�o r��ng",	{6,	1,	69,	-1,	0,	0},	442},
		{	"T�n S� M�c y�u b�i",	{6,	1,	885,	-1,	0	,0},	542},
		{	"T�n S� ��ng y�u b�i",	{6,	1,	886,	-1,	0	,0},	543},
		{	"T�n S� Ng�n y�u b�i",	{6,	1,	887,	-1,	0	,0},	544},
		{	"T�n S� Kim y�u b�i",	{6,	1,	888,	-1,	0	,0},	545},
		{	"Ng� T� T�n S� y�u b�i",	{6,	1,	889,	-1,	0	,0},	546},
		{	"Bao D��c ho�n ",	{6,	1,	910,	-1,	0	,0},	635},
		{	"H�p l� v�t H�ng bao th�n b�",	{6,	1,	1074,	-1,	0	,0},	635},
		{	"H�p l� v�t [qu� Huy Ho�ng]",	{6,	1,	1075,	-1,	0	,0},	635},
		{	"H�nh n�m",		{6,	1,	1389,	-1,	0,	0},	635	},

		{	"C�m nang thay ��i tr�i ��t", {6, 1, 1781, -1, 0, 0},635},	
		{	"M�c Ch� B�o H�p", {6, 1, 2318, -1, 0, 0},635},	
		{	"��ng Ch� B�o H�p", {6, 1, 2319, -1, 0, 0},635},	
		{	"Ng�n Ch� B�o H�p", {6, 1, 2320, -1, 0, 0},635},	
		{	"Ho�ng Kim B�o r��ng", {6, 1, 2321, -1, 0, 0},635},	
		{	"B�o r��ng B�ch Kim", {6, 1, 2322, -1, 0, 0},635},	
		{	"S�t Th� B� B�o", {6, 1, 2347, -1, 0, 0},635},	
		{	"B�o r��ng th�n b� c�a D� T�u", {6, 1, 2374, -1, 0, 0},635},	
		{	"Ch� T�n B� B�o", {6, 1, 2375, -1, 0, 0},635},	
		{	"T�i B�o Th�y T�c", {6, 1, 2376, -1, 0, 0},635},	
		{	"H�i thi�n t�i t�o l� bao", {6, 1, 2527, -1, 0, 0},635},
		{	"Phi t�c ho�n l� bao", {6, 1, 2520, -1, 0, 0},635},
		{	"��i l�c ho�n l� bao", {6, 1, 2517, -1, 0, 0},635},

		{	"C�ng Th�nh Chi�n L� Bao", {6, 1, 2377, -1, 0, 0},635},
		{	"��c ph�ng ho�n l� bao", {6, 1, 2524, -1, 0, 0},635},
		{	"Tr��ng m�nh ho�n l� bao", {6, 1, 2515, -1, 0, 0},635},
		{	"Gia t�c ho�n l� bao", {6, 1, 2516, -1, 0, 0},635},
		{	"Cao thi�m ho�n l� bao", {6, 1, 2518, -1, 0, 0},635},
		{	"Cao trung ho�n l� bao", {6, 1, 2519, -1, 0, 0},635},
		{	"Phi t�c ho�n l� bao", {6, 1, 2520, -1, 0, 0},635},
		{	"B�ng ph�ng ho�n l� bao", {6, 1, 2521, -1, 0, 0},635},
		{	"L�i ph�ng ho�n l� bao", {6, 1, 2522, -1, 0, 0},635},
		{	"H�a ph�ng ho�n l� bao", {6, 1, 2523, -1, 0, 0},635},
		{	"��c ph�ng ho�n l� bao", {6, 1, 2524, -1, 0, 0},635},
		{	"L�nh b�i vi s�n ��o l� bao", {6, 1, 2525, -1, 0, 0},635},
		{	"Ho�n H�n ��n L� Bao", {6, 1, 2830, -1, 0, 0},635},
		{	"Ti�u Di�u T�n", {6, 1, 2831, -1, 0, 0},635},
		{	"Ho�n H�n ��n", {6, 1, 2837, -1, 0, 0},635},
	}
}

function m_TieuBangChien:f_Debug(_1)
	if type(_1) == "table" then
		for _k, _v in _1 do
			if type(_v) == "table" then
				self:f_Debug(_v)
			else
				print(_k.." = ".._v)
			end
		end
	else
		print(_1)
	end
end