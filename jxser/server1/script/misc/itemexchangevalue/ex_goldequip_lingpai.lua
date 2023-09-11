-- ====================== 文件信息 ======================

-- 剑侠情缘网㈢版越南收费版 - 兑换孝装备令牌（紫蟒等）
-- 文件名　：ex_goldequip_lingpai.lua
-- 创建者　：子非魚
-- 创建时间：2010-06-22 11:02:54

-- ======================================================


IncludeLib("ITEM")
Include("\\script\\misc\\itemexchangevalue\\ex_goldequip_head.lua")	-- 兑换孝装备令牌（紫蟒等）
Include( "\\script\\task\\system\\task_string.lua" );
Include("\\script\\lib\\log.lua");

function exchange_lingpai2goldequip()
	local aryDescribe =
	{
		"<dec><npc>Ngi mu鑞 i trang b� n祇?",
		format("Trang b� Thanh C﹗ /#take_xp_equip_1(1, %d)", 905),
		format("Trang b� V﹏ L閏/#take_xp_equip_1(2, %d)", 1135),
		format("Trang b� Thng Lang/#take_xp_equip_1(3, %d)", 1365),
		format("Trang b� Huy襫 Vi猲/#take_xp_equip_1(4, %d)", 1595),
		format("Trang b� T� M穘g/#take_xp_equip_1(5, %d)", 1825),
		format("Trang b� Kim � /#take_xp_equip_1(6, %d)", 2055),
		format("Trang b� B筩h H�/#take_xp_equip_1(7, %d)", 2285),
		format("Trang bi X辌h L﹏/#take_xp_equip_1(8, %d)", 2515),
		--format("Trang b� Ng� д/#take_xp_equip_91(9, %d)", 1),
		--format("Trang b� M� H�/#take_xp_equip_101(10, %d)", 194),
		format("Trang b� Vi猰 д/#take_xp_equip_111(11, %d)", 422),
		"Kh玭g i n鱝./no",
	};
	
	CreateTaskSay(aryDescribe);
end

----------------------------孝加入五黄 ㈨虎 炎黄---------------------------------
function take_xp_equip_91(n_g, n_d)
	
	if (CalcItemCount(3, tbLingpai[n_g].tbProp[1],tbLingpai[n_g].tbProp[2],tbLingpai[n_g].tbProp[3],-1) <= 0) then
		Talk(1, "", "H譶h nh� i hi謕 qu猲 mang l謓h b礽 th� ph秈.")
		return
	end
	
	CreateTaskSay({"<dec><npc>Чi hi謕 mu鑞 i l蕐 h� ph竔 trang b� n祇:", 
						format("Thi誹 L﹎ quy襫/#take_xp_equip_92(%d,%d, 1)", n_g, n_d),
						format("Thi誹 L﹎ c玭/#take_xp_equip_92(%d,%d, 2)", n_g, n_d),
						format("Thi誹 L﹎ 產o/#take_xp_equip_92(%d,%d, 3)", n_g, n_d),
						format("Thi猲 Vng ch飝/#take_xp_equip_92(%d,%d, 4)", n_g, n_d),
						format("Thi猲 Vng thng/#take_xp_equip_92(%d,%d, 5)", n_g, n_d),
						format("Thi猲 Vng 產o/#take_xp_equip_92(%d,%d, 6)", n_g, n_d),
						format("Nga Mi ki誱/#take_xp_equip_92(%d,%d, 7)", n_g, n_d),
						format("Nga Mi chng/#take_xp_equip_92(%d,%d, 8)", n_g, n_d),
						format("Nga Mi ph� tr� /#take_xp_equip_92(%d,%d, 9)", n_g, n_d),
						format("Th髖 Y猲 產o/#take_xp_equip_92(%d,%d, 10)", n_g, n_d),
						format("Th髖 Y猲 ki誱/#take_xp_equip_92(%d,%d, 11)", n_g, n_d),
						format("Ng� чc chng/#take_xp_equip_92(%d,%d, 12)", n_g, n_d),
						format("Trang sau.../#take_xp_equip_911(%d,%d)", n_g, n_d),
						"Tho竧/no"});
end

function take_xp_equip_911(n_g, n_d)
	CreateTaskSay({"<dec><npc>Чi hi謕 mu鑞 i l蕐 h� ph竔 trang b� n祇:", 
						format("Ng� чc 產o/#take_xp_equip_92(%d,%d, 13)", n_g, n_d),
						format("Ng� чc b颽/#take_xp_equip_92(%d,%d, 14)", n_g, n_d),
						format("Л阯g M玭 phi 產o/#take_xp_equip_92(%d,%d, 15)", n_g, n_d),
						format("Л阯g M玭 n� /#take_xp_equip_92(%d,%d, 16)", n_g, n_d),
						format("Л阯g M玭 phi ti猽/#take_xp_equip_92(%d,%d, 17)", n_g, n_d),
						format("Л阯g M玭 b蓎/#take_xp_equip_92(%d,%d, 18)", n_g, n_d),
						format("C竔 Bang chng/#take_xp_equip_92(%d,%d, 19)", n_g, n_d),
						format("C竔 Bang b鎛g/#take_xp_equip_92(%d,%d, 20)", n_g, n_d),
						format("Chi課 Nh蒼/#take_xp_equip_92(%d,%d, 21)", n_g, n_d),
						format("Thi猲 Nh蒼 b颽/#take_xp_equip_92(%d,%d, 22)", n_g, n_d),
						format("Ma Nh蒼/#take_xp_equip_92(%d,%d, 23)", n_g, n_d),
						format("Trang sau.../#take_xp_equip_912(%d,%d)", n_g, n_d),
						"Tho竧/no"});
end

function take_xp_equip_912(n_g, n_d)
	CreateTaskSay({"<dec><npc>Чi hi謕 mu鑞 i l蕐 h� ph竔 trang b� n祇:", 
						format("V� ng chng/#take_xp_equip_92(%d,%d, 24)", n_g, n_d),
						format("V� ng ki誱/#take_xp_equip_92(%d,%d, 25)", n_g, n_d),
						format("C玭 L玭 產o/#take_xp_equip_92(%d,%d, 26)", n_g, n_d),
						format("C玭 L玭 ki誱/#take_xp_equip_92(%d,%d, 27)", n_g, n_d),
						format("C玭 L玭 b颽/#take_xp_equip_92(%d,%d, 28)", n_g, n_d),
						format("Tr� v�.../#take_xp_equip_91(%d,%d)", n_g, n_d),
						"Tho竧/no"});
end

function take_xp_equip_92(n_g, n_d, n_p)
	local n_count = 5;
	
--	if (n_g == 5) then		
--		n_count = 5;
--	end
	
	local n_s =(n_p - 1)*n_count + 1;
	
	local aryDescribe = {
		"<dec><npc>Чi hi謕 mu鑞 i trang b� m玭 ph竔 n祇:",
	};
	for i = n_s, n_s+n_count-1 do
		tinsert(aryDescribe, tbGoldEquip_Lingpai[n_g][i][1]..format("/#take_xp_equip_3(%d, %d, %d, %d)", n_g, n_d, n_p,i));
	end
	
	tinsert(aryDescribe, "Ch� m閠 ch髏./no");
	CreateTaskSay(aryDescribe);
end

-----------㈨虎

function take_xp_equip_101(n_g, n_d)
	
	if (CalcItemCount(3, tbLingpai[n_g].tbProp[1],tbLingpai[n_g].tbProp[2],tbLingpai[n_g].tbProp[3],-1) <= 0) then
		Talk(1, "", "H譶h nh� i hi謕 qu猲 mang l謓h th� ph秈.")
		return
	end
	
	CreateTaskSay({"<dec><npc>Чi hi謕 mu鑞 i l蕐 h� ph竔 trang b� n祇:", 
						format("Trang b� Чi M� H� /#take_xp_equip_102(%d,%d, 1)", n_g, n_d),
						"Tho竧/no"});
end

function take_xp_equip_102(n_g, n_d, n_p)
	local n_count = 10;
	
--	if (n_g == 5) then		
--		n_count = 5;
--	end
	
	local n_s =(n_p - 1)*n_count + 1;
	
	local aryDescribe = {
		"<dec><npc> i hi謕 mu鑞 thay cho m苩 c竔  h� ph竔 ch trang b� :",
	};
	for i = n_s, n_s+n_count-1 do
		tinsert(aryDescribe, tbGoldEquip_Lingpai[n_g][i][1]..format("/#take_xp_equip_3(%d, %d, %d, %d)", n_g, n_d, n_p,i));
	end
	
	tinsert(aryDescribe, "Ch� m閠 ch髏 tr� l筰 /no");
	CreateTaskSay(aryDescribe);
end

---------炎帝装备
function take_xp_equip_111(n_g, n_d)
	
if (CalcItemCount(3, tbLingpai[n_g].tbProp[1],tbLingpai[n_g].tbProp[2],tbLingpai[n_g].tbProp[3],-1) <= 0) then 
Talk(1, "","H譶h nh� i hi謕 qu猲 mang l謓h b礽 th� ph秈. ?") 
return 
end 
	
	CreateTaskSay({"<dec><npc>Чi hi謕 mu鑞 trang b� g�:", 
						format("Trang b� To筰 Nh﹏/#take_xp_equip_112(%d,%d, 1)", n_g, n_d),
						format("Trang b� Ph鬰 Hi/#take_xp_equip_112(%d,%d, 2)", n_g, n_d),
						format("Trang B� N� Oa/#take_xp_equip_112(%d,%d, 3)", n_g, n_d),
						format("Trang b� Ch骳 Dung/#take_xp_equip_112(%d,%d, 4)", n_g, n_d),
						format("Trang b� Th莕 N玭g/#take_xp_equip_112(%d,%d, 5)", n_g, n_d),
						"K誸 th骳 i tho筰 /no"});
end

function take_xp_equip_112(n_g, n_d, n_p)
	local n_count = 10;
	
--	if (n_g == 5) then		
--		n_count = 5;
--	end
	
	local n_s =(n_p - 1)*n_count + 1;
	
	local aryDescribe = {
		"<dec><npc>Чi hi謕 mu鑞 thay h� ph竔 trang b�:",
	};
	for i = n_s, n_s+n_count-1 do
		tinsert(aryDescribe, tbGoldEquip_Lingpai[n_g][i][1]..format("/#take_xp_equip_3(%d, %d, %d, %d)", n_g, n_d, n_p,i));
	end
	
	tinsert(aryDescribe, "K誸 th骳 i tho筰 /no");
	CreateTaskSay(aryDescribe);
end
--------------------------------------------------------------------------------

function take_xp_equip_1(n_g, n_d)
	
	if (CalcItemCount(3, tbLingpai[n_g].tbProp[1],tbLingpai[n_g].tbProp[2],tbLingpai[n_g].tbProp[3],-1) <= 0) then
		Talk(1, "", "H譶h nh� i hi謕 qu猲 mang l謓h b礽 th� ph秈.")
		return
	end
	
	CreateTaskSay({"<dec><npc>Чi hi謕 mu鑞 i l蕐 h� ph竔 trang b� n祇:", 
						format("Thi誹 L﹎ quy襫/#take_xp_equip_2(%d,%d, 1)", n_g, n_d),
						format("Thi誹 L﹎ c玭/#take_xp_equip_2(%d,%d, 2)", n_g, n_d),
						format("Thi誹 L﹎ 產o/#take_xp_equip_2(%d,%d, 3)", n_g, n_d),
						format("Thi猲 Vng ch飝/#take_xp_equip_2(%d,%d, 4)", n_g, n_d),
						format("Thi猲 Vng thng/#take_xp_equip_2(%d,%d, 5)", n_g, n_d),
						format("Thi猲 Vng 產o/#take_xp_equip_2(%d,%d, 6)", n_g, n_d),
						format("Nga Mi ki誱/#take_xp_equip_2(%d,%d, 7)", n_g, n_d),
						format("Nga Mi chng/#take_xp_equip_2(%d,%d, 8)", n_g, n_d),
						format("Th髖 Y猲 產o /#take_xp_equip_2(%d,%d, 9)", n_g, n_d),
						format("Th髖 Y猲 song 產o/#take_xp_equip_2(%d,%d, 10)", n_g, n_d),
						format("Ng� чc chng/#take_xp_equip_2(%d,%d, 11)", n_g, n_d),
						format("Ng� чc 產o/#take_xp_equip_2(%d,%d, 12)", n_g, n_d),
						format("Trang sau.../#take_xp_equip_11(%d,%d)", n_g, n_d),
						"Tho竧/no"});
end

function take_xp_equip_11(n_g, n_d)
	CreateTaskSay({"<dec><npc>Чi hi謕 mu鑞 i l蕐 h� ph竔 trang b� n祇:", 
						format("Л阯g M玭 phi 產o/#take_xp_equip_2(%d,%d, 13)", n_g, n_d),
						format("Л阯g M玭 t� ti詎/#take_xp_equip_2(%d,%d, 14)", n_g, n_d),
						format("Л阯g M玭 phi ti猽/#take_xp_equip_2(%d,%d, 15)", n_g, n_d),
						format("C竔 Bang chng/#take_xp_equip_2(%d,%d, 16)", n_g, n_d),
						format("C竔 Bang b鎛g/#take_xp_equip_2(%d,%d, 17)", n_g, n_d),
						format("Chi課 Nh蒼/#take_xp_equip_2(%d,%d, 18)", n_g, n_d),
						format("Ma Nh蒼/#take_xp_equip_2(%d,%d, 19)", n_g, n_d),
						format("V� ng kh�/#take_xp_equip_2(%d,%d, 20)", n_g, n_d),
						format("V� ng ki誱/#take_xp_equip_2(%d,%d, 21)", n_g, n_d),
						format("C玭 L玭 產o/#take_xp_equip_2(%d,%d, 22)", n_g, n_d),
						format("C玭 L玭 ki誱/#take_xp_equip_2(%d,%d, 23)", n_g, n_d),
						format("Tr� v�.../#take_xp_equip_1(%d,%d)", n_g, n_d),
						"Tho竧/no"});
end


function take_xp_equip_2(n_g, n_d, n_p)
	local n_count = 10;
	
--	if (n_g == 5) then		
--		n_count = 5;
--	end
	
	local n_s =(n_p - 1)*n_count + 1;
	
	local aryDescribe = {
		"<dec><npc>Чi hi謕 mu鑞 i l蕐 h� ph竔 trang b� n祇:",
	};
	for i = n_s, n_s+n_count-1 do
		tinsert(aryDescribe, tbGoldEquip_Lingpai[n_g][i][1]..format("/#take_xp_equip_3(%d, %d, %d, %d)", n_g, n_d, n_p,i));
	end
	
	tinsert(aryDescribe, "Kh玭g i n鱝./no");
	CreateTaskSay(aryDescribe);
end

function take_xp_equip_3(n_g, n_d, n_p, n_x)
	if (CountFreeRoomByWH(2,4,1) < 1) then
		Talk(1, "", "Kh玭g  ch� tr鑞g, xin s鯽 sang l筰 h祅h trang");
		return
	end
	
	local nLingpaiIdx = GetNextItemIndexInRoom(0, tbLingpai[n_g].tbProp[1],tbLingpai[n_g].tbProp[2],tbLingpai[n_g].tbProp[3],-1, 3);
	local n_bindstate = GetItemBindState(nLingpaiIdx);
	local n_expiredtime = ITEM_GetExpiredTime(nLingpaiIdx);
	
	if (ConsumeItem(3,1, tbLingpai[n_g].tbProp[1],tbLingpai[n_g].tbProp[2],tbLingpai[n_g].tbProp[3],-1) ~= 1) then
		Talk(1, "", "H譶h nh� i hi謕 qu猲 mang l謓h b礽 th� ph秈.")
		return
	end
	
	local nItemIdx = AddGoldItem(0, tbGoldEquip_Lingpai[n_g][n_x][2]);
	
--	越南版本没有此需求
--	if (n_expiredtime ~= 0 ) then
--		ITEM_SetExpiredTime(nItemIdx,86400)
--		SyncItem(nItemIdx)
--	end
	
	if (n_bindstate ~= 0) then
		
		if (n_bindstate == -2) then
			n_new_bindtime = take_xp_equip_calc_binditem(tbLingpai_BindTime[n_g].nBindState);
		else
			n_new_bindtime = n_bindstate;
		end
		
		SetItemBindState(nItemIdx, n_new_bindtime);
	end
	
	Msg2Player("Чt 頲 "..GetItemName(nItemIdx));
	
	local szLog = format("%s\t%s\t%u",tbLingpai[n_g].szName, GetItemName(nItemIdx), ITEM_GetItemRandSeed(nItemIdx))
	
	_WritePlayerLog("Token Exchange Equip", szLog)
end

TIME_2000_1_1 = 946656000;		-- 2000年1寓1日 系对于 1970年1寓1日的秒数

function take_xp_equip_calc_binditem(nLingpaiBindTime)
	if (nLingpaiBindTime == -2) then
		return -2;
	end
	local n_new_bindtime = nLingpaiBindTime - 7*24 + floor((GetCurServerTime() - TIME_2000_1_1) / 3600);
	return n_new_bindtime;
end

