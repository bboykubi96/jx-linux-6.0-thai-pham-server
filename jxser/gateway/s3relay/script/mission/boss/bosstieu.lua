IncludeLib("TASKSYS");

TB_BIGBOSS = {

	{"Li�u Thanh Thanh", 523, 95, 1},
	{"Di�u Nh�", 513, 95, 2},
	{"Tr��ng T�ng Ch�nh", 511, 95, 4},

};

TB_POSITION = {

	{42,1678, 3109,"Thi�n T�m ��ng"},
	{42,1614, 3165,"Thi�n T�m ��ng"},
	{42,1558, 2984,"Thi�n T�m ��ng"},

	{91,1612, 2979,"M� cung K� Qu�n ��ng"},
	{91,1580, 2722,"M� cung K� Qu�n ��ng"},
	{91,1722, 2769,"M� cung K� Qu�n ��ng"},

	{6,1579, 3245,"T�a V�n ��ng"},
	{6,1661, 3250,"T�a V�n ��ng"},

	{5,1544, 3331,"Kinh Ho�ng ��ng"},
	{5,1540, 3439,"Kinh Ho�ng ��ng"},

	{4,1656, 3161,"Kim Quang ��ng"},
	{4,1579, 3116,"Kim Quang ��ng"},
	{4,1701, 3024,"Kim Quang ��ng"},

	{71,1646, 3055,"B�ch Th�y ��ng"},
	{71,1705, 3127,"B�ch Th�y ��ng"},
	{71,1607, 3153,"B�ch Th�y ��ng"},
	{71,1699, 3206,"B�ch Th�y ��ng"},
	{71,1597, 3251,"B�ch Th�y ��ng"},

	{73,1535, 3203,"Ph�c L�u ��ng"},
	{73,1505, 3084,"Ph�c L�u ��ng"},
	{73,1545, 2808,"Ph�c L�u ��ng"},
	{73,1509, 2994,"Ph�c L�u ��ng"},

	{23,1892, 3153,"Th�n Ti�n ��ng"},
	{23,1808, 3232,"Th�n Ti�n ��ng"},
	{23,1625, 3178,"Th�n Ti�n ��ng"},
	{23,1643, 3241,"Th�n Ti�n ��ng"},
	{23,1792, 3364,"Th�n Ti�n ��ng"},

	{22,1898, 3163,"B�ch V�n ��ng"},
	{22,1792, 3239,"B�ch V�n ��ng"},
	{22,1757, 3114,"B�ch V�n ��ng"},

	{94,1549, 3193,"Linh C�c ��ng"},
	{94,1675, 3202,"Linh C�c ��ng"},
	{94,1644, 3022,"Linh C�c ��ng"},

	{182,2196, 3500,"Nghi�t Long ��ng"},
	{182,1683, 3238,"Nghi�t Long ��ng"},
	{182,1934, 3152,"Nghi�t Long ��ng"},

	{180,1522, 3000,"Long Cung ��ng"},
	{180,1524, 3161,"Long Cung ��ng"},
	{180,1630, 3154,"Long Cung ��ng"},

	{194,1602, 3363,"Ng�c Hoa ��ng"},
	{194,1458, 3119,"Ng�c Hoa ��ng"},
	{194,1583, 2866,"Ng�c Hoa ��ng"},
};

if not tbAloneBoss then tbAloneBoss = {}; end

function tbAloneBoss:RandomPosition()
	local count = getn(TB_POSITION);
	local num = 0;
	while 1 do
		local posran = random(1,count);
		if not self.SelectPosition[posran] then
			num = num + 1;
			self.SelectPosition[posran] = {TB_POSITION[posran][1],TB_POSITION[posran][2],TB_POSITION[posran][3],TB_POSITION[posran][4]};
			if (num == 3) then
				break
			end
		end
	end
return self.SelectPosition end

function tbAloneBoss:RandomBoss()
	local count = getn(TB_BIGBOSS);
	local num = 0;
	while 1 do
		local bossran = random(1,count);
		if not self.SelectBoss[bossran] then
			num = num + 1;
			self.SelectBoss[bossran] = {TB_BIGBOSS[bossran][1],TB_BIGBOSS[bossran][2],TB_BIGBOSS[bossran][3],TB_BIGBOSS[bossran][4]};
			if (num == 3) then
				break
			end
		end
	end
return self.SelectBoss end

function tbAloneBoss:GetBoss()
	local boss = self:RandomBoss()
	local num = 0;
	for x, y in boss do
		num = num + 1;
		self.DataBoss[num] = y;
		if (num == 3) then
			break
		end
	end
return self.DataBoss end

function tbAloneBoss:GetPosition()
	local position = self:RandomPosition()
	local num = 0;
	for x, y in position do
		num = num + 1;
		self.DataPosition[num] = y;
	end
return self.DataPosition end

function tbAloneBoss:SubWorldID2Idx(id)
	return SubWorldID2Idx(id)
end

function tbAloneBoss:Init()
	self.SelectPosition = {}
	self.SelectBoss = {}
	self.DataPosition = {}
	self.DataBoss = {}
end

tbAloneBoss:Init()