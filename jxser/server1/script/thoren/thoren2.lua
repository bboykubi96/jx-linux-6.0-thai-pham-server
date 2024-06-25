Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\event\\jiefang_jieri\\201004\\triumph_drum\\npc.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\lib\\composeex.lua")
--»»È¡ÐÐÏÀÁî³ö´í - modified by DinhHQ - 20110921
Include("\\script\\vng_event\\doi_hanh_hiep_lenh\\exchangeitem.lua")
Include("\\script\\missions\\dragonboat\\npc\\dragonboat_main.lua")
Include("\\script\\thoren\\danglong_config.lua")
Include("\\script\\thoren\\tinhsuong_config.lua")
Include("\\script\\thoren\\nguyetkhuyet_config.lua")
Include("\\script\\thoren\\rollback_config.lua")
Include("\\script\\thoren\\hoason_config.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\changefeature\\feature_man.lua")
IncludeLib("ITEM")
function OnExit()

end;

function main()
	dofile("script/thoren/thoren2.lua");
	dofile("script/thoren/rollback_config.lua");
	dofile("script/thoren/nguyetkhuyet_config.lua");
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
		
		--tbDailog:AddOptEntry("ChÕ T¹o C¸c Trang BÞ Vip Xin Xß", epnguavip)
		tbDailog:AddOptEntry("Thay §æi Ngo¹i Trang", DoiNgoaiTrang)
		--tbDailog:AddOptEntry("Trïng LuyÖn NhÉn Cµng Kh«n",trungluyennhan)
		tbDailog:AddOptEntry("Thay §ái Ngo¹i H×nh Vò KhÝ", MenuDoiNgoaiHinh0)
		tbDailog:AddOptEntry("ChÕ T¹o Vò KhÝ HKMP Ph¸t S¸ng(VIP)", PhatSangVip)
	tbDailog:Show()
end;
function trungluyennhan()
local tbSay = 
{
"Trïng LuyÖn NhÉn CÊp 7/#trungluyennhan71()",
"Trïng LuyÖn NhÉn CÊp 8/#trungluyennhan81()",
--"Ðp Cè S¬n Ph¸ Thiªn/#epcoson()",
--"Ðp Vò LiÖt TruyÒn Kú/#epvuliet()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn lo¹i ngùa nµo  ",getn(tbSay),tbSay)
end
function trungluyennhan71()
Say("Vui Lßng Chän §óng NhÉn M×nh §ang Mang §Ó Trïng LuyÖn",6,
	"Kh¸ng §éc/Doc_1",
	"Kh¸ng L«i/Loi_1",
	"Kh¸ng Háa/Hoa_1",
	"Phßng Thñ VËt Lý/Pho_1",
	"Kh¸ng B¨ng/Bang_1",
	"Hñy/No")
end

function Doc_1()
Say("H·y Lùa Chän HiÖu XuÊt",4,
	"Thêi Gian Lµm ChËm/#trungluyennhan7(4743)",
	"Thêi Gian Tróng §éc/#trungluyennhan7(4733)",
	"Thêi Gian Cho¸ng/#trungluyennhan7(4738)",
	"Hñy Bá/No")
end

function Loi_1()
Say("H·y Lùa Chän HiÖu XuÊt",4,
	"Thêi Gian Lµm ChËm/#trungluyennhan7(4742)",
	"Thêi Gian Tróng §éc/#trungluyennhan7(4732)",
	"Thêi Gian Cho¸ng/#trungluyennhan7(4737)",
	"Hñy Bá/No")
end

function Hoa_1()
Say("H·y Lùa Chän HiÖu XuÊt",4,
	"Thêi Gian Lµm ChËm/#trungluyennhan7(4740)",
	"Thêi Gian Tróng §éc/#trungluyennhan7(4730)",
	"Thêi Gian Cho¸ng/#trungluyennhan7(4735)",
	"Hñy Bá/No")
end

function Pho_1()
Say("H·y Lùa Chän HiÖu XuÊt",4,
	"Thêi Gian Lµm ChËm/#trungluyennhan7(4744)",
	"Thêi Gian Tróng §éc/#trungluyennhan7(4734)",
	"Thêi Gian Cho¸ng/#trungluyennhan7(4739)",
	"Hñy Bá/No")
end

function Bang_1()
Say("H·y Lùa Chän HiÖu XuÊt",4,
	"Thêi Gian Lµm ChËm/#trungluyennhan7(4741)",
	"Thêi Gian Tróng §éc/#trungluyennhan7(4731)",
	"Thêi Gian Cho¸ng/#trungluyennhan7(4736)",
	"Hñy Bá/No")
end
function trungluyennhan7(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn Trïng LuyÖn ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Cµng Kh«n 7 ", tbProp = {0,num}, nQuality = 1 },
             	{szName = "Xu ", tbProp = {4,417,1,1,0},nCount = 500},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
-------------------------------------
function trungluyennhan81()
Say("Vui Lßng Chän §óng NhÉn M×nh §ang Mang §Ó Trïng LuyÖn",6,
	"Kh¸ng §éc/Doc_2",
	"Kh¸ng L«i/Loi_2",
	"Kh¸ng Háa/Hoa_2",
	"Phßng Thñ VËt Lý/Pho_2",
	"Kh¸ng B¨ng/Bang_2",
	"Hñy/No")
end

function Doc_2()
Say("H·y Lùa Chän HiÖu XuÊt",4,
	"Thêi Gian Lµm ChËm/#trungluyennhan8(4758)",
	"Thêi Gian Tróng §éc/#trungluyennhan8(4748)",
	"Thêi Gian Cho¸ng/#trungluyennhan8(4753)",
	"Hñy Bá/No")
end

function Loi_2()
Say("H·y Lùa Chän HiÖu XuÊt",4,
	"Thêi Gian Lµm ChËm/#trungluyennhan8(4757)",
	"Thêi Gian Tróng §éc/#trungluyennhan8(4747)",
	"Thêi Gian Cho¸ng/#trungluyennhan8(4752)",
	"Hñy Bá/No")
end

function Hoa_2()
Say("H·y Lùa Chän HiÖu XuÊt",4,
	"Thêi Gian Lµm ChËm/#trungluyennhan7(4755)",
	"Thêi Gian Tróng §éc/#trungluyennhan7(4745)",
	"Thêi Gian Cho¸ng/#trungluyennhan7(4750)",
	"Hñy Bá/No")
end

function Pho_2()
Say("H·y Lùa Chän HiÖu XuÊt",4,
	"Thêi Gian Lµm ChËm/#trungluyennhan8(4759)",
	"Thêi Gian Tróng §éc/#trungluyennhan8(4749)",
	"Thêi Gian Cho¸ng/#trungluyennhan8(4754)",
	"Hñy Bá/No")
end

function Bang_2()
Say("H·y Lùa Chän HiÖu XuÊt",4,
	"Thêi Gian Lµm ChËm/#trungluyennhan8(4756)",
	"Thêi Gian Tróng §éc/#trungluyennhan8(4746)",
	"Thêi Gian Cho¸ng/#trungluyennhan8(4751)",
	"Hñy Bá/No")
end
function trungluyennhan8(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn Trïng LuyÖn ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Cµng Kh«n 8 ", tbProp = {0,num}, nQuality = 1 },
             	{szName = "Xu ", tbProp = {4,417,1,1,0},nCount = 800},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}	
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end












































function epnguavip()
local tbSay = 
{

"Ðp MÆt N¹ 3Skill Hµng VÜnh ViÔn/#epmatna()",
"Ðp NGùa Hoµng Kim 4 Skill/#epsieuquanghsd()",
"Ðp Cè S¬n Ph¸ Thiªn/#epcoson()",
"Ðp Vò LiÖt TruyÒn Kú/#epvuliet()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("Ng­¬i muèn lo¹i ngùa nµo  ",getn(tbSay),tbSay)

end
function epcoson()
	local tbSay = 
{
"Ta Muèn §æi Sang  Bao Tay (Phong Ma QuyÕt)/#TienHanhDoiSkillTrungSinh42z(5978)",
"Ta Muèn §æi Sang  Bao Tay (§Êu UyÓn)/#TienHanhDoiSkillTrungSinh42z(5979)",
"Ta Muèn §æi Sang  Bao Tay (Tµn Phong V©n QuyÒn)/#TienHanhDoiSkillTrungSinh42z(5980)",
"Ta Muèn §æi Sang  Bao Tay (§o¹n NguyÖt)/#TienHanhDoiSkillTrungSinh42z(5981)",
"Ta Muèn §æi Sang  Bao Tay (T©m Tinh Thøc)/#TienHanhDoiSkillTrungSinh42z(5982)",
"Ta Muèn §æi Sang D©y ChuyÒn (Triªt Vò Phong ThÓ)/#TienHanhDoiSkillTrungSinh42z(5984)",
"Ta Muèn §æi Sang  D©y ChuyÒn (Hæ KÝch)/#TienHanhDoiSkillTrungSinh42z(5985)",
"Ta Muèn §æi Sang  D©y ChuyÒn(Ngäc Th¹ch PhiÕm)/#TienHanhDoiSkillTrungSinh42z(5986)",
"Ta Muèn §æi Sang  D©y ChuyÒn (L¨ng Phong)/#TienHanhDoiSkillTrungSinh42z(5987)",
"Ta Muèn §æi Sang D©y ChuyÒn (NhËt Nh­ S¬n)/#TienHanhDoiSkillTrungSinh42z(5988)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh42z(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Cè S¬n ", tbProp = {0,{5262,5266}}, nQuality = 1 },
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0},nCount = 600},
                {szName = "M·nh Nguyªn LiÖu HiÕm", tbProp = {4,1508,1,1,0},nCount = 200},
		{szName = "Kim Nguyªn B¶o", tbProp = {4,1496,1,1,0},nCount = 300},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
------------------------------
function epvuliet()
	local tbSay = 
{
"Ta Muèn §æi Sang  nãn/#TienHanhDoiSkillTrungSinh432z(5109)",
"Ta Muèn §æi Sang  ¸o/#TienHanhDoiSkillTrungSinh432z(5110)",
"Ta Muèn §æi Sang  Giµy/#TienHanhDoiSkillTrungSinh432z(5111)",
"Ta Muèn §æi Sang Béi/#TienHanhDoiSkillTrungSinh432z(5112)",
"Ta Muèn §æi Sang §ai/#TienHanhDoiSkillTrungSinh432z(5113)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh432z(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Vò LiÖt ", tbProp = {0,{5114,5118}}, nQuality = 1 },
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0},nCount = 600},
                {szName = "M·nh Nguyªn LiÖu HiÕm", tbProp = {4,1508,1,1,0},nCount = 200},
		{szName = "Kim Nguyªn B¶o", tbProp = {4,1496,1,1,0},nCount = 300},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
---------------------------ep ngua sieu quang vinh vien---------------------------------
function epsieuquangvinhvien()
	GiveItemUI("ThÇn M· Siªu Quang VÜnh ViÔn !","-----(bá vµo trong)--------\n+1 Ngùa Hoµng Kim\n\n-----(®Ó ë hµnh trang)-----\n+80 M¶nh ngùa Siªu Quang \n+1 ThÇn M· §an\n<enter>L­u ý: Trang bÞ hoµng kim Ðp ra sÏ cã h¹n sö dông vÜnh viÔn.!","epsieuquangvinhvien_run")
end
function epsieuquangvinhvien_run(nCount)
		if (nCount == 0) then 
			Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ta chØ cÇn 1 Siªu Quang VÜnh ViÔn vµo th«i cßn l¹i tÊt c¶ thø kh¸c ®Ó bªn ngoµi",0);
		return
	end
			if (nCount ~= 1) then 
			Say("ng­¬i ®Æt c¸i g× vµo thÕ nµy ta chØ cÇn 1 Siªu Quang VÜnh ViÔn vµo th«i cßn l¹i tÊt c¶ thø kh¸c ®Ó bªn ngoµi",0);
		return
	end
	
		local itemIndex = GetGiveItemUnit(1)
	local nCurItemQuality	= GetItemQuality(itemIndex);
	local bindState = GetItemBindState(itemIndex)
	local nG, nD,nP = GetItemProp(itemIndex)
	local timeitem = ITEM_GetExpiredTime(itemIndex)
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
    local nTen=GetItemName(itemIndex)	
		if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
        if  timeitem >0	then
			Talk(1,"", "Trang bÞ ®ang cã h¹n sö dông, kh«ng thÓ n©ng cÊp")
			return
		end	
		if (nCurItemQuality ~= 1) then
			Talk(1, "", "VËt phÈm ®Æt vµo kh«ng ph¶i lµ trang bÞ HK");
			return
		end
	 if goldEquipIndex~=6758 then
		Talk(1,"", "<color=white>ChØ cã trang bÞ lµ Ngùa Hoµng Kim  VÜnh ViÔn míi ®­îc ë môc Ðp nµy")
		return
	end
	
	local thanmadan = CalcEquiproomItemCount(6,1,5000,-1) ;
	if(thanmadan < 1) then 
	Talk(1,"","CÇn cã 1 ThÇn M· §an ®Ó ë hµnh trang.") 
	return 
	end
		local bachnghetinhngoc = CalcEquiproomItemCount(6,1,30355,-1) ;
	if(bachnghetinhngoc < 10) then 
	Talk(1,"","CÇn cã 10 B¸ch NghÖ Tinh Ngäc ®Ó ë hµnh trang.") 
	return 
	end
	
		local manhsieuquang = CalcEquiproomItemCount(4,1504,1,-1) ;
	if(manhsieuquang < 80 ) then 
	Talk(1,"","CÇn cã 80 M¶nh Siªu Quang ®Ó ë hµnh trang.") 
	return 
	end
	k = RemoveItemByIndex(itemIndex)
	if  k == 1 and ConsumeEquiproomItem(1,6,1,5000,-1) >0 and ConsumeEquiproomItem(80,4,1504,1,-1) and ConsumeEquiproomItem(10,6,1,30355,-1)  then
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6757},nQuality=1,nCount=1},}, "test", 1);
			WriteLogPro("dulieu/epnguasieuquang.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da nang sao thanh cong sieu quang vinh vien \n");	
	end	
end
---------------------------ep ngua sieu quang 30---------------------------------
function epmatna()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0},nCount = 600},
                {szName = "M·nh Nguyªn LiÖu HiÕm", tbProp = {4,1508,1,1,0},nCount = 200},
		{szName = "Kim Nguyªn B¶o", tbProp = {4,1496,1,1,0},nCount = 300},
                {szName = "M¹t N¹ 2 Skill", tbProp = {0,11,806,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,11,839,1,0,0},nCount = 1 },
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
-------------------
function epsieuquanghsd()
	local tbSay = 
{
"Ta Muèn §æi Sang  Han Huyet Than Cau/#TienHanhDoiSkillTrungSinh4321z(4989)",
"Ta Muèn §æi Sang  Sieu Quang /#TienHanhDoiSkillTrungSinh4321z(4990)",
"Ta Muèn §æi Sang  xich long cau/#TienHanhDoiSkillTrungSinh4321z(4991)",
"Ta Muèn §æi Sang duc huy /#TienHanhDoiSkillTrungSinh4321z(4992)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("B¹n Muèn trïng luyÖn g× G×",getn(tbSay),tbSay)

end

------------------------------------------------------------------------------------------------------------------------------------------------------------
function TienHanhDoiSkillTrungSinh4321z(num)
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Ngua 3 Skill", tbProp = {0,{4956,4968}}, nQuality = 1 },
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4873,1,0},nCount = 600},
                {szName = "M·nh Nguyªn LiÖu HiÕm", tbProp = {4,1508,1,1,0},nCount = 200},
		{szName = "Kim Nguyªn B¶o", tbProp = {4,1496,1,1,0},nCount = 300},
              
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0,num}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

--------------------------ep ngua hoang kim---------------------------------
function epnguahoangkimhsd()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Kim Nguyªn B¶o", tbProp = {4,1496,1,1,0},nCount = 50},
                {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 1},
                {szName = "M¶nh Ngùa Hoµng Kim 1/7", tbProp = {4,1497,1,1,0},nCount = 10},
                {szName = "M¶nh Ngùa Hoµng Kim 2/7", tbProp = {4,1498,1,1,0},nCount = 10},
                {szName = "M¶nh Ngùa Hoµng Kim 3/7", tbProp = {4,1499,1,1,0},nCount = 10},
                {szName = "M¶nh Ngùa Hoµng Kim 4/7", tbProp = {4,1500,1,1,0},nCount = 10},
                {szName = "M¶nh Ngùa Hoµng Kim 5/7", tbProp = {4,1501,1,1,0},nCount = 10},
                {szName = "M¶nh Ngùa Hoµng Kim 6/7", tbProp = {4,1502,1,1,0},nCount = 10},
                {szName = "M¶nh Ngùa Hoµng Kim 7/7", tbProp = {4,1503,1,1,0},nCount = 10},

			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0, 6756}, nQuality = 1,nExpiredTime=30*24*60},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end
--------------hoang kim vinh vien

function epnguahoangkimvinhvien()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
                {szName = "M¶nh Ngùa Hoµng Kim 1/7", tbProp = {4,1497,1,1,0},nCount = 50},
                {szName = "M¶nh Ngùa Hoµng Kim 2/7", tbProp = {4,1498,1,1,0},nCount = 50},
                {szName = "M¶nh Ngùa Hoµng Kim 3/7", tbProp = {4,1499,1,1,0},nCount = 50},
                {szName = "M¶nh Ngùa Hoµng Kim 4/7", tbProp = {4,1500,1,1,0},nCount = 50},
                {szName = "M¶nh Ngùa Hoµng Kim 5/7", tbProp = {4,1501,1,1,0},nCount = 50},
                {szName = "M¶nh Ngùa Hoµng Kim 6/7", tbProp = {4,1502,1,1,0},nCount = 50},
                {szName = "M¶nh Ngùa Hoµng Kim 7/7", tbProp = {4,1503,1,1,0},nCount = 50},
				  {szName = "Gia M· §an", tbProp = {6,1,5001,1,1},nCount = 1},
				  {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0},nCount = 5},
			},
			tbProduct = {szName="Cho tÊt c¶ nguyªn liÖu vµo trong ok?", tbProp={0, 6758}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	end

function TestGame()
	szDescription = format("100 Kim Nguyªn B¶o\n=> §Ñp V·i C¸i Lån!!.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_TestGame", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end
 function Run_TestGame()
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	local nG, nD, nP, nL, nS = GetItemProp(itemIndex)
	Msg2Player("RÊt tiÕc! "..nG.."."..nD.."."..nP.."."..nL.."."..nS..".")
	--	Msg2Player("RÊt tiÕc! "..goldEquipIndex..".")
end
function Make_Weapons()
	szDescription = format("100 Kim Nguyªn B¶o\n=> §Ñp V·i C¸i Lån!!.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_MakeWeapons", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_MakeWeapons(nCount)
	if nCount == 0 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
		tbStone1 = {},
		tbStone2 = {},
		tbStone3 = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)
		local tbMagicItem =
		{
			[4] =
			{
				[238] = 1,
				[239] = 1,
				[240] = 1,
                                                                                                                                                                                                                                                                                                                                          [1496] = 1,
			},

		}
		
		local nIndex = 0
		if nG == 4 then
			nIndex = nD
		end

		if nG == 4 then
			if nIndex == 238 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone1, nItemIndex)
				end
			elseif nIndex == 239 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone2, nItemIndex)
				end
			elseif nIndex == 240 then
				if tbMagicItem[nG][nIndex] then
					tinsert(tbDatabase.tbStone3, nItemIndex)
				end
			end
		end

		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 else
				Talk(1, "no", "ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
		local nFaction = GetLastFactionNumber()
		nRandomAccess = random(1,100)
		nRandomRes = random(1, 100)
		nSucces = 1
		if nG == 0 and nD == 0 and nP == 0 then
			if nFaction == 8 then  ----------------------------------------------------------Kiem Vo Dang
				if nRandomAccess > 1 then
					nIndexRes = 59
				 else
					nSucces = 0
				end
			 elseif nFaction == 4 then ----------------------------------------------------------Kiem Nga Mi
				if nRandomAccess > 1 then
					nIndexRes = 57
				 else
					nSucces = 0
				end
			 elseif nFaction == 9 then ----------------------------------------------------------Kiem Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 58
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 0 and nRandomRes < 33 then
					if nRandomAccess > 1 then
						nIndexRes = 57
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 33 and nRandomRes < 66 then
					if nRandomAccess > 1 then
						nIndexRes = 58
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 66 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 59
					 else
						nSucces = 0
					end
				end
			 end
		                                                                                   elseif nG == 0 and nD == 0 and nP == 1 then
			if nFaction == 0 or nFaction == 1 then
				if nRandomAccess > 1 then
					nIndexRes = 52
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 3 then ----------------------------------------------------------Dao Ngu Doc
				if nRandomAccess > 1 then
					nIndexRes = 53
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 5 then   ----------------------------------------------------------Dao Thuy Yen
				if nRandomAccess > 1 then
					nIndexRes = 54
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 9 then   ----------------------------------------------------------Dao Con Lon
				if nRandomAccess > 1 then
					nIndexRes = 56
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 25 then
					if nRandomAccess > 1 then
						nIndexRes = 52
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 25 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 53
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes < 75 then
					if nRandomAccess > 1 then
						nIndexRes = 54
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 75 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 56
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 2 then
			if nFaction == 0 then -------------------------------------------------Bong Thieu Lam
				if nRandomAccess > 1 then
					nIndexRes = 40
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 6 then -------------------------------------------------Bong Cai Bang
				if nRandomAccess > 1 then
					nIndexRes = 41
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 40
						nSucces = 1
					 else
						nSucces = 0
						end
				 elseif nRandomRes >= 50 and nRandomRes < 100 then
					if nRandomAccess > 1 then
						nIndexRes = 41
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 3 then
			if nFaction == 7 then
				if nRandomAccess > 1 then
					nIndexRes = 51
					nSucces = 1
				 else
					nSucces = 0
				end
			 elseif nFaction == 1 then
				if nRandomAccess > 1 then
					nIndexRes = 50
					nSucces = 1
				 else
					nSucces = 0
				end
			 else
				if nRandomRes >= 1 and nRandomRes < 50 then
					if nRandomAccess > 1 then
						nIndexRes = 51
						nSucces = 1
					 else
						nSucces = 0
					end
				 elseif nRandomRes >= 50 and nRandomRes <= 100 then
					if nRandomAccess > 1 then
						nIndexRes = 50
						nSucces = 1
					 else
						nSucces = 0
					end
				end
			end
		 elseif nG == 0 and nD == 0 and nP == 4 then
			if nRandomAccess > 1 then
			nIndexRes = 60
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 0 and nP == 5 then
			if nRandomAccess > 1 then
				nIndexRes = 61
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 0 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 1 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 2 then
			if nRandomAccess > 1 then
				nIndexRes = 46
				nSucces = 1
			 else
				nSucces = 0
			end
		end
	end
	

	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng")
		return
	end


	local nSilverCount = CalcEquiproomItemCount(4,1496,1,1) ;
	if(nSilverCount < 100) then
		Talk(1, "no", "CÇn cã 100 <color=red>Kim Nguyªn B¶o<color> míi cã thÓ n©ng cÊp.")
		return
	end
	--local nIDX = GetGiveItemUnit(n)
	--local nQuality = GetItemQuality(nIDX)
	--if nQuality ~= 1 then
		--Talk(1, "", "Trang bÞ ng­¬i ®Æt vµo kh«ng ph¶i lµ trang bÞ hoµng kim")
		--return
	--end

	
	
                                                                                  ConsumeEquiproomItem(100,4,1496,1,1)

	if nSucces == 0 then
		Msg2Player("RÊt tiÕc! ThÊt b¹i lµ chuyÖn b×nh th­êng cña binh gia,huynh ®µi ®õng n¶n chÝ h·y cè g¾ng lÇn n÷a sÏ ®­îc nh­ ý.")
	elseif nSucces == 1 then
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· n©ng cÊp thµnh c«ng vò khÝ ph¸t quang.")
                                                                                                                                                                     Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> §· n©ng cÊp thµnh c«ng vò khÝ<color=green> Ph¸t S¸ng!")
                                                                                                                                                                     SaveNow();
                                                                                   local epphatsang = "script/global/bil4i3n/bil4i3n_log/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	-- write(moepphatsang, format("%d:%d\tAccount: %s\t Name: %s\t Level: %s\t IP Address: %s  N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName(), GetLevel(), GetIP()))
	--closefile(moepphatsang)
	else
		print("Bug tinh nang nang cap Vu Khi phat quang")
	end
end

function _Weapons(nItemIndex, nIndexRes)
	SetItemNewFeature(nItemIndex, nIndexRes)
	print(nIndexRes)
end

function no()
end

function DoiNgoaiTrang()
tbFeatureNpc:Dialog()
end


function DoiNguyenLieu56()
	szDescription = format("+Ên 5:5 Nguyªn LiÖu \n+Ên 6:10 Nguyªn LiÖu\n+Kim Nguyªn B¶oyªn Y 5: 5 Nguyªn LiÖu\n+Kim Nguyªn B¶oyªn Y 6: 10 Nguyªn LiÖu\n.")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "DoiNguyenLieu56_ok", "no", 1)
		
end
function DoiNguyenLieu56_ok()
local nItemIndex = GetGiveItemUnit(1)
local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)

if nGoldEquipIdxFF==3954 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=5},}, "test", 1);
end

if nGoldEquipIdxFF==3955 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc Linh Hån",tbProp={6,1,4912,1,1},nCount=10},}, "test", 1);
end

if nGoldEquipIdxFF==3992 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa",tbProp={6,1,4913,1,1},nCount=5},}, "test", 1);
end

if nGoldEquipIdxFF==3993 then
RemoveItemByIndex(nItemIndex)
tbAwardTemplet:GiveAwardByList({{szName = "Ngäc C­êng Hãa",tbProp={6,1,4913,1,1},nCount=10},}, "test", 1);
end

end

function NhanFreeAn45()

tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6138},nQuality=1,nCount=1},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6149},nQuality=1,nCount=1},}, "test", 1);
end
function DoiTinhNgocDaiTinhNgoc()


	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{

               [1] = 
		{
			tbMaterial = 
			{
                {szName = "Tinh Ngäc", tbProp = {6,1,4806,1,1},nCount = 1000},
			},
			tbProduct = {szName="§æi 1000 Tinh Ngäc--> 100 §¹i Tinh Ngäc", tbProp={6,1,4919,1,1},nCount=100},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		          [2] = 
		{
			tbMaterial = 
			{
                {szName = "Tinh Ngäc", tbProp = {6,1,4806,1,1},nCount = 10000},
			},
			tbProduct = {szName="§æi 10.000 Tinh Ngäc--> 1000 §¹i Tinh Ngäc", tbProp={6,1,4919,1,1},nCount=1000},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end 


function nangcapnguhanhan()
	local a=random(0,20)
	if a>=0 and a<=5 then--30%
	idnguhanhan=6139
	idnguhanhan2=6144
	else if a>=6 and a<=11  then--30%
		idnguhanhan=6140
		idnguhanhan2=6145

	else if a>=12 and a<=16 then--25%
		idnguhanhan=6141
		idnguhanhan2=6146

	else if a>=17 and a<=19 then--15%
					idnguhanhan=6142
					idnguhanhan2=6147
	else if a==20 then --5%
					idnguhanhan=6143	
					idnguhanhan2=6148					
					end
				end
			end
			end
	end

	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Ngò Hµnh Ên 4", tbProp = {0,6138}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 2},
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4919,1,1},nCount = 1000},
                {szName = "Ngäc Linh Hån", tbProp = {6,1,4912,1,1},nCount = 100},
		--		{szName="Ng©n L­îng",nJxb=200000000,nCount=1},
			},
			tbProduct = {szName="Ngò Hµnh Ên 4--> Ngò Hµnh Ên 5", tbProp={0, idnguhanhan}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		          [2] = 
		{
			tbMaterial = 
			{
				{szName = "Ngò Hµnh Ên 5", tbProp ={0, {6139,6143}}, nQuality = 1 },
				 {szName = "Ngò Linh KiÓm §Þnh Phï", tbProp = {6,1,3007,1,1},nCount = 1},
                 {szName = "Ngò Linh Quy Nguyªn Phï", tbProp = {6,1,3008,1,1},nCount = 1},
				  {szName = "Trïng LuyÖn Ngäc", tbProp = {6,1,4830,1,1},nCount = 1},
				   {szName = "Ngäc Linh Hån", tbProp = {6,1,4912,1,1},nCount = 5},
			},
			tbProduct = {szName="Trïng LuyÖn Ngò Hµnh Ên 5", tbProp={0, idnguhanhan}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		
		          [3] = 
		{
			tbMaterial = 
			{
				{szName = "Ngò Hµnh Ên 5", tbProp ={0, {6139,6143}}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 4},
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4919,1,1},nCount = 2000},
                {szName = "Ngäc Linh Hån", tbProp = {6,1,4912,1,1},nCount = 200},
			},
			tbProduct = {szName="Ngò Hµnh Ên 5--> Ngò Hµnh Ên 6", tbProp={0, idnguhanhan2}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		          [4] = 
		{
			tbMaterial = 
			{
				{szName = "Ngò Hµnh Ên 6", tbProp ={0, {6144,6148}}, nQuality = 1 },
				 {szName = "Ngò Linh KiÓm §Þnh Phï", tbProp = {6,1,3007,1,1},nCount = 1},
                 {szName = "Ngò Linh Quy Nguyªn Phï", tbProp = {6,1,3008,1,1},nCount = 1},
				  {szName = "Trïng LuyÖn Ngäc", tbProp = {6,1,4830,1,1},nCount = 1},
				   {szName = "Ngäc Linh Hån", tbProp = {6,1,4912,1,1},nCount = 5},
			},
			tbProduct = {szName="Trïng LuyÖn Ngò Hµnh Ên 6", tbProp={0, idnguhanhan2}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end 

function nangcapxuyeny()--- ti le 30-30-15-10-5%

	local a=random(0,20)
	if a>=0 and a<=5 then--30%
	idxuyengiap=6150
	idxuyengiap2=6155
	else if a>=6 and a<=11  then--30%
		idxuyengiap=6151
		idxuyengiap2=6156

	else if a>=12 and a<=16 then--25%
		idxuyengiap=6152
		idxuyengiap2=6157

	else if a>=17 and a<=19 then--15%
					idxuyengiap=6153
					idxuyengiap2=6158
	else if a==20 then --5%
					idxuyengiap=6154	
					idxuyengiap2=6159					
					end
				end
			end
			end
	end


	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Kim Nguyªn B¶oyªn Y Ph¸ Gi¸p 4", tbProp = {0,6149}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 2},
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4919,1,1},nCount = 1000},
                {szName = "Ngäc C­êng Hãa Nguyªn LiÖu", tbProp = {6,1,4913,1,1},nCount = 100},
		--		{szName="Ng©n L­îng",nJxb=200000000,nCount=1},
			},
			tbProduct = {szName="Kim Nguyªn B¶oyªn Y Ph¸ Gi¸p 4--> Kim Nguyªn B¶oyªn Y Ph¸ Gi¸p 5", tbProp={0, idxuyengiap}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.04
		},	
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Kim Nguyªn B¶oyªn Y Ph¸ Gi¸p 5", tbProp = {0,{6150,6154}}, nQuality = 1 },
				 {szName = "Ngò Linh KiÓm §Þnh Phï", tbProp = {6,1,3007,1,1},nCount = 1},
                 {szName = "Ngò Linh Quy Nguyªn Phï", tbProp = {6,1,3008,1,1},nCount = 1},
				  {szName = "Trïng LuyÖn Ngäc", tbProp = {6,1,4830,1,1},nCount = 1},
				   {szName = "Ngäc C­êng Hãa Nguyªn LiÖu", tbProp = {6,1,4913,1,1},nCount = 5},
			},
			tbProduct = {szName="Trïng LuyÖn Kim Nguyªn B¶oyªn Y Ph¸ Gi¸p 5", tbProp={0, idxuyengiap}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		               [3] = 
		{
			tbMaterial = 
			{
				{szName = "Kim Nguyªn B¶oyªn Y Ph¸ Gi¸p 5", tbProp = {0,{6150,6154}}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0},nCount = 1},
               {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 4},
                {szName = "§¹i Tinh Ngäc", tbProp = {6,1,4919,1,1},nCount = 2000},
                {szName = "Ngäc C­êng Hãa Nguyªn LiÖu", tbProp = {6,1,4913,1,1},nCount = 200},
			},
			tbProduct = {szName="Kim Nguyªn B¶oyªn Y Ph¸ Gi¸p 5--> Kim Nguyªn B¶oyªn Y Ph¸ Gi¸p 6", tbProp={0, idxuyengiap2}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
				               [4] = 
		{
			tbMaterial = 
			{
				{szName = "Kim Nguyªn B¶oyªn Y Ph¸ Gi¸p 6", tbProp = {0,{6155,6159}}, nQuality = 1 },
				 {szName = "Ngò Linh KiÓm §Þnh Phï", tbProp = {6,1,3007,1,1},nCount = 1},
                 {szName = "Ngò Linh Quy Nguyªn Phï", tbProp = {6,1,3008,1,1},nCount = 1},
				  {szName = "Trïng LuyÖn Ngäc", tbProp = {6,1,4830,1,1},nCount = 1},
				   {szName = "Ngäc C­êng Hãa Nguyªn LiÖu", tbProp = {6,1,4913,1,1},nCount = 5},
			},
			tbProduct = {szName="Trïng LuyÖn Kim Nguyªn B¶oyªn Y Ph¸ Gi¸p 6", tbProp={0, idxuyengiap2}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("%s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
	
end 




function doithuoctinh_phiphong()

local tbSay = 
{

"§æi Thuéc TÝnh Cho Phi Phong 6 /doithuoctinh6",
"§æi Thuéc TÝnh Cho Phi Phong 7/doithuoctinh7",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ",getn(tbSay),tbSay)
	
end 

function doithuoctinh7()

local tbSay = 
{

"Ta Muèn §æi Sang PTVL/#doithuoctinhff7(1)",
"Ta Muèn §æi Sang Kh¸ng B¨ng/#doithuoctinhff7(2)",
"Ta Muèn §æi Sang Kh¸ng L«i/#doithuoctinhff7(3)",
"Ta Muèn §æi Sang Kh¸ng Háa/#doithuoctinhff7(4)",
"Ta Muèn §æi Sang Kh¸ng §éc/#doithuoctinhff7(5)",
"Ta Muèn §æi Sang Kh¸ng XSTK/#doithuoctinhff7(6)",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ",getn(tbSay),tbSay)
	
end

function doithuoctinhff7(luachon)
suluachon=luachon
	szDescription = format("Phi phong Ngù Phong 7 t­¬ng øng \n.1 B¸ch NghÖ Tinh Th¹ch\n.1 B¸ch NghÖ Tinh Ngäc\n ChØ Bá FF7 vµo « nhÐ ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "run_doithuoctinhff7", "no", 1)

		
end


function run_doithuoctinhff7(nCount)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/doithuoctinh7", "Ta xin th«i")
		return
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhthach= CalcEquiproomItemCount(6,1,4904,-1) 
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
				if nQuality ~=1 or (nGoldEquipIdxFF < 6084 or nGoldEquipIdxFF >6113) then
		 
					Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
					return
				end
						if bachnghetinhthach<1 or bachnghetinhngoc <1 then
					Say("Kh«ng §ñ 1 B¸ch NghÖ Tinh Ngäc HoÆc 1 B¸ch NghÖ Thiªn Th¹ch", 1, "§Ó Ta Xem L¹i")
					return
				end	
					

				if nGoldEquipIdxFF>=6084 and nGoldEquipIdxFF<=6088 then
					thutu_nguyenlieu=1
					else if nGoldEquipIdxFF>=6089 and nGoldEquipIdxFF<=6093 then
					thutu_nguyenlieu=2
					else if nGoldEquipIdxFF>=6094 and nGoldEquipIdxFF<=6098 then
					thutu_nguyenlieu=3
					else if nGoldEquipIdxFF>=6099 and nGoldEquipIdxFF<=6103 then
					thutu_nguyenlieu=4
					else if nGoldEquipIdxFF>=6104 and nGoldEquipIdxFF<=6108 then
					thutu_nguyenlieu=5
					else if nGoldEquipIdxFF>=6109 and nGoldEquipIdxFF<=6113 then
					thutu_nguyenlieu=6
					end
					end
					end
					end
					end
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(1, 6,1, 4904,-1)
				ConsumeEquiproomItem(1, 6,1, 30355,-1)
				idcanadd=nGoldEquipIdxFF+(suluachon-thutu_nguyenlieu)*5
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,idcanadd},nQuality=1,nCount=1},}, "test", 1);	
					WriteLogPro("dulieu/doithuoctinhff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep FF tu "..thutu_nguyenlieu.." den "..suluachon.."--"..nGoldEquipIdxFF.."\n");	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong 7 t­¬ng øng")
end
function nangcapphiphong()

local tbSay = 
{

"N©ng CÊp Phi phong Ngù Phong-->Phi Phong PhÖ Quang/#checknguyenlieunangcap()",
"N©ng CÊp Phi Phong PhÖ Quang-->Phi Phong PhÖ Quang Tinh X¶o (KTC)/#nangcapphequangtinhxao()",
"T¨ng Sao Cho Phi Phong PhÖ Quang/#tangsaophequang()",
"Th«i ta kh«ng muèn n÷a/no"
}
Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ",getn(tbSay),tbSay)
	
end 
function tangsaophequang()

	szDescription = format("Phi phong Ngù Phong Tinh X¶o t­¬ng øng \n.5-6 Tèn 2000 Tinh Ngäc\n.6-7 Tèn 4000 Tinh Ngäc\n.7-8 Tèn 6000 Tinh Ngäc\n.8-9 Tèn 8000 Tinh Ngäc\n.9-10 Tèn 10000 Tinh Ngäc\n   ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_tangsaophequang", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
end


function Run_tangsaophequang(nCount)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "Ta xin th«i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local tinhngoc= CalcEquiproomItemCount(6,1,4806,-1) 
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
	--	Msg2Player(" Chóc mõng "..nQuality.." *************** "..nGoldEquipIdxFF.."" )
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
		if nQuality ~=1 or (nGoldEquipIdxFF < 6078 or nGoldEquipIdxFF >6113) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
		end
		if nQuality ~=1 or (nGoldEquipIdxFF >= 6078 and nGoldEquipIdxFF <=6083) then
		 local soluongtinhngoc=2000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ 2000 Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				if nGoldEquipIdxFF==6078 then
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6084},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6079 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6089},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6080 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6094},nQuality=1,nCount=1},}, "test", 1);	
					elseif nGoldEquipIdxFF==6081 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6099},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6082 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6104},nQuality=1,nCount=1},}, "test", 1);
					elseif nGoldEquipIdxFF==6083 then  
							tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,6109},nQuality=1,nCount=1},}, "test", 1);									
					end
					Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang 6* t­¬ng øng")					
		end

		if nQuality ~=1 or (nGoldEquipIdxFF >= 6084 and nGoldEquipIdxFF <=6113) then
			if nGoldEquipIdxFF==6084 or nGoldEquipIdxFF==6089 or nGoldEquipIdxFF==6094 or nGoldEquipIdxFF==6099 or nGoldEquipIdxFF==6104 or nGoldEquipIdxFF==6109 then 
			local soluongtinhngoc=4000
				if tinhngoc< soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang 7* t­¬ng øng")
			end	
			
			if nGoldEquipIdxFF==6085 or nGoldEquipIdxFF==6090or nGoldEquipIdxFF==6095 or nGoldEquipIdxFF==6100 or nGoldEquipIdxFF==6105 or nGoldEquipIdxFF==6110 then 
			local soluongtinhngoc=6000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang 8* t­¬ng øng")
			end	
			if nGoldEquipIdxFF==6086 or nGoldEquipIdxFF==6091or nGoldEquipIdxFF==6096 or nGoldEquipIdxFF==6101 or nGoldEquipIdxFF==6106 or nGoldEquipIdxFF==6111 then 
			local soluongtinhngoc=8000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang 9* t­¬ng øng")
			end

			if nGoldEquipIdxFF==6087 or nGoldEquipIdxFF==6092 or nGoldEquipIdxFF==6097 or nGoldEquipIdxFF==6102 or nGoldEquipIdxFF==6107 or nGoldEquipIdxFF==6112 then 
			local soluongtinhngoc=10000
				if tinhngoc<soluongtinhngoc then
					Say("Kh«ng §ñ "..soluongtinhngoc.." Tinh Ngäc.", 1, "§Ó Ta Xem L¹i")
					return
				end
				RemoveItemByIndex(nItemIndex)
				ConsumeEquiproomItem(soluongtinhngoc, 6,1, 4806,-1)
				tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+1},nQuality=1,nCount=1},}, "test", 1);	
				Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang 10* t­¬ng øng")
			end	
end
		end
	
	

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function nangcapphequangtinhxao()
	szDescription = format("Phi phong PhÖ Quang t­¬ng øng \nB¸ch NghÖ Tinh Ngäc + B¸ch NghÖ Thiªn Th¹ch.\n ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_nangcapphequangtinhxao", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_nangcapphequangtinhxao(nCount)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "Ta xin th«i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachnghetinhngoc= CalcEquiproomItemCount(6,1,30355,-1) 
		local bachnghethienthach= CalcEquiproomItemCount(6,1,4904,-1)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		--local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	--	Msg2Player(" Chóc mõng "..tilethanhcong.." *************** "..nGoldEquipIdxFF.."" )

		if bachnghethienthach <1 or bachnghetinhngoc<1 then
		Say("Nguyªn LiÖu Kh«ng §ñ Råi B¹n ¥i")
		return 
		end
		if nQuality ~=1 or (nGoldEquipIdxFF < 6072 or nGoldEquipIdxFF >6077) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 1, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
		 
		end
		
		if nQuality ==1 and (nGoldEquipIdxFF >= 6072 and nGoldEquipIdxFF <= 6077) then

			RemoveItemByIndex(nItemIndex)
			ConsumeEquiproomItem(1, 6,1, 30355,-1)
			ConsumeEquiproomItem(1, 6,1, 4904,-1)
			tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+6},nQuality=1,nCount=1},}, "test", 1);
			Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang Tinh Xao t­¬ng øng")
		 else Say("Nguyªn LiÖu Kh«ng §ñ Råi B¹n ¥i")
		end
		
		end
	
	
	
	--------------------------------------------------------
function nangcapphiphong6len7()
	szDescription = format("Phi phong Ngù Phong t­¬ng øng \nKh«ng bá B¸ch LuyÖn Thµnh C­¬ng vµo trong n.\n ")
	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "Run_nangcapphiphong6len7", "no", 1)
		--GiveItemUI("Gia H¹n Phï", "Xin h·y bá 1 mãn trang søc cã h¹n sö dông vµo « bªn d­íi", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")

end

function Run_nangcapphiphong6len7(nCount)
local henxui= random(1,10)
	if nCount ~= 1 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "Ta xin th«i")
	end
	
		local nItemIndex = GetGiveItemUnit(1)
		local bachluyen= CalcEquiproomItemCount(6,1,4906,-1)
		local nGoldEquipIdxFF = GetGlodEqIndex(nItemIndex)
		--local szItemName = GetItemName(nItemIndex)
		local nItemTime = ITEM_GetExpiredTime(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex)
		local tilethanhcong =0
	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	--	Msg2Player(" Chóc mõng "..tilethanhcong.." *************** "..nGoldEquipIdxFF.."" )

		
		
		if nQuality ~=1 or (nGoldEquipIdxFF < 6037 and nGoldEquipIdxFF >6042) then
		 
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/Make_Weapons", "no")
		 
		end

			if nQuality ==1 and (nGoldEquipIdxFF >= 6037 and nGoldEquipIdxFF <= 6042) then
								if bachluyen>=80 then
									tilethanhcong=10
								else if bachluyen <=79 and bachluyen >76 then
								tilethanhcong=5
								else if bachluyen <=76 and bachluyen>70 then
								tilethanhcong = 2 
								else if bachluyen <=70 and bachluyen >65 then
								tilethanhcong = random(1,2)
								else if bachluyen<=65 and bachluyen>60 then
								tilethanhcong =1
								else if bachluyen<=60 and bachluyen>50 then
								tilethanhcong=random(0,1)
								else if bachluyen<=50 then
										tilethanhcong=0
								 end
								 end
								 end
								 end
								 
								 end
								 end
								 end
		--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")
		if tilethanhcong==10 then
															RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(80, 6,1, 4906,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+35},nQuality=1,nCount=1},}, "test", 1);
													Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang t­¬ng øng")
													WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi 80 \n");		
		return
		end
											 if henxui<=tilethanhcong then
													RemoveItemByIndex(nItemIndex)
														ConsumeEquiproomItem(bachluyen, 6,1, 4906,-1)
													tbAwardTemplet:GiveAwardByList({{szName = "",tbProp={0,nGoldEquipIdxFF+35},nQuality=1,nCount=1},}, "test", 1);
													Msg2Player(" Chóc mõng b¹n ®· luyÖn thµnh c«ng nhËn ®­îc Phi Phong PhÖ Quang t­¬ng øng")
													WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong ff7 voi "..bachluyen.."\n");	
									--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")													
												else 
															ConsumeEquiproomItem(80, 6,1, 4906,-1)
															Msg2Player(" Chia buån cïng gia quyÕn - Chóc b¹n may m¾n lÇn sau nhÐ")
															WriteLogPro("dulieu/epff7.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep Xit FF voi "..bachluyen.."\n");	
															--	Msg2Player(" Ti le "..tilethanhcong.."--------------"..henxui.."--")		
											 end
		 else Say("Nguyªn LiÖu Kh«ng §ñ Råi B¹n ¥i")
		end
		
		end
	
function checknguyenlieunangcap()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	if NpcName2Replace then szNpcName = NpcName2Replace(szNpcName) end
	local tbDailog = DailogClass:new(szNpcName);
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex);
	
	EventSys:GetType("AddNpcOption"):OnEvent(szNpcName, tbDailog, nNpcIndex)
local bachluyen= CalcEquiproomItemCount(6,1,4906,-1) --B¸ch LuyÖn Thµnh C­¬ng
--local tilethanhcong= 100-(80-bachluyen)
	local tilethanhcong =floor(bachluyen*10/80) 

local tbSay = 
{
"Ta ch¾c ch¾n tiÕp tôc, ta sÏ bá FF6 vµo « luyÖn/#nangcapphiphong6len7()",
"Th«i ta kh«ng muèn n÷a/no"
}
hienthitile=tilethanhcong*10
if bachluyen>80 then


Say( "<color=green>Nhµ ng­¬i ®ang cã <color=yellow> >80 viªn<color> <color=white><B¸ch LuyÖn Thµnh C­¬ng><color> rong hµnh trang v× vËy tØ lÖ thµnh c«ng lµ 100%, TiÕp tôc chø ?",getn(tbSay),tbSay)
else 
Say( "<color=green><color=green>Nhµ ng­¬i ®ang cã <color=yellow> "..bachluyen.." viªn <color> <color=white><B¸ch LuyÖn Thµnh C­¬ng><color>\n trong hµnh trang v× vËy tØ lÖ thµnh c«ng lµ  thÊp \n TiÕp tôc chø ?",getn(tbSay),tbSay)
end
end


tbEquip2Item = tbActivityCompose:new()

function tbEquip2Item:CheckItem(tbItem ,nItemIndex)
	if IsMyItem(nItemIndex) ~= 1 then
		return
	end
	
	local tbRecItem = self:MakeItem(nItemIndex)
	local nExpiredTime = ITEM_GetExpiredTime(nItemIndex)
	local nLeftUsageTime = ITEM_GetLeftUsageTime(nItemIndex)
	if nExpiredTime ~= 0 or nLeftUsageTime ~= 4294967295 then
		return 
	end
	
	for k,v in tbItem do
		if k ~= "szName" and type(v) ~= "table" and v ~= -1 and tbRecItem[k] and v~= tbRecItem[k] then
			return
		elseif  k == "tbProp" and type(v) == "table" then
			local tbProp = tbRecItem[k]
			for k1,v1 in v do
				if type(v1) ~= "table" then
					if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and v1~= tbProp[k1] then
						return 
					end
				else
					if  k1 ~= "n" and v1 ~= -1 and tbProp[k1] and ( v1[1] > tbProp[k1] or tbProp[k1] > v1[2] )  then
						return 
					end
				end
			end
		end
	end		
	for key, value in tbItem do 
		if strfind(key, "Limit") and  type(value) == "function" then
			if value(tbItem, nItemIndex) ~= 1 then
				return
			end
		end
	end			
	return 1
end

function WantBuyBaoshi()
	local nPrice = 400
	local szTitle = format("Ng­¬i nghÜ ®æi lo¹i b¶o th¹ch nµo ®©y",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
				
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Trang bÞ  Kim ¤", tbProp = {0, {2055,2284}}, nQuality = 1 },
                  {szName = "TiÒn ®ång", tbProp = {4,1496,1,1},nCount = 5},
			},
			tbProduct = {szName="Kim ¤ LÖnh", tbProp={6, 1, 2349, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
              [2] = 
		{
			tbMaterial = 
			{
				{szName = "Trang bÞ B¹ch Hæ", tbProp = {0, {2285,2514}}, nQuality = 1 },
                            {szName = "TiÒn ®ång", tbProp = {4,1496,1,1},nCount = 10},
			},
			tbProduct = {szName="B¹ch Hæ LÖnh", tbProp={6, 1, 2357, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§æi lÊy %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end
-------------------che tao phi phong  ------------------------------ Quý---------------

function chetaophiphong()
--	do Say("Chøc n¨ng t¹m thêi ch­a më, xin quay l¹i sau...") return end
	local tab_Content = {
           "Khai Th«ng Phi Phong/khaithongphiphong",
           "Kh¶m Dßng Cho Phi Phong §· Khai Th«ng /khamdongff6",
		"Th«i kh«ng cÇn n÷a./Quit"
	}
	Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ", getn(tab_Content), tab_Content);
end;
---------------------------------------
function doithuoctinh6()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
		
				
		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
                {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			--	{szName="Ng©n L­îng",nJxb=100000000,nCount=1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(PLVL)", tbProp={0, 6037}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				  {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng B¨ng)", tbProp={0, 6038}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

		  [3] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng L«i)", tbProp={0, 6039}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[4] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng Háa)", tbProp={0, 6040}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
					[5] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng §éc)", tbProp={0, 6041}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
							[6] = 
		{
			tbMaterial = 
			{
			{szName = "Phi phong Ngù Phong(§· Kh¶m)", tbProp = {0,{6037,6042}}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				   {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(XSTK)", tbProp={0, 6042}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§æi lÊy %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end
---------------------------------------
function khamdongff6()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{

		
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(PLVL)", tbProp={0, 6037}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
		
		               [2] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
				{szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng B¨ng)", tbProp={0, 6038}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	

		  [3] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng L«i)", tbProp={0, 6039}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[4] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng Háa)", tbProp={0, 6040}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
					[5] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(Kh¸ng §éc)", tbProp={0, 6041}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
			[6] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong(§· Khai Th«ng)", tbProp = {0,6044}, nQuality = 1 },
                 {szName = "B¸ch NghÖ Thiªn Th¹ch", tbProp = {6,1,4904,1,0,0},nCount = 1},
			 {szName = "B¸ch NghÖ Tinh Ngäc", tbProp = {6,1,30355,1,0,0},nCount = 1},
			},
			tbProduct = {szName="Phi phong Ngù Phong(XSTK)", tbProp={0, 6042}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}

		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§æi lÊy %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end
---------------------------------------
function khaithongphiphong()
	local nPrice = 400
	local szTitle = format("Ng­¬i muèn lµm ®Ñp ­",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
               [1] = 
		{
			tbMaterial = 
			{
				{szName = "Phi phong Ngù Phong", tbProp = {0,6036}, nQuality = 1 },
                 {szName = "Tinh Ngäc", tbProp = {6,1,4806},nCount = 5000},
			},
			tbProduct = {szName="Phi phong Ngù Phong(§· Khai Th«ng)", tbProp={0, 6044}, nQuality = 1},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},	
	}
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§æi lÊy %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end
-------------------che tao an------------------------------

function epan()
	do Say("Chøc n¨ng t¹m thêi ch­a më, xin quay l¹i sau...") return end
	local tab_Content = {
           "N©ng cÊp Ên 4 -> 5/nangcapan5",
           "N©ng cÊp Ên 5 -> 6/nangcapan6",
	   "N©ng cÊp Ên 6 -> 7/nangcapan7",
	   "N©ng cÊp Ên 7 -> 8/nangcapan8",
	 --  "N©ng cÊp Ên 8 -> 9/nangcapan9",
	--   "N©ng cÊp Ên 9 -> 10/nangcapan10",
	  


	
		"Th«i kh«ng cÇn n÷a./Quit"
	}
	Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ", getn(tab_Content), tab_Content);
end;


---------nang cap an 5-----------------------

function nangcapan5()
	local title = "N©ng cÊp Ên 5"
	g_GiveItemUI(title, "§Ó n©ng cÊp Ên 4 -> Ên 5 vÜnh viÔn cÇn ®Æt vµo 1 Ên 4 vÜnh viªn. Hµnh trang ph¶i cã  200 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 200 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn Ên 4 ", {giveokan5}, nil, nil)


end


function giveokan5(putCount)
	local tban = {
		[1]={	
			{"Ngò hµnh Ên (c­êng hãa) cÊp 4 ",3208},
			{"Ngò hµnh Ên (nh­îc hãa) cÊp 4",3218},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo Ên 4 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Ên cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng Ên 4")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 10 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 10 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 200) then
				rate = 200
			end
			ConsumeEquiproomItem(10, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.5
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


-----------------------nang cap an 6--------------------------


function nangcapan6()
	local title = "N©ng cÊp Ên 6"
	g_GiveItemUI(title, "§Ó n©ng cÊp Ên 5 -> Ên 6 vÜnh viÔn cÇn ®Æt vµo 1 Ên 5 vÜnh viªn. Hµnh trang ph¶i cã 20 Hoµng Kim Th¹ch vµ 250 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 250 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn Ên 5 ", {giveokan6}, nil, nil)


end


function giveokan6(putCount)
	local tban = {
		[1]={	
			{"Ngò hµnh Ên (c­êng hãa) cÊp 5 ",3209},
			{"Ngò hµnh Ên (nh­îc hãa) cÊp 5",3219},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo Ên 5 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Ên cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng Ên 5")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 20 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 20 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 250) then
				rate = 250
			end
			ConsumeEquiproomItem(20, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.4
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


----------------------nang cap an 7--------------------------------------

function nangcapan7()
	local title = "N©ng cÊp Ên 7"
	g_GiveItemUI(title, "§Ó n©ng cÊp Ên 6 -> Ên 7 vÜnh viÔn cÇn ®Æt vµo 1 Ên 6 vÜnh viªn. Hµnh trang ph¶i cã 50 Hoµng Kim Th¹ch vµ 500 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 500 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn Ên 6 ", {giveokan7}, nil, nil)


end


function giveokan7(putCount)
	local tban = {
		[1]={	
			{"Ngò hµnh Ên (c­êng hãa) cÊp 6 ",3210},
			{"Ngò hµnh Ên (nh­îc hãa) cÊp 6",3220},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo Ên 6 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Ên cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng Ên 6")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 50 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 500) then
				rate = 500
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.2
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end





------------------------------nang cap an 8--------------------------------------------

function nangcapan8()
	local title = "N©ng cÊp Ên 8"
	g_GiveItemUI(title, "§Ó n©ng cÊp Ên 7 -> Ên 8 vÜnh viÔn cÇn ®Æt vµo 1 Ên 7 vÜnh viªn. Hµnh trang ph¶i cã 250 Hoµng Kim Th¹ch vµ 2500 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 2500 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn Ên 7 ", {giveokan8}, nil, nil)


end


function giveokan8(putCount)
	local tban = {
		[1]={	
			{"Ngò hµnh Ên (c­êng hãa) cÊp 7 ",3211},
			{"Ngò hµnh Ên (nh­îc hãa) cÊp 7",3221},
			

			

		},

		
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo Ên 6 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Ên cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local tban = tban[1]
		local minId = tban[1][2]
		local maxId = tban[2][2]
				
		if (goldEquipIndex ~= minId) and (goldEquipIndex ~= maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng Ên 7")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 250 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 250 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 2500) then
				rate = 2500
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.04
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 1)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 1)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


--------------------------------------------------------------------------------------


-------------------che tao phi phong ----------------------

function epphiphong()
	local tab_Content = {
           "N©ng cÊp phi ph«ng 4 -> 5/nangcappp5",
           "N©ng cÊp phi ph«ng 5 -> 6/nangcappp6",
	   "N©ng cÊp phi ph«ng 6 -> 7/nangcappp7",
	   "N©ng cÊp phi ph«ng 7 -> 8/nangcappp8",
	  -- "N©ng cÊp phi ph«ng 8 -> 9/nangcappp9",
	 --  "N©ng cÊp phi ph«ng 9 -> 10/nangcappp10",
	--   "N©ng cÊp phi ph«ng 10 -> siªu cÊp/nangcapppsc",


	
		"Th«i kh«ng cÇn n÷a./Quit"
	}
	Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn chÕ t¹o trang bÞ nµo?  ", getn(tab_Content), tab_Content);
end;

----------nang cap ff5------------------------------------------------


function nangcappp5()
	local title = "N©ng cÊp Phi phong 5"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 4 -> phi phong 5 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 4 vÜnh viªn. Hµnh trang ph¶i cã 250 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 250 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 4 ", {giveokff5}, nil, nil)


end



function giveokff5(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi Phong Ng¹o TuyÕt (dÞch chuyÓn tøc thêi)",3468},
			{"Phi Phong Ng¹o TuyÕt (hãa gi¶i s¸t th­¬ng)",3469},
			

		},

		[2]={
			{"Phi phong K×nh L«i (dÞch chuyÓn tøc thêi)",3470},
			{"Phi phong K×nh L«i (hãa gi¶i s¸t th­¬ng)",3471},
			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 4 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[2][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 4")
			return
		
		end
		
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 250) then
				rate = 250
			end
			

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.4
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 2)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 2)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


-----------phi phong 6 --------------

function nangcappp6()
	local title = "N©ng cÊp Phi phong 6"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 5 -> phi phong 6 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 5 vÜnh viªn. Hµnh trang ph¶i  500 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 500 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 5 ", {giveokff6}, nil, nil)


end


function giveokff6(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong K×nh L«i (dÞch chuyÓn tøc thêi)",3470},
			{"Phi phong K×nh L«i (hãa gi¶i s¸t th­¬ng)",3471},
			{"Phi phong K×nh L«i (Träng kÝch)",3472},

			

		},

		[2]={
			{"Phi phong Ngù phong (dÞch chuyÓn tøc thêi)",3473},
			{"Phi phong Ngù phong (hãa gi¶i s¸t th­¬ng)",3474},
			{"Phi phong Ngù phong (Träng kÝch)",3475},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 5 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 5")
			return
		
		end
		
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 500) then
				rate = 500
			end
			
			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.2
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end

------------------------nang cap ff 7 --------------------------------

function nangcappp7()
	local title = "N©ng cÊp Phi phong 7"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 6 -> phi phong 7 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 6 vÜnh viªn. Hµnh trang ph¶i cã 50 Hoµng Kim Th¹ch vµ 1000 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 1000 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 6 ", {giveokff7}, nil, nil)


end


function giveokff7(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong Ngù phong (dÞch chuyÓn tøc thêi)",3473},
			{"Phi phong Ngù phong (hãa gi¶i s¸t th­¬ng)",3474},
			{"Phi phong Ngù phong (Träng kÝch)",3475},
			

		},

		[2]={
			{"Phi phong PhÖ Quang (dÞch chuyÓn tøc thêi)",3476},
			{"Phi phong PhÖ Quang (hãa gi¶i s¸t th­¬ng)",3477},
			{"Phi phong PhÖ Quang (Träng kÝch)",3478},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 6 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 6")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 50 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 1000) then
				rate = 1000
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.1
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end




--------------nang cap ff8------------------------------------------


function nangcappp8()
	local title = "N©ng cÊp Phi phong 8"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 7 -> phi phong 8 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 7 vÜnh viªn. Hµnh trang ph¶i cã 50 Hoµng Kim Th¹ch vµ 2500 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 2500 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 7 ", {giveokff8}, nil, nil)


end


function giveokff8(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong PhÖ Quang (dÞch chuyÓn tøc thêi)",3476},
			{"Phi phong PhÖ Quang (hãa gi¶i s¸t th­¬ng)",3477},
			{"Phi phong PhÖ Quang (Träng kÝch)",3478},			

		},

		[2]={
			{"Phi phong KhÊp ThÇn (dÞch chuyÓn tøc thêi)",3479},
			{"Phi phong KhÊp ThÇn (hãa gi¶i s¸t th­¬ng)",3480},
			{"Phi phong KhÊp ThÇn (Träng kÝch)",3481},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 7 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 7")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 50 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 50 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 2500) then
				rate = 2500
			end
			ConsumeEquiproomItem(50, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.04
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end


---------------------------nang cap ff9-----------------------------------------
function nangcappp9()
	local title = "N©ng cÊp Phi phong 9"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 8 -> phi phong 9 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 8 vÜnh viªn. Hµnh trang ph¶i cã 500 Hoµng Kim Th¹ch vµ 5000 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 5000 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 8 ", {giveokff9}, nil, nil)


end


function giveokff9(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong KhÊp ThÇn (dÞch chuyÓn tøc thêi)",3479},
			{"Phi phong KhÊp ThÇn (hãa gi¶i s¸t th­¬ng)",3480},
			{"Phi phong KhÊp ThÇn (Träng kÝch)",3481},			

		},

		[2]={
			{"Phi phong K×nh Thiªn (dÞch chuyÓn tøc thêi)",3482},
			{"Phi phong K×nh Thiªn (hãa gi¶i s¸t th­¬ng)",3483},
			{"Phi phong K×nh Thiªn (Träng kÝch)",3484},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 8 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 8")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 500 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 500 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 5000) then
				rate = 5000
			end
			ConsumeEquiproomItem(500, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.02
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end




------------------------------nag cap ff10------------------------------------------------



function nangcappp10()
	local title = "N©ng cÊp Phi phong 10"
	g_GiveItemUI(title, "§Ó n©ng cÊp phi phong 9 -> phi phong 10 vÜnh viÔn cÇn ®Æt vµo 1 phi phong 9 vÜnh viªn. Hµnh trang ph¶i cã 1000 Hoµng Kim Th¹ch vµ 10000 tinh ngäc. nÕu l­îng tinh ngäc Ýt h¬n 10000 cã thÓ thÊt b¹i. NÕu n©ng cÊp thÊt b¹i sÏ mÊt hÕt toµn bé nguyªn liÖu vµ gi÷ nguyªn phi phong 8 ", {giveokff10}, nil, nil)


end


function giveokff10(putCount)
	local tbPhiPhong = {
		[1]={	
			{"Phi phong K×nh Thiªn (dÞch chuyÓn tøc thêi)",3482},
			{"Phi phong K×nh Thiªn (hãa gi¶i s¸t th­¬ng)",3483},
			{"Phi phong K×nh Thiªn (Träng kÝch)",3484},			

		},

		[2]={
			{"Phi phong V« Cùc (dÞch chuyÓn tøc thêi)",3485},
			{"Phi phong V« Cùc (hãa gi¶i s¸t th­¬ng)",3486},
			{"Phi phong V« Cùc (Träng kÝch)",3487},			

		},
}

	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng ®Æt vµo phi phong 9 vÜnh viÔn")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bi ®ang  trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end
	local ntime = ITEM_GetExpiredTime(itemIndex)
	if (ntime > 0) then
		Talk(1,"", "Phi phong cã thêi h¹n kh«ng thÓ n©ng cÊp")
		return
	end
	
	

	local goldEquipIndex = GetGlodEqIndex(itemIndex)
		local phiPhongTable = tbPhiPhong[1]
		local minId = phiPhongTable[1][2]
		local maxId = phiPhongTable[3][2]
				
		if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 
			Talk(1,"", "Xin vui lßng ®Ët vµo ®óng phi phong 9")
			return
		
		end
		if (CalcEquiproomItemCount(6,1,4412,-1) < 1000 ) then
			Talk(1,"", "Trong hµnh trang cã Ýt nhÊt 1000 Hoµng Kim Th¹nh Th¹ch")
			return
		end
		if (RemoveItemByIndex(itemIndex) == 1) then
			local requireIngradent = CalcEquiproomItemCount(6, 1, 30557, -1)		
					
			local rate = CalcEquiproomItemCount(6, 1, 30557 , -1);

			if (rate >= 10000) then
				rate = 10000
			end
			ConsumeEquiproomItem(1000, 6, 1, 4412, -1)

			ConsumeEquiproomItem(rate, 6, 1, 30557, -1)

			local rnd = random(0, 22) + rate * 0.01
			if (rnd >= 100) then			
			
				AddGoldItem(0, goldEquipIndex + 3)
				
			

				logExchangeItem(goldEquipIndex, rate, goldEquipIndex + 3)	
			
			else
				AddGoldItem(0, goldEquipIndex)
				Say("N©ng cÊp thÊt b¹i. B¹n ®· mÊt hªt nguyªn liÖu. L©n nµy b¹n sö dung: <color=metal>"..rate.." tinh ngäc")

				logExchangeItem(goldEquipIndex, rate, 0)				
			end
		end


	
end



----------------------------------nang cap ff sieu cap-----------------------------------------------------

function nangcapppsc()

do Say("TÝnh n¨ng hiÖn t¹i ch­a më, xin quay l¹i sau...") return end


end


-----------------------------------------------------


function cachchetao()
	local tab_Content = {
        --   "Ta muèn xem c¸ch chÕ t¹o trang bÞ XÝch L©n/chetaoxichlan",
       --    "Xem c¸ch chÕ t¹o trang bÞ Minh Ph­îng /chetaominhphuong",
	--"Xem c¸ch chÕ t¹o trang bÞ §»ng Long/chetaodanglong",
	
		"Th«i kh«ng b¸n n÷a./Quit"
	}
	Say("TiÖm cña ta gi÷ bÝ quyÕt chÕ t¹o tÊt c¶ c¸c trang bÞ cña thÕ giíi VLTK. §¹i hiÖp muèn t×m hiÓu c¸ch chÕ t¹o trang bÞ nµo?  ", getn(tab_Content), tab_Content);
end;

function chetaoxichlan()
Talk(1,"", "<color=yellow> ChÕ t¹o trang bÞ XÝch L©n cÇn 1 mãn ®å B¹ch Hæ + 2 ThÇn BÝ Kho¸ng Th¹ch + 20 ®å phæ XÝch L©n cïng lo¹i. Chó ý chØ bá ®å b¹ch hæ vµo « yªu cÇu, ThÇn bÝ Kho¸ng th¸ch vµ ®å phæ bá s½n trong hµnh trang kh«ng b¶o vµo « yªu cÇu")

end

function chetaominhphuong()
Talk(1,"", "<color=yellow> ChÕ t¹o trang bÞ Minh Ph­îng cÇn 1 mãn ®å XÝch L©n + 4 ThÇn BÝ Kho¸ng Th¹ch + 50 ®å phæ Minh Ph­îng cïng lo¹i. Chó ý: ChØ bá trang bÞ XÝch L©n vµo h«p tho¹i, ThÇn bÝ Kho¸ng th¸ch vµ ®å phæ bá s½n trong hµnh trang kh«ng b¶o vµo « yªu cÇu")

end

------------------------------------------------------------------------------------------

function chetaodanglong()
Talk(1,"", "<color=yellow> ChÕ t¹o trang bÞ §»ng Long cÇn 1 mãn ®å Minh Ph­îng + 6 ThÇn BÝ Kho¸ng Th¹ch + 100 ®å phæ §»ng Long cïng lo¹i. Chó ý: ChØ bá trang bÞ Minh Ph­îng vµo h«p tho¹i, ThÇn bÝ Kho¸ng th¸ch vµ ®å phæ bá s½n trong hµnh trang kh«ng b¶o vµo « yªu cÇu")

end 
--------------------------------------------------------------------------

function bachqua1()
local nIndex = AddStackItem(1,4,1496,1,1,0,0,0)
SyncItem(nIndex)
SetItemBindState(nIndex,-2)
end
-----------------------------------------------------------------------------------
--------------------------------------------------------------
------------------------------------------------------------------
----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
function doilenhbai()
	local nPrice = 400
	local szTitle = format("Ng­¬i nghÜ ®æi lo¹i b¶o th¹ch nµo ®©y",tostring(nPrice))
	local tbOpt = {}
	local tbFormulaList = 
	{
			
              [1] = 
		{
			tbMaterial = 
			{
				{szName="LÖnh bµi kim ¤", tbProp={6,1,2349,1,0,0}},
                            --{szName = "TiÒn ®ång(kh«ng khãa)", tbProp = {4,1496,1,1},nCount = 500},
                            {szName="ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398, 1, 0, 0}},
                            {szName="HuyÒn tinh kho¸ng th¹ch(cÊp 10)", tbProp={6,1,147,10,0,0}},
			},
			tbProduct = {szName="LÖnh bµi B¹ch Hæ", tbProp={6, 1, 2357, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
		},

		 [2] = 
		{
			tbMaterial = 
			{
				{szName="LÖnh bµi B¹ch Hæ", tbProp={6,1,2357,1,0,0}},
                            --{szName = "TiÒn ®ång(kh«ng khãa)", tbProp = {4,1496,1,1},nCount = 500},
                            {szName="ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398, 1, 0, 0},nCount=3},
                            {szName="HuyÒn tinh kho¸ng th¹ch(cÊp 10)", tbProp={6,1,147,10,0,0}},
			},
			tbProduct = {szName="LÖnh bµi XÝch L©n", tbProp={6, 1, 2370, 1, 0, 0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
			

		},

		[3] = 
		{
			tbMaterial = 
			{
				{szName="LÖnh bµi XÝch L©n", tbProp={6,1,2370,1,0,0}},
                            {szName="ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398, 1, 0, 0},nCount=4},
                            {szName="HuyÒn tinh (cÊp 10)", tbProp={6,1,147,10,0,0},nCount=4},
				
			},
			tbProduct = {szName="LÖnh bµi Minh Ph­îng", tbProp={6,1,2371,1,0,0}},
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02
			

		},

          }
		
	local tbOpt = {}
	local pEventType = EventSys:GetType("AddNpcOption")
	for i=1, getn(tbFormulaList) do
		local p = tbEquip2Item:new(tbFormulaList[i], "Equip2Stone", INVENTORY_ROOM.room_giveitem)
		local szOpt = format("§æi lÊy %s", tbFormulaList[i].tbProduct.szName)
		tinsert(tbOpt, {szOpt, p.ComposeGiveUI, {p}})
		-- Msg2SubWorld("<color=metal>B¹n "..GetName().." ®· n©ng cÊp thµnh c«ng tõ BHL lªn XÝch L©n lÖnh t¹i thî rÌn b¸ ®äa Ba L¨ng huyÖn !")
	end
	tinsert(tbOpt, {"Hñy bá"})
	CreateNewSayEx(szTitle, tbOpt);
end

function eptinhsuong()
	local title = "N©ng cÊp §å Tinh S­¬ng"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n  -1 ¸o hoÆc vò khÝ §»ng long.\n  -1000 Tö Tinh kho¸ng.\n  -1 Tinh S­¬ng LÖnh.\n  -10 kv cho ¸o, 20kv cho vò khÝ.\n\n+ Nguyªn liÖu t¨ng may m¾n:\n  -§å phæ Tinh S­¬ng(tèi ®a 10 c¸i).\n  - Tinh S­¬ng th¹ch th­îng(tèi ®a 50 c¸i)", {nangcaptinhsuong}, nil, nil)
end

function epnguyetkhuyen()
	local title = "N©ng cÊp §å NguyÖt KhuyÕn"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n-1 Trang bÞ Tinh S­¬ng \n-2000 Tö Tinh Kho¸ng Th¹ch.\n-1 NK LÖnh.\n\n+ Nguyªn liÖu t¨ng may m¾n:\n  -§å phæ NguyÖt KhuyÕt(tèi ®a 10 c¸i).\n  - NguyÖt KhuyÕn Tinh Th¹ch(tèi ®a 30 c¸i)", {nangcapnguyetkhuyen}, nil, nil)
end
function quynguyentinhsuong()
	local title = "N©ng cÊp §å Tinh S­¬ng"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n  -1 Trang bÞ tinh s­¬ng.\n  -1 kiÓm ®Þnh phï.\n  -1 quy nguyªn phï.", {doiruongtinhsuong}, nil, nil)
end
function quynguyentinhsuongmax()
	local title = "N©ng cÊp §å Tinh S­¬ng Max"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n  -1 Trang bÞ tinh s­¬ng.\n  -VK + ¸o : 50KNB.\n  -C¸c Mãn Kh¸c 10KNB.", {doiruongtinhsuongmax}, nil, nil)
end

function quynguyennguyetkhuyen()
	local title = "N©ng cÊp §å NguyÖt KhuyÕt"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n  -1 Trang bÞ NguyÖt KhuyÕt.\n  -1 kiÓm ®Þnh phï.\n  -1 quy nguyªn phï.\n  -1 Trïng LuyÖn Ngäc.", {doiruongnguyetkhuyet}, nil, nil)
end

function quynguyennguyetkhuyenmax()
	local title = "N©ng cÊp §å NguyÖt KhuyÕt Max"
	g_GiveItemUI(title, "+ Nguyªn liÖu b¾t buéc:\n  -1 Trang bÞ NguyÖt KhuyÕt Max.\n  Vò KhÝ -200 KNB.\n ¸o - 150 KNB.\n Cßn L¹i - 50KNB", {doiruongnguyetkhuyetmax}, nil, nil)
end




---------nang cap tinh suong

function nangcaptinhsuong(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi §»ng Long. Toµn bé nguyªn liÖu ®Ó ë hµnh trang. Chó ý ®å phæ tèi ®a 10 m¶nh mçi m·nh 5% thµnh c«ng, Tinh s­¬ng th¹ch 50 côc mçi côc 1% thµnh c«ng")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local danglongTable = configTS[1]		
	local minId = danglongTable[1][2]
	local maxId = danglongTable[getn(danglongTable)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	if typeItem > 1 then
		Talk(1,"", "Xin vui lßng bá vµo trang bÞ ®¨ng long ¸o hoÆc vò khÝ")
		return

		
	end
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi §»ng Long. Toµn bé nguyªn liÖu ®Ó ë hµnh trang. Chó ý ®å phæ tèi ®a 10 m¶nh mçi m·nh 5% thµnh c«ng, Tinh s­¬ng th¹ch tèi ®a 50 côc mçi côc 1% thµnh c«ng")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 4885, -1) < 1000) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1000 Tö Tinh Kho¸ng th¹ch Kho¸ng Th¹ch")
		return
	end
	if (CalcEquiproomItemCount(6,1,4882,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 LÖnh bµi Tinh S­¬ng")
		return
	end
      
      local nCash = GetCash()
	  
      if typeItem == 0 then
			if nCash < 100000000 then
				Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 10.000 v¹n ®Ó n©ng cÊp lªn ¸o gi¸p Tinh S­¬ng")
				return
			end
			
	  end
	  
	  if typeItem == 1 then
			if nCash < 200000000 then
				Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 20.000 v¹n ®Ó n©ng cÊp lªn vò khÝ Tinh S­¬ng")
				return
			end
			
	  end

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local dopho = 0
		
		if typeItem == 0 then 
			Pay(100000000) 
			dopho = 4883
		else 
			Pay(200000000)
			dopho = 4884
		end
		
		
	
		local rate1 = CalcEquiproomItemCount(6, 1, dopho , -1);
		local rate2 = CalcEquiproomItemCount(6,1,4881,-1)
		local nrate1 = rate1*3
		local nrate2 = rate2*1.4
		if (nrate2 > 70 ) then
			nrate2 = 70
		end
		if (nrate1 > 30) then
			nrate1 = 30
		end
		rate = nrate1 + nrate2
		if nrate1 > 30 then
			ConsumeEquiproomItem(10, 6, 1, dopho, -1)
		else
			ConsumeEquiproomItem(rate1, 6, 1, dopho, -1)
		end
		if nrate2 == 70 then
			ConsumeEquiproomItem(50, 6, 1, 4881, -1)

		else
		
			ConsumeEquiproomItem(rate2, 6, 1, 4881, -1)
		end
		ConsumeEquiproomItem(1000, 6, 1, 4885, -1)
		ConsumeEquiproomItem(1, 6, 1, 4882, -1)

		
		local rnd = random(0, 5) + rate
		if (rnd >= 100) then
			local addedId = 0
			if (itemType  == 0) then
				addedId = 4509
				tbAward = {
									{szName="B¶o R¬ng Tinh S¬ng Kh¶i",tbProp={6,1,4509,1,0,0},nCount=1,tbParam={6,0,0,0,0,0}},
									
		
		}
			else
				addedId = 4510
				tbAward = {
		
										{szName="B¶o R¬ng Tinh S¬ng Vò KhÝ",tbProp={6,1,4510,1,0,0},nCount=1,tbParam={7,0,0,0,0,0}},
		
								}
			end
			
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Ðp tinh s­¬ng")
			
			logExchangeItem(addedId, rate1 , rate2)	
		else
			logExchangeItem(goldEquipIndex, rate1 , rate2)				
		end
	end
	
end
------------------------------nang cap nguyet khuyen------------------------------
function nangcapnguyetkhuyen(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi NguyÖt KhuyÕt. Toµn bé nguyªn liÖu ®Ó ë hµnh trang. Chó ý ®å phæ tèi ®a 10 m¶nh mçi m·nh 5% thµnh c«ng, NguyÖt khuyÕt tinh th¹ch 30 côc mçi côc 1% thµnh c«ng")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	     local nCash = GetCash()
				if nCash < 200000000 then
				Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 20.000 v¹n ®Ó n©ng cÊp lªn NguyÖt KhuyÕt")
				return
			end
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local nguyetkhuyettb = configNK[1]		
	local minId = nguyetkhuyettb[1][2]
	local maxId = nguyetkhuyettb[getn(nguyetkhuyettb)][2]
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < 3405) or (goldEquipIndex > 3654) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi Tinh S­¬ng. Toµn bé nguyªn liÖu ®Ó ë hµnh trang")
			return
		
	end
	
	if typeItem==0 or typeItem==1 then
	
			Talk(1,"", "HiÖn t¹i ¸o vµ Vò khÝ ta vÉn ch­a nghiªn cøu ®­îc c¸ch chÕ t¹o nhÐ huynh ®µi")
		return
	end
	
	if (CalcEquiproomItemCount(6, 1, 4885, -1) < 2000) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 2000 Tö Tinh Kho¸ng Th¹ch ")
		return
	end
	if (CalcEquiproomItemCount(6,1,4834,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 NguyÖt KhuyÕt LÖnh")
		return
	end
	if typeItem >=5 then
			iddopho=4424+typeItem
			dophonguyetkhuyet= CalcEquiproomItemCount(6, 1,iddopho, -1)
				else 
				iddopho=4434+typeItem
				dophonguyetkhuyet= CalcEquiproomItemCount(6, 1, iddopho, -1)	
				end
				
		nguyetkhuyentinhthach=CalcEquiproomItemCount(6, 1, 4817,-1) --NguyÖt KhuyÕt Tinh Th¹ch
		tilethanhcong = dophonguyetkhuyet*5 + nguyetkhuyentinhthach*1.5
		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 §å Phæ NguyÖt KhuyÕt cïng lo¹i")
		return
	end

		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) < 5 ) or (CalcEquiproomItemCount(6,1,4817,-1) < 20 ) then  -- do duoi 5 va nk tinh thach duoi 20 thi ti le la 0%
		tilethanhcong=0  
		end
		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) == 9) or (CalcEquiproomItemCount(6,1,4817,-1) == 29)  then --- thieu 1 nguyen lieu la 50%
		tilethanhcong=50
		end
		
		if (CalcEquiproomItemCount(6,1,iddopho,-1) == 8) or (CalcEquiproomItemCount(6,1,iddopho,-1) == 7) or (CalcEquiproomItemCount(6,1,4817,-1) == 28)  or (CalcEquiproomItemCount(6,1,4817,-1) == 27) or (CalcEquiproomItemCount(6,1,4817,-1) == 26) or (CalcEquiproomItemCount(6,1,4817,-1) == 25) then
		tilethanhcong=20
		end
		if (CalcEquiproomItemCount(6,1,iddopho,-1) == 6) or  (CalcEquiproomItemCount(6,1,iddopho,-1) == 5) or (CalcEquiproomItemCount(6,1,4817,-1) == 24)  or (CalcEquiproomItemCount(6,1,4817,-1) == 23)  or (CalcEquiproomItemCount(6,1,4817,-1) == 22)  or (CalcEquiproomItemCount(6,1,4817,-1) == 21)  or (CalcEquiproomItemCount(6,1,4817,-1) == 20) then
		tilethanhcong=10
		
		end
		local mayman=random(1,100)
		if mayman<=tilethanhcong or (dophonguyetkhuyet==10 and nguyetkhuyentinhthach==30 ) then
		
		
					 if (RemoveItemByIndex(itemIndex) == 1) then
						local itemType = mod(goldEquipIndex,10)
						local requireIngradent = 0
						local tbparam = 0
				
									for i = 1, getn(configNK[2]) do
												
												if (configNK[2][i][3] == itemType) then
													requireIngradent = configNK[2][i][2]
													tbparam = configNK[2][i][4]
												end
									end
				
										ConsumeEquiproomItem(2000, 6, 1, 4885, -1)
										ConsumeEquiproomItem(1, 6, 1, 4834, -1)
									--	ConsumeEquiproomItem(1, 6, 1, 4830, -1)
									ConsumeEquiproomItem(30, 6, 1, 4817, -1)		
									ConsumeEquiproomItem(10, 6, 1, iddopho, -1)
										tbAward = {
											{szName="B¶o R¬ng NguyÖt KhuyÕt",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
										}
														
											
											tbAwardTemplet:GiveAwardByList(tbAward,"Bao r­¬ng NguyÖt KhuyÕt")
											--	Msg2Player(" Thµnh C«ng,Tinh Th¹ch:"..nguyetkhuyentinhthach.."----. §å Phæ:"..dophonguyetkhuyet.."-.-ID §å Phæ: "..iddopho.."--.-TØ LÖ Thµnh C«ng--"..tilethanhcong.."%------Con Sè may m¾n-"..mayman.."------")
												Msg2Player(" Thµnh C«ng - Chóc Mõng B¹n")
											Pay(200000000)
											WriteLogPro("dulieu/epdonguyetkhuyen.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep thanh cong nguyet khuyen  Tinh Th¹ch:"..nguyetkhuyentinhthach.."----. §å Phæ:"..dophonguyetkhuyet.."-.-ID §å Phæ: "..iddopho.."--.-TØ LÖ Thµnh C«ng--"..tilethanhcong.."%------Con Sè may m¾n-"..mayman.."------\n");		
										--	logExchangeItem1(requireIngradent, 3307, 3308)	
							else
					--	logExchangeItem1(goldEquipIndex, 0 , 0)				
					end
		else 
		ConsumeEquiproomItem(2000, 6, 1, 4885, -1)
		ConsumeEquiproomItem(1, 6, 1, 4834, -1)		
		ConsumeEquiproomItem(30, 6, 1, 4817, -1)		
		ConsumeEquiproomItem(10, 6, 1, iddopho, -1)
		Pay(200000000)
	--	Msg2Player(" ThÊt b¹i,Tinh Th¹ch:"..nguyetkhuyentinhthach.."----. §å Phæ:"..dophonguyetkhuyet.."-.-ID §å Phæ: "..iddopho.."--.-TØ LÖ Thµnh C«ng--"..tilethanhcong.."%------Con Sè may m¾n-"..mayman.."------")
		Msg2Player(" ThÊt b¹i - Chia Buån Cïng B¹n")
		WriteLogPro("dulieu/epdonguyetkhuyen.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da ep that bai nguyet khuyen,,  Tinh Th¹ch:"..nguyetkhuyentinhthach.."----. §å Phæ:"..dophonguyetkhuyet.."-.-ID §å Phæ: "..iddopho.."--.-TØ LÖ Thµnh C«ng--"..tilethanhcong.."%------Con Sè may m¾n-"..mayman.."------\n");		

		end
end

---------doi vu khi hoac ao tinh suong lay ruong -------

function doiruongtinhsuong(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bÞ tinh s­¬ng. Quy nguyªn phï vµ kiÓm ®Þnh phï bá ë hµnh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi Tinh s­¬ng. Toµn bé nguyªn liÖu ®Ó ë hµnh trang")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 3007, -1) < 1) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 Ngò linh kiÓm ®Þnh phï")
		return
	end
	if (CalcEquiproomItemCount(6,1,3008,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 Ngò linh quy nguyªn phï")
		return
	end
      
     

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg[2]) do
				
				if (roll_cfg[2][i][3] == itemType) then
					requireIngradent = roll_cfg[2][i][2]
					tbparam = roll_cfg[2][i][4]
				end
	end
	
		ConsumeEquiproomItem(1, 6, 1, 3007, -1)
		ConsumeEquiproomItem(1, 6, 1, 3008, -1)
		tbAward = {
			{szName="B¶o R¬ng Tinh S¬ng",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
									
		
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r­¬ng tinh s­¬ng")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
	
---------doi tinh suong max -------

function doiruongtinhsuongmax(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bÞ Tinh S­¬ng Max. KNB bá ë hµnh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg_ts_max[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bÞ Tinh S­¬ng. KNB ®Ó ë hµnh trang")
			return
		
	end
if typeItem ==6 or typeItem ==7  then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 50) then
		Talk(1,"", "Vò KhÝ +¸o Th× Trong r­¬ng ph·i cã Ýt nhÊt 50 KNB nhÐ b¹n ")
		return
	end
end    
 
   

	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 10) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 10 KNB nhÐ b¹n ")
		return
	end

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg_ts_max[2]) do
				
				if (roll_cfg_ts_max[2][i][3] == itemType) then
					requireIngradent = roll_cfg_ts_max[2][i][2]
					tbparam = roll_cfg_ts_max[2][i][4]
				end
	end
	if typeItem ==6 or typeItem ==7 then  ---kiem tra la vu khi
		ConsumeEquiproomItem(50,4,1496,1,-1)
		else 
			ConsumeEquiproomItem(10,4,1496,1,-1)
			end

		tbAward = {
			{szName="B¶o R­¬ng Tinh S­¬ng Max",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r­¬ng Tinh S­¬ng Max")
			WriteLogPro("dulieu/doiruongmax.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da doi "..goldEquipIndex.." Thanh Ruong \n");	
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end

---------doi nguyet khuyet lay ruong -------

function doiruongnguyetkhuyet(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bÞ NguyÖt khuyÕt. Quy nguyªn phï+kiÓm ®Þnh phï+Ngäc Trïng LuyÖn bá ë hµnh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg_nk[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi NguyÖt KhuyÕt. Toµn bé nguyªn liÖu ®Ó ë hµnh trang")
			return
		
	end
	
	if (CalcEquiproomItemCount(6, 1, 3007, -1) < 1) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 Ngò linh kiÓm ®Þnh phï")
		return
	end
	if (CalcEquiproomItemCount(6,1,3008,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 Ngò linh quy nguyªn phï")
		return
	end
      
	  	if (CalcEquiproomItemCount(6,1,4830,-1) < 1 ) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 1 Ngò linh quy nguyªn phï")
		return
	end
     

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg_nk[2]) do
				
				if (roll_cfg_nk[2][i][3] == itemType) then
					requireIngradent = roll_cfg_nk[2][i][2]
					tbparam = roll_cfg_nk[2][i][4]
				end
	end
	
		ConsumeEquiproomItem(1, 6, 1, 3007, -1)
		ConsumeEquiproomItem(1, 6, 1, 3008, -1)
		ConsumeEquiproomItem(1, 6, 1, 4830, -1)
		tbAward = {
			{szName="B¶o R¬ng NguyÖt KhuyÕt",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r­¬ng NguyÖt KhuyÕt")
			
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
	
---------doi nguyet khuyet lay ruong max -------

function doiruongnguyetkhuyetmax(putCount)
	if (putCount == 0) then 
		Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bÞ NguyÖt khuyÕt Max. KNB bá ë hµnh trang")
		return
	end
	local itemIndex = GetGiveItemUnit(1)
	local bindState = GetItemBindState(itemIndex)
	if (bindState ~=0) then
		Talk(1,"", "Trang bÞ ®ang trong tr¹ng th¸i khãa, kh«ng thÓ n©ng cÊp")
		return
	end

	if (ITEM_GetExpiredTime(itemIndex) ~= 0) then
		Talk(1,"", "Trang bÞ cã thêi h¹n sö dông kh«ng thÓ n©ng cÊp")
		return
	end	
	
	local goldEquipIndex = GetGlodEqIndex(itemIndex)
	
	local tinhsuongtb = roll_cfg_nk_max[1]		
	local minId = tinhsuongtb[1][2]
	local maxId = tinhsuongtb[getn(tinhsuongtb)][2]
	print("minid "..minId)
	print("maxid "..maxId)
	local typeItem = mod(goldEquipIndex,10)
	
	
	if (goldEquipIndex < minId) or (goldEquipIndex > maxId) then 	
		
			Talk(1,"", "Xin vui lßng chØ ®Æt vµo trang bi NguyÖt KhuyÕt. Toµn bé nguyªn liÖu ®Ó ë hµnh trang")
			return
		
	end
if typeItem ==6 then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 200) then
		Talk(1,"", "Vò KhÝ Th× Trong r­¬ng ph·i cã Ýt nhÊt 200 KNB nhÐ b¹n ")
		return
	end
end    
 
if typeItem ==5 then  ---kiem tra la vu khi
	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 150) then
		Talk(1,"", "¸o Gi¸p Th× Trong r­¬ng ph·i cã Ýt nhÊt 150 KNB nhÐ b¹n ")
		return
	end
end     

	if (CalcEquiproomItemCount(4, 1496, 1, -1) < 50) then
		Talk(1,"", "Trong r­¬ng ph·i cã Ýt nhÊt 50 KNB nhÐ b¹n ")
		return
	end

     if (RemoveItemByIndex(itemIndex) == 1) then
		local itemType = mod(goldEquipIndex,10)
		local requireIngradent = 0
		local tbparam = 0
	
	for i = 1, getn(roll_cfg_nk_max[2]) do
				
				if (roll_cfg_nk_max[2][i][3] == itemType) then
					requireIngradent = roll_cfg_nk_max[2][i][2]
					tbparam = roll_cfg_nk_max[2][i][4]
				end
	end
	if typeItem ==6 then  ---kiem tra la vu khi
		ConsumeEquiproomItem(200,4,1496,1,-1)
		else
			if typeItem ==5 then  ---kiem tra la vu khi
		ConsumeEquiproomItem(150,4,1496,1,-1)
		else 
			ConsumeEquiproomItem(50,4,1496,1,-1)
			end
			end
		tbAward = {
			{szName="B¶o R­¬ng NguyÖt KhuyÕt Max",tbProp={6,1,requireIngradent,1,0,0},nCount=1,tbParam={tbparam,0,0,0,0,0}},
		}
						
			
			tbAwardTemplet:GiveAwardByList(tbAward,"Bao r­¬ng NguyÖt KhuyÕt Max")
								WriteLogPro("dulieu/doiruongmax.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t Da doi "..goldEquipIndex.." Thanh Ruong \n");	
	
			logExchangeItem1(requireIngradent, 3307, 3308)	
		else
			logExchangeItem1(goldEquipIndex, 0 , 0)				
		end
	end
-------------------------------------

function logExchangeItem(gradientItem, gradientnumber, item) 
	local account = GetAccount()
	local name = GetName()
	local row = {account, name, gradientItem, gradientnumber, item}
	local fileName = "logdoido_.txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "Character", "Gradient", "Grandient Number", "Item"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)	
end


function logExchangeItem1(gradientItem, gradientnumber, item) 
	local account = GetAccount()
	local name = GetName()
	local row = {account, name, gradientItem, gradientnumber, item}
	local fileName = "logdoido1_.txt"
	local tbDataFromFile = tbVngLib_File:TableFromFile("dulieu/",fileName, {"*w", "*w", "*n", "*n", "*n"})
	local tbData = {}
	tbData[1] = {"Account", "Character", "Gradient", "Grandient Number", "Item"}
	if (tbDataFromFile == nil) then			
		tbData[2] = row
	else		
		for i = 1, getn(tbDataFromFile) do
			tbData[1 + i] = tbDataFromFile[i]
		end
		tbData[getn(tbData) + 1]  = row
	end
	tbVngLib_File:Table2File("dulieu/", fileName, "w", tbData)	
end


function MenuDoiNgoaiHinh0()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"®æi sang ®ao/dao",
		"®æi sang kiÕm/kiem",
		"®æi sang chïy/chuy",
		"®æi sang bæng/bong",
		"®æi sang th­¬ng/thuong",
		"®æi sang song ®ao/song",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function dao()
SetTask(5859,1)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh ®ao.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function kiem()
SetTask(5858,1)
SetTask(5859,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh kiÕm.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function chuy()
SetTask(5857,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh chïy.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function bong()
SetTask(5856,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5855,0)
SetTask(5854,0)
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh bæng.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function song()
SetTask(5855,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5854,0)
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh song ®ao.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end

function thuong()
SetTask(5854,1)
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
Say("Chóc mõng b¹n ®· chän Ðp sang h×nh song ®ao.",2,"b¾t ®Çu Ðp/MenuDoiNgoaiHinh","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
end


function MenuDoiNgoaiHinh()
	szDescription = format("+ 5000 TiÒn §ång \n=> Trang bÞ ®Ñp nhÊt.")

	GiveItemUI("Bá Vò KhÝ Vµo", szDescription, "BatDauDoiVK", "no", 1)

end

function BatDauDoiVK(nCount,nItemIndex, nIndexRes)
	if nCount == 0 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/MenuDoiNgoaiHinh", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)

		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c -"..nG..", "..nD..", "..nP..", "..nL..", "..nS.." !")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c  22-"..nG..", "..nD..", "..nP..", "..nL..", "..nS.." !")
					return
				end
			 else
				Talk(1, "no", "ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 5000) then
		Talk(1, "no", "CÇn cã 5000 <color=red>TiÒn §ång<color> míi cã thÓ n©ng cÊp.")
		return
	end
	--if nItemTime ~= 0 then
	--	Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
	--	return
--	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng")
		return
	end
if GetTask(5859) < 1 and GetTask(5858) < 1 and GetTask(5857) < 1 and GetTask(5856) < 1 and GetTask(5855) < 1 and GetTask(5854) < 1 then
Say("®¹i hiÖp ch­a chän vò khÝ nµo c¶.",2,"Cho ta chän l¹i/MenuDoiNgoaiHinh0","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")
		return
	end   	
if GetTask(5859) == 1 then --dao
		SetItemNewFeature(nItemIndex, random(53,56)) --53 54 55 56
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh §ao")
end
if GetTask(5858) == 1 then --kiem
		SetItemNewFeature(nItemIndex, random(57,59))  --  57 58 59
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh KiÕm")
end
if GetTask(5857) == 1 then --chuy
		SetItemNewFeature(nItemIndex, 60)  -- 
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Chïy")
end
if GetTask(5856) == 1 then --bong
		SetItemNewFeature(nItemIndex, 41)  -- 40 41
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Bæng")
end
if GetTask(5855) == 1 then --song
		SetItemNewFeature(nItemIndex, 61) --
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Song §ao")
end
if GetTask(5854) == 1 then --thuong
		SetItemNewFeature(nItemIndex, random(50,51)) -- 50 51
		ConsumeEquiproomItem(5000,4,417,1,1)
	    print(nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®æi thµnh c«ng ngo¹i h×nh.")                                                                                                                                                                     
		Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> ®æi thµnh c«ng ngo¹i h×nh vò khÝ cña m×nh thµnh Th­¬ng")
end
SetTask(5859,0)
SetTask(5858,0)
SetTask(5857,0)
SetTask(5856,0)
SetTask(5855,0)
SetTask(5854,0)
SaveNow()
end
end

function PhatSangVip()
	tbOpt =
	{
		"<dec><npc>§©y lµ danh s¸ch Ðp vò khÝ ph¸t s¸ng rÊt vip ch¼ng hay ®¹i hiÖp muèn Ðp lo¹i nµo xin h·y lùa chän h×nh .",
		"Chän Ngo¹i H×nh Vò KhÝ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end


function ChonNgoaiHinhPS()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"Ngo¹i h×nh ®ao/daops",
		"Ngo¹i h×nh kiÕm/kiemps",
		"Ngo¹i h×nh chïy/chuyps",
		"Ngo¹i h×nh bæng/bongps",
		"Ngo¹i h×nh th­¬ng/thuongps",
		"Ngo¹i h×nh ¸m khÝ/amkhips",
		"Ngo¹i h×nh song ®ao/songdaops",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
	--SetTask(3010,0)
--	SetTask(3011,0)
--	SetTask(3012,0)
	--SetTask(3013,0)
	--SetTask(3014,0)
	--SetTask(3015,0)
--	SetTask(3016,0)
task3010=0
task3011=0
task3012=0
task3013=0
task3014=0
task3015=0
task3016=0
end

function daops()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"®ao 1/daops1",
		"®ao 2/daops2",
		"®ao 3/daops3",
		"®ao 4/daops4",
		"®ao 5/daops5",
		"®ao 6/daops6",
		"®ao 7/daops7",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function daops1() --112
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_078_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3010,112)
	task3010=12
end

function daops2() --55
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_042_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--	SetTask(3010,55)
			task3010=55
end

function daops3()  --128
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_092_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3010,128)
		task3010=128
end

function daops4() --131
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_095_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3010,131)
		task3010=131
end

function daops5() -- 146
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_106_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3010,146)
		task3010=146
end

function daops6() --115
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_081_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3010,115)
	task3010=115
end

function daops7() --56
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_040_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3010,56)
	task3010=56
end
--------------------------KIEM

function kiemps()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"kiÕm 1/kiemps1",
		"kiÕm 2/kiemps2",
		"kiÕm 3/kiemps3",
		"kiÕm 4/kiemps4",
		"kiÕm 5/kiemps5",
		"kiÕm 6/kiemps6",
		"kiÕm 7/kiemps7",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function kiemps1() --134
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_097_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3011,134)
	task3011=134
end

function kiemps2() --130
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_094_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3011,130)
	task3011=130
end

function kiemps3() --132
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_096_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3011,132)
	task3011=132
end

function kiemps4() --129
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_093_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3011,129)
	task3011=129
end


function kiemps5() --57
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_041_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3011,57)
	task3011=57
end

function kiemps6() --58
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_041_RD01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3011,58)
	task3011=58
end

function kiemps7() --59
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_043_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3011,59)
	task3011=59
end

--------------------------CHUY

function chuyps()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"chïy 1/chuyps1",
		"chïy 2/chuyps2",
		"chïy 3/chuyps3",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function chuyps1() --60
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_046_ST06.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3012,60)
	task3012=60
end

function chuyps2() --113
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_079_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3012,113)
	task3012=113
end


function chuyps3() --79
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_100_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3012,79)
	task3012=79
end


--------------------------BONG

function bongps()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"bæng 1/bongps1",
		"bæng 2/bongps2",
		"bæng 3/bongps3",

		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function bongps1() --61
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_037_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3013,61)
	task3013=61
end

function bongps2() --41
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_038_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3013,41)
	task3013=41
end

function bongps3() --136
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_098_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3013,136)
		task3013=136
end

--------------------------THUONG

function thuongps()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"th­¬ng 1/thuongps1",
		"th­¬ng 2/thuongps2",
		"th­¬ng 3/thuongps3",
		"th­¬ng 4/thuongps4",
		"th­¬ng 5/thuongps5",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function thuongps1() --50
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_045_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3014,50)
		task3014=50
end

function thuongps2() --51
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_045_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3014,51)
	task3014=51
end

function thuongps3() --127
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_091_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3014,127)
	task3014=127
end

function thuongps4() --101
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_059_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3014,101)
	task3014=101
end

function thuongps5() --114
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_080_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3014,114)
	task3014=114
end

--------------------------SONG DAO

function songdaops()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"song ®ao 1/songdaops1",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function songdaops1() --61
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_047_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3015,61)
	task3015=61
end

--------------------------Am KhI

function amkhips()
	tbOpt =
	{
		"<dec><npc>Xin h·y chän vò khi cÇn thay ®æi ngo¹i h×nh.",
		"¸m khÝ 1/amkhips1",
		"¸m khÝ 2/amkhips2",
		"¸m khÝ 3/amkhips3",
		"¸m khÝ 4/amkhips4",
		"¸m khÝ 5/amkhips5",
		"trë vÒ/ChonNgoaiHinhPS",
		"KÕt thóc ®èi tho¹i./no",
	}
	CreateTaskSay(tbOpt)
end

function amkhips1() --70
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_048_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
--	SetTask(3016,70)
	task3016=70
end

function amkhips2() --110
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_076_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
---	SetTask(3016,110)
		task3016=110
end

function amkhips3() --120
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_086_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3016,120)
	task3016=120
end

function amkhips4() --123
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_088_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3016,123)
	task3016=123
end

function amkhips5() --125
	local img = "<link=image[0,0]:\\spr\\npcres\\man\\MA_RW_089_ST01.spr><link>"
	local strTitle = ""..img.."§©y lµ vÎ ®Ñp cña trang bÞ ph¸t s¸ng mµ c¸c h¹ s¾p Ðp."
	local tbOpt =
	{
		{"TiÕn hµnh Ðp.", TienHanhEpPS},
		{"trë vÒ", ChonNgoaiHinhPS},
		{"§Ó ta suy nghÜ l¹i"},
	}
	CreateNewSayEx(strTitle, tbOpt)
	--SetTask(3016,125)
	task3016=125
end

function TienHanhEpPS()
	--szDescription = format("+ CÇn 1000 V¹n l­îng + 50 Vµng + 100 b¹c + 50xu\n+ 1 Mãn HKMP maxop.")
	szDescription = format("+ CÇn 100 KNB\n.")

	GiveItemUI("Nguyªn LiÖu CÇn Cã", szDescription, "BatDauEpPhatSang", "no", 1)

end

function BatDauEpPhatSang(nCount)
	if nCount == 0 then
		Say("Ng­¬i d¸m g¹t ta µ! ThËt to gan.", 2, "ThËt xin lçi ngµi, t¹i h¹ muèn ®Æt l¹i/TienHanhEpPS", "no")
	end
	
	local tbDatabase = 
	{
		tbWeapons = {},
		tbItem = {},
		tbStone1 = {},
		tbStone2 = {},
		tbStone3 = {},
	}
	
	for i = 1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local nG, nD, nP, nL, nS = GetItemProp(nItemIndex)
		szItemName = GetItemName(nItemIndex)
		nItemTime = ITEM_GetExpiredTime(nItemIndex)
		nQuality = GetItemQuality(nItemIndex)
	--if nQuality ~= 1 then
	--Talk(1, "", "Trang bÞ ng­¬i ®Æt vµo kh«ng ph¶i lµ trang bÞ hoµng kim")
	--return
   --end
	   local goldEquipIndex = GetGlodEqIndex(nItemIndex)
  -- if (goldEquipIndex ~= 6 and goldEquipIndex ~= 11 and goldEquipIndex ~=16 and goldEquipIndex ~=21 and goldEquipIndex ~=26 and goldEquipIndex ~=31 and goldEquipIndex ~=46 and goldEquipIndex ~=61 and goldEquipIndex ~=61 and goldEquipIndex ~=71 and goldEquipIndex ~=76 and goldEquipIndex ~=81 and goldEquipIndex ~=96 and goldEquipIndex ~=101 and goldEquipIndex ~=329 and goldEquipIndex ~=116 and goldEquipIndex ~=126 and goldEquipIndex ~=258 and goldEquipIndex ~=250 and goldEquipIndex ~=265 and goldEquipIndex ~=270 and goldEquipIndex ~=295 and goldEquipIndex ~=300 and goldEquipIndex ~=290 and goldEquipIndex ~=280  and goldEquipIndex ~=240  and goldEquipIndex ~=235  and goldEquipIndex ~=245  and goldEquipIndex ~=230  and goldEquipIndex ~=225  and goldEquipIndex ~=335  and goldEquipIndex ~=340  and goldEquipIndex ~=121 and goldEquipIndex ~=764  and goldEquipIndex ~=345  and goldEquipIndex ~=320  and goldEquipIndex ~=540  and goldEquipIndex ~=315 )then
	--	Talk(1,"", "<color=white>ChØ cã trang bÞ vò khÝ HKMP MaxOp míi cã thÓ Ðp lªn ph¸t s¸ng xin h·y n©ng cÊp trang bÞ cña m×nh lªn maxop råi h· Ðp")
		--return
	--end
		if nG == 0 then
			if nD == 0 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 and nP ~= 3 and nP ~= 4 and nP ~= 5 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 elseif nD == 1 then
				if nP ~= 0 and nP ~= 1 and nP ~= 2 then
					Talk(1, "no", "Ngo¹i trõ vò khÝ ra th× kh«ng thÓ n©ng cÊp trang bÞ nµo kh¸c!")
					return
				end
			 else
				Talk(1, "no", "ThËt thø lçi! Kh¶ n¨ng cña ta ca giíi h¹n, kh«ng thÓ n©ng cÊp <color=red>trang bÞ<color> nµy ®­îc.")
				return
			end
		end
		
		local TAB_WEAPONS =
		{
			["0,0,0"] = {},
			["0,0,1"] = {},
			["0,0,2"] = {},
			["0,0,3"] = {},
			["0,0,4"] = {},
			["0,0,5"] = {},
			["0,1,0"] = {},
			["0,1,1"] = {},
			["0,1,2"] = {},
		}
		local tbIndex = format("%d,%d,%d", nG, nD, nP)
		if TAB_WEAPONS[tbIndex] then
			tinsert(tbDatabase.tbWeapons, nItemIndex)
		end
		
		local nFaction = GetLastFactionNumber()
		nRandomAccess = random(1,100)
		nRandomRes = random(1, 100)
		nSucces = 1
		if nG == 0 and nD == 0 and nP == 0 then --kiem
				if nRandomAccess >=1 then
					nIndexRes =task3011
				 else
					nSucces = 0
				end
		                                                                                   elseif nG == 0 and nD == 0 and nP == 1 then  --dao
				if nRandomAccess >=1 then
					nIndexRes = task3010
					nSucces = 1
				 else
					nSucces = 0
				end
			
			
		                                                                                  elseif nG == 0 and nD == 0 and nP == 2 then --bong
				if nRandomAccess >=1 then
					nIndexRes =  task3013
					nSucces = 1
				 else
					nSucces = 0
				end
		                                                                                  elseif nG == 0 and nD == 0 and nP == 3 then  --kich
					if nRandomAccess >=1 then
						nIndexRes = task3014
						nSucces = 1
					 else
						nSucces = 0
					end
		 elseif nG == 0 and nD == 0 and nP == 4 then  --chuy
			if nRandomAccess >=1 then
			nIndexRes = task3012
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 0 and nP == 5 then  --songdao
			if nRandomAccess >=1 then
				nIndexRes = task3015
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 0 then  --tieu
			if nRandomAccess >=1 then
				nIndexRes = task3016
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 1 then --tieu
			if nRandomAccess >=1 then
				nIndexRes = task3016
				nSucces = 1
			 else
				nSucces = 0
			end
		 elseif nG == 0 and nD == 1 and nP == 2 then --tieu
			if nRandomAccess >=1 then
				nIndexRes = task3016
				nSucces = 1
			 else
				nSucces = 0
			end
end
end	

	if nItemTime ~= 0 then
		Talk(1, "no", "Kh«ng thÓ ®Æt vµo vËt phÈm cã thêi h¹n!")
		return
	end
	local nCountWeapon = getn(tbDatabase.tbWeapons)
	if nCountWeapon ~= 1 then
		Talk(1, "no", "Ng­¬i ch­a ®Æt vò khÝ cÇn n©ng cÊp vµo « trèng")
		return
	end
	
	--local nCountStone1 = getn(tbDatabase.tbStone1)
	--if nCountStone1 ~= 1 then
		--Talk(1, "no", "CÇn cã 1 viªn <color=red>Lam Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		--return
	--end
	
	--local nCountStone2 = getn(tbDatabase.tbStone2)
	--if nCountStone2 ~= 1 then
		--Talk(1, "no", "CÇn cã 1 viªn <color=red>Tö Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		--return
	--end
	
	--local nCountStone3 = getn(tbDatabase.tbStone3)
	--if nCountStone3 ~= 1 then
		--Talk(1, "no", "CÇn cã 1 viªn <color=red>Lôc Thñy Tinh<color> míi cã thÓ n©ng cÊp.")
		--return
	--end

	local nSilverCount = CalcEquiproomItemCount(4,417,1,1) ;
	if(nSilverCount < 5000) then
		Talk(1, "no", "CÇn cã 5000 <color=red>TiÒn §ång<color> míi cã thÓ n©ng cÊp.")
		return
end
	--if (GetCash() < 10000000) then
    --   Talk(1,"","<color=white>Cã vô rÌn miÔn phÝ n÷a sao haha ®¹i hiÖp cÇn cã 1000 v¹n l­îng råi h·y nãi chuyÖn víi ta..") -- go
	--return
--end
--local nSilverCount = CalcEquiproomItemCount(4,1674,1,1) ;
	--if(nSilverCount < 50) then
	--Talk(1, "no", "CÇn cã 50 <color=red>Vµng Thái<color> míi cã thÓ n©ng cÊp.")
	--return
	--end
	--local nSilverCount = CalcEquiproomItemCount(4,1673,1,1) ;
	--if(nSilverCount < 100) then
	--Talk(1, "no", "CÇn cã 100 <color=red>B¹c Thái<color> míi cã thÓ n©ng cÊp.")
	--return
--end
if nSucces == 0 or nIndexRes <10 then
Say("Vò khÝ bá vµo kh«ng phï hîp  víi h×nh ¶nh ®­îc chän hoÆc ®¹i hiÖp ch­a chän vò khÝ nµo ®Ó ®æi ngo¹i h×nh c¶ xin h·y chän l¹i.",2,"Cho ta chän l¹i/ChonNgoaiHinhPS","Kh«ng cÇn ®©u! C¶m ¬n!/cancel")

--Msg2Player("RÊt tiÕc! ThÊt b¹i lµ chuyÖn b×nh th­êng cña binh gia,huynh ®µi ®õng n¶n chÝ h·y cè g¾ng lÇn n÷a sÏ ®­îc nh­ ý.")
	elseif nSucces == 1 then
		RemoveItemByIndex(tbDatabase.tbItem[1])
   ConsumeEquiproomItem(5000,4,417,1,1)
  -- ConsumeEquiproomItem(50,4,1674,1,1)
  -- ConsumeEquiproomItem(100,4,1673,1,1)
   --Pay(10000000)
		_Weapons(tbDatabase.tbWeapons[1], nIndexRes)
		Msg2Player("<color=yellow>Chóc mõng b¹n ®· n©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng nh­ vµng rång.")
Msg2SubWorld("<pic=7>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=yellow> §· n©ng cÊp thµnh c«ng vò khÝ<color=green> Ph¸t S¸ng VIP!")
                                                                                                                                                                     --SaveNow();
                                                                                   local epphatsang = "dulieu/vukhiphatsang.log"
	local moepphatsang = openfile(epphatsang  , "a");
	--write(moepphatsang,format("[IP : %s ] - Thêi gian : %s  - Tµi kho¶n [ %s] - Nh©n vËt : [%s ] N©ng cÊp thµnh c«ng vò khÝ ph¸t s¸ng",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))
	 write(moepphatsang, format(""..date("%d-%m-%Y").."   -   [%d:%d]   \tTai Khoan: %s   -   Ten: %s   -   Ep Thanh Cong Vu Khi Phat Sang\n",GetLocalDate("%H"), GetLocalDate("%M"), GetAccount(), GetName()))
	closefile(moepphatsang)
	else
	print("Bug tinh nang nang cap Vu Khi phat quang")
	end
end

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
