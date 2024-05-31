
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");

function main(nItemIndex)
	dofile("script/global/g7vn/event/banhchung/bohoabonmua1.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P~=1664 then
	Say("Event ®· kÕt thóc.")
	return 1
	end
local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate > 20211031 then
	--Say("Event ®· kÕt thóc !!!")
	--return 1
	end
	if CalcEquiproomItemCount(6,1,1664,-1) <1 then
	Say("Bug h¶??? Chim cót")
	return 1
	end
	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "Hµnh trang §¹i hiÖp kh«ng ®ñ 10 « trèng!")
		return 1;
	end
	local TSK_BoHoa=4999
	local HienTaiSuDung =GetTask(TSK_BoHoa)
	if (HienTaiSuDung >= 600) then
	Say("Sö dông event ®· ®¹t giíi h¹n 600 c¸i, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
	
	
----------------------------------------------------------------------------------------------------------------------------------------------
local thuytinh=random(1,350)
if thuytinh==1 then
--tbAwardTemplet:GiveAwardByList({{szName = "Thuû Tinh",tbProp={4,random(238,240),1,1},nCount=1},}, "test", 1);
end

local thbt=random(1,300)
if thbt==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Tinh Hång B¶o Th¹ch",tbProp={4,353,1,1},nCount=1},}, "test", 1);
end

local phucduyen=random(1,30)
if phucduyen==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Phóc Duyªn",tbProp={6,1,random(122,124),1,1},nCount=1},}, "test", 1);
end

local thietlh=random(1,120)
if thietlh==1 then
tbAwardTemplet:GiveAwardByList({{szName = "ThiÕt La H¸n",tbProp={6,1,23,1,1},nCount=1},}, "test", 1);
end


local ttl = random(1,300)
if ttl==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Tiªn Th¶o Lé",tbProp={6,1,71,1,1},nCount=1},}, "test", 1);
end


local bql = random(1,50)
if bql==1 then
tbAwardTemplet:GiveAwardByList({{szName = "B¸ch Qu¶ Lé",tbProp={6,1,73,1,1},nCount=1},}, "test", 1);
end

local tsbl = random(1,300)
if tsbl==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Thiªn S¬n B¶o Lé",tbProp={6,1,72,1,1},nCount=1},}, "test", 1);
end

local danhvong = random(1,200)
if danhvong==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Tói Danh Väng",tbProp={6,1,4338,1,1},nCount=1},}, "test", 1);
end
local lenhbai = random(1,10)
if lenhbai==1 then
tbAwardTemplet:GiveAwardByList({{szName = "LÖnh Bµi",tbProp={6,1,157,1,1},nCount=1},}, "test", 1);
end
local phitoc = random(1,10)
if phitoc==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Phong V©n Phi Tèc hoµn",tbProp={6,1,190,1,1},nCount=1},}, "test", 1);
end
local chienco = random(1,10)
if chienco==1 then
tbAwardTemplet:GiveAwardByList({{szName = "ChiÕn cæ",tbProp={6,1,156,1,1},nCount=1},}, "test", 1);
end
local manhphoi = random(1,50)
if manhphoi==1 then
--tbAwardTemplet:GiveAwardByList({{szName = "M¶nh Ph«i TÝm",tbProp={4,1622,1,1},nCount=1},}, "test", 1);
end
local huyentinh2=random(1,150)
if huyentinh2==1 then
tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,2,0},nCount=1},}, "test", 1);
end
local huyentinh3=random(1,300)
if huyentinh3==1 then
tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,3,0},nCount=1},}, "test", 1);
end
local huyentinh4=random(1,500)
if huyentinh4==1 then
tbAwardTemplet:GiveAwardByList({{szName = "HuyÒn Tinh Kho¸ng Th¹ch",tbProp={6,1,147,4,0},nCount=1},}, "test", 1);
end
tbAwardTemplet:GiveAwardByList({{nExp_tl = 100000}}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "ThiÖp Chóc Mõng",tbProp={6,1,2621,1,1},nCount=1,},}, "test", 1);

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(TSK_BoHoa,GetTask(TSK_BoHoa)+1)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..HienTaiSuDung+1 .."<color>")
	--	SetTask(5333,GetTask(5333)+1)
	--if GetTask(5333)>=500 then
	--	tbLogEvent:LuuDSNhanVat()
		--local check = tbLogEvent:checktopeventidnhan()
	--	tbLogEvent:SapXepDSXepHang()
	--	tbLogEvent:TopListFromFile()
--	end
	return 0
end
_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=red>%s<color=green> tõ Event B¸nh Ngät", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	--WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t ®· nhËn ®­îc:"..strItemName.." tõ b¶o r­¬ng HKMP C¸i Bang\n");
end