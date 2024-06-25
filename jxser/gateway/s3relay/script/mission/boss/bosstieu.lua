IncludeLib("TASKSYS");

TB_BIGBOSS = {

	{"LiÔu Thanh Thanh", 523, 95, 1},
	{"DiÖu Nh­", 513, 95, 2},
	{"Tr­¬ng T«ng ChÝnh", 511, 95, 4},

};

TB_POSITION = {

	{42,1678, 3109,"Thiªn T©m §éng"},
	{42,1614, 3165,"Thiªn T©m §éng"},
	{42,1558, 2984,"Thiªn T©m §éng"},

	{91,1612, 2979,"Mª cung Kª Qu¸n §éng"},
	{91,1580, 2722,"Mª cung Kª Qu¸n §éng"},
	{91,1722, 2769,"Mª cung Kª Qu¸n §éng"},

	{6,1579, 3245,"Táa V©n §éng"},
	{6,1661, 3250,"Táa V©n §éng"},

	{5,1544, 3331,"Kinh Hoµng §éng"},
	{5,1540, 3439,"Kinh Hoµng §éng"},

	{4,1656, 3161,"Kim Quang §éng"},
	{4,1579, 3116,"Kim Quang §éng"},
	{4,1701, 3024,"Kim Quang §éng"},

	{71,1646, 3055,"B¹ch Thñy §éng"},
	{71,1705, 3127,"B¹ch Thñy §éng"},
	{71,1607, 3153,"B¹ch Thñy §éng"},
	{71,1699, 3206,"B¹ch Thñy §éng"},
	{71,1597, 3251,"B¹ch Thñy §éng"},

	{73,1535, 3203,"Phôc L­u §éng"},
	{73,1505, 3084,"Phôc L­u §éng"},
	{73,1545, 2808,"Phôc L­u §éng"},
	{73,1509, 2994,"Phôc L­u §éng"},

	{23,1892, 3153,"ThÇn Tiªn §éng"},
	{23,1808, 3232,"ThÇn Tiªn §éng"},
	{23,1625, 3178,"ThÇn Tiªn §éng"},
	{23,1643, 3241,"ThÇn Tiªn §éng"},
	{23,1792, 3364,"ThÇn Tiªn §éng"},

	{22,1898, 3163,"B¹ch V©n §éng"},
	{22,1792, 3239,"B¹ch V©n §éng"},
	{22,1757, 3114,"B¹ch V©n §éng"},

	{94,1549, 3193,"Linh Cèc §éng"},
	{94,1675, 3202,"Linh Cèc §éng"},
	{94,1644, 3022,"Linh Cèc §éng"},

	{182,2196, 3500,"NghiÖt Long §éng"},
	{182,1683, 3238,"NghiÖt Long §éng"},
	{182,1934, 3152,"NghiÖt Long §éng"},

	{180,1522, 3000,"Long Cung §éng"},
	{180,1524, 3161,"Long Cung §éng"},
	{180,1630, 3154,"Long Cung §éng"},

	{194,1602, 3363,"Ngäc Hoa §éng"},
	{194,1458, 3119,"Ngäc Hoa §éng"},
	{194,1583, 2866,"Ngäc Hoa §éng"},
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