-- 功能：紫色装备系统 - 使用蓝/白首饰合成玄晶矿石
-- Fanghao Wu 2005.1.15

Include( "\\script\\item\\compound\\compound_header.lua" );

-- [合成]费用
COMPOUND_COST = 1000;


-- 获取[合成]操作参数（用于传递给ITEM_CalcItemValue计算物品价值量）
function getCompoundParam()
	return "XUANJING_COMPOUND";
end

-- 校验原料是否符合[合成]规则（同时存储一些原料数据）
function verifySrcItems( arynNecessaryItemIdx, arynAlternativeItemIdx )
	return RESULT_SUCCEED;
end

-- 生成目标物品信息
function genDesItemsInfo( arynNecessaryItemIdx )
	local aryDesItemInfo = {};
	local nLatestItemVer = ITEM_GetLatestItemVersion();
	local rannnn=random(1,10)
	if rannnn==1 then
		for i = 1, 10 do
			aryDesItemInfo[i] = { nLatestItemVer, 0, 0, 6, 1, 147,3, 0, 0, nil, nil, getCompoundParam() };
		end
	elseif rannnn==2 or rannnn==3 then
		for i = 1, 10 do
			aryDesItemInfo[i] = { nLatestItemVer, 0, 0, 6, 1, 147,2, 0, 0, nil, nil, getCompoundParam() };
		end
	else
		for i = 1, 10 do
			aryDesItemInfo[i] = { nLatestItemVer, 0, 0, 6, 1, 147,1, 0, 0, nil, nil, getCompoundParam() };
		end
	end
	return aryDesItemInfo;
end

-- 完成选择目标物品、删除原料等收尾操作
function finalCompound( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo, arydDesItemVal )
	return defFinalCompound( arynNecessaryItemIdx, arynAlternativeItemIdx, nSrcItemValSum, aryDesItemInfo, arydDesItemVal );
end