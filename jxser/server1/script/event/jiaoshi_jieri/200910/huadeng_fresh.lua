Include("\\script\\event\\jiaoshi_jieri\\200910\\head.lua")

tbJiaoShi2009 = {}

tbJiaoShi2009.tbHuaDeng =
{
	{
		nMapId = 37,
		tbPos = 
		{
			{1595, 3250},
			{1590, 3244},
			{1582, 3236},
			{1574, 3227},
			{1567, 3232},
			{1573, 3240},
			{1580, 3251},
			{1584, 3259},
			{1590, 3274},
			{1581, 3269},
			{1574, 3265},
			{1570, 3255},
			{1563, 3245},
			{1551, 3241},
			{1543, 3251},
			{1551, 3258},
			{1562, 3263},
			{1572, 3276},
			{1567, 3288},
			{1581, 3291},
			{1590, 3290},
			{1582, 3307},
			{1573, 3318},
			{1565, 3323},
			{1579, 3330},
			{1582, 3341},
			{1585, 3355},
			{1594, 3376},
			{1596, 3393},
			{1604, 3417},
			{1589, 3429},
			{1610, 3441},
			{1623, 3425},
			{1537, 3258},
			{1522, 3268},
			{1528, 3281},
			{1530, 3294},
			{1514, 3285},
			{1531, 3316},
			{1535, 3338},
			{1498, 3320},
			{1470, 3320},
			{1449, 3331},
			{1458, 3349},
			{1449, 3363},
			{1427, 3333},
			{1410, 3341},
			{1425, 3308},
			{1464, 3385},
			{1475, 3423},
			{1476, 3449},
			{1464, 3445},		
		}
	},
}

function tbJiaoShi2009:AddHuaDeng()
	for i=1, getn(self.tbHuaDeng) do
		ClearMapNpcWithName(self.tbHuaDeng[i].nMapId, "Hoa ®¨ng")
	end
	
	for i=1, getn(self.tbHuaDeng) do
		SId = SubWorldID2Idx(self.tbHuaDeng[i].nMapId);
		local nPos = getn(self.tbHuaDeng[i].tbPos)
		for j=1,nPos do
		local nNpcIdx = AddNpc(1077, 1, SId, self.tbHuaDeng[i].tbPos[j][1] * 32, self.tbHuaDeng[i].tbPos[j][2] * 32, 1, "Hoa ®¨ng");
		if nNpcIdx > 0 then
				SetNpcScript(nNpcIdx, "\\script\\event\\jiaoshi_jieri\\200910\\huadeng.lua")
		end
		end
		-- for j=1,200 do
			-- local nIdx = random(1,nPos - j + 1)
			-- local nNpcIdx = AddNpc(1077, 1, SId, self.tbHuaDeng[i].tbPos[nIdx][1] * 32, self.tbHuaDeng[i].tbPos[nIdx][2] * 32, 1, "Hoa ®¨ng");
			-- if nNpcIdx > 0 then
				-- SetNpcScript(nNpcIdx, "\\script\\event\\jiaoshi_jieri\\200910\\huadeng.lua")
			-- end
			-- self.tbHuaDeng[i].tbPos[nIdx], self.tbHuaDeng[i].tbPos[nPos - j + 1] = self.tbHuaDeng[i].tbPos[nPos - j + 1], self.tbHuaDeng[i].tbPos[nIdx]
		-- end
	end
end