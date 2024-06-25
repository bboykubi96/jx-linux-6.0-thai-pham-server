
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");

function main(nItemIndex)
	dofile("script/global/g7vn/event/banhchung/bohoabonmua.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P~=1662 then
	Say("Event �� k�t th�c.")
	return 1
	end
local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate > 20211231 then
	--Say("Event �� k�t th�c !!!")
	--return 1
	end
	if CalcEquiproomItemCount(6,1,1662,-1) <1 then
	Say("Bug h�??? Chim c�t")
	return 1
	end
	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 10 � tr�ng!")
		return 1;
	end
	local TSK_BoHoa=4997
	local HienTaiSuDung =GetTask(TSK_BoHoa)
	if (HienTaiSuDung >= 600) then
	Say("S� d�ng event �� ��t gi�i h�n 600 c�i, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
	
	
----------------------------------------------------------------------------------------------------------------------------------------------
local lenhbai = random(1,8)
if lenhbai==1 then
tbAwardTemplet:GiveAwardByList({{szName = "L�nh B�i",tbProp={6,1,157,1,1},nCount=1},}, "test", 1);
end
local phitoc = random(1,8)
if phitoc==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Phong V�n Phi T�c ho�n",tbProp={6,1,190,1,1},nCount=1},}, "test", 1);
end
local chienco = random(1,8)
if chienco==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Chi�n c�",tbProp={6,1,156,1,1},nCount=1},}, "test", 1);
end
local thuytinh=random(1,50)
if thuytinh==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Thu� Tinh",tbProp={4,random(238,240),1,1},nCount=1},}, "test", 1);
end
local thietlh=random(1,60)
if thietlh==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Thi�t La H�n",tbProp={6,1,23,1,1},nCount=1},}, "test", 1);
end
local bannhuoc=random(1,120)
if bannhuoc==1 then
tbAwardTemplet:GiveAwardByList({{szName = "B�n Nh��c T�m Kinh",tbProp={6,1,12,1,1},nCount=1},}, "test", 1);
end
local thudacxa=random(1,600)
if thudacxa==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Th� ��c X� Tri�u ��nh",tbProp={6,1,1375,1,1},nCount=1},}, "test", 1);
end
local thbt=random(1,150)
if thbt==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Tinh H�ng B�o Th�ch",tbProp={4,353,1,1},nCount=1},}, "test", 1);
end

local phucduyen=random(1,30)
if phucduyen==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Ph�c Duy�n",tbProp={6,1,random(122,124),1,1},nCount=1},}, "test", 1);
end


local huyentinh2=random(1,70)
if huyentinh2==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,2,0},nCount=1},}, "test", 1);
end
local huyentinh3=random(1,150)
if huyentinh3==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,3,0},nCount=1},}, "test", 1);
end
local huyentinh4=random(1,230)
if huyentinh4==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Huy�n Tinh Kho�ng Th�ch",tbProp={6,1,147,4,0},nCount=1},}, "test", 1);
end

local ttl = random(1,80)
if ttl==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Ti�n Th�o L�",tbProp={6,1,71,1,1},nCount=1},}, "test", 1);
end
local ttldb = random(1,500)
if ttldb==1 then
--tbAwardTemplet:GiveAwardByList({{szName = "Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1765,1,1},nCount=1},}, "test", 1);
end
local danhvong = random(1,70)
if danhvong==1 then
tbAwardTemplet:GiveAwardByList({{szName = "T�i Danh V�ng",tbProp={6,1,4338,1,1},nCount=1},}, "test", 1);
end

local tsbl = random(1,200)
if tsbl==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Thi�n S�n B�o L�",tbProp={6,1,72,1,1},nCount=1},}, "test", 1);
end
local bql = random(1,30)
if bql==1 then
tbAwardTemplet:GiveAwardByList({{szName = "B�ch Qu� L�",tbProp={6,1,73,1,1},nCount=1},}, "test", 1);
end
local qht = random(1,300)
if qht==1 then
tbAwardTemplet:GiveAwardByList({{szName = "Qu� Hoa T�u",tbProp={6,1,125,1,1},nCount=1},}, "test", 1);
end
local tinhngoc = random(1,15)
if tinhngoc==1 then
--tbAwardTemplet:GiveAwardByList({{szName = "Tinh Ng�c",tbProp={6,1,4409,1,1},nCount=1},}, "test", 1);
end
local boco = random(1,15)
if boco==1 then
--tbAwardTemplet:GiveAwardByList({{szName = "B� C�",tbProp={6,1,4415,1,1},nCount=1},}, "test", 1);
end
local manhphoi = random(1,5)
if manhphoi==1 then
--tbAwardTemplet:GiveAwardByList({{szName = "M�nh Ph�i T�m",tbProp={4,1622,1,1},nCount=1},}, "test", 1);
end
local manhhoangkim=2--random(1,200)
if manhhoangkim==1 then
	local manh=random(1,3)
if manh==1 then
	local dinhquoc=random(1,5)
	if dinhquoc==1 then
		local IDmanh={928,930}
		local ranid=random(1,2)
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh ��nh Qu�c Thanh Sa Tr��ng Sam",tbProp={4,IDmanh[ranid],1,1},nCount=1},}, "test", 1);
	elseif dinhquoc==2 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh ��nh Qu�c X�ch Quy�n Nhuy�n Ngoa",tbProp={4,random(931,934),1,1},nCount=1},}, "test", 1);
	elseif dinhquoc==3 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh ��nh Qu�c T� ��ng H� uy�n",tbProp={4,random(935,938),1,1},nCount=1},}, "test", 1);
	elseif dinhquoc==4 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh ��nh Qu�c Ng�n T�m Y�u ��i",tbProp={4,random(939,942),1,1},nCount=1},}, "test", 1);
	elseif dinhquoc==5 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh ��nh Qu�c � Sa Ph�t Qu�n",tbProp={4,random(943,946),1,1},nCount=1},}, "test", 1);
	end
elseif manh==2 then
	local hiepcot=random(1,4)
	if hiepcot==1 then
		local IDmanh={772,774,776}
		local ranid=random(1,3)
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh Hi�p C�t T�nh � K�t",tbProp={4,IDmanh[ranid],1,1},nCount=1},}, "test", 1);
	elseif hiepcot==2 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh Hi�p C�t Thi�t Huy�t Sam",tbProp={4,random(903,906),1,1},nCount=1},}, "test", 1);
	elseif hiepcot==3 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh Hi�p C�t �a T�nh Ho�n",tbProp={4,random(907,910),1,1},nCount=1},}, "test", 1);
	elseif hiepcot==4 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh Hi�p C�t �an T�m Gi�i",tbProp={4,random(911,914),1,1},nCount=1},}, "test", 1);
	end
elseif manh==3 then
	local nhutinh=random(1,4)
	if nhutinh==1 then
		local IDmanh={778,780,782}
		local ranid=random(1,3)
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh C�n Qu�c Ngh� Th��ng",tbProp={4,IDmanh[ranid],1,1},nCount=1},}, "test", 1);
	elseif nhutinh==2 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh Nhu T�nh Th�c N� H�ng Li�n",tbProp={4,random(915,918),1,1},nCount=1},}, "test", 1);
	elseif nhutinh==3 then
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh Nhu T�nh  Ph�ng Nghi Gi�i Ch�",tbProp={4,random(919,922),1,1},nCount=1},}, "test", 1);
	elseif nhutinh==4 then
		local IDmanh={924,926}
		local ranid=random(1,2)
		tbAwardTemplet:GiveAwardByList({{szName = "M�nh Nhu T�nh  Tu� T�m Ng�c B�i",tbProp={4,IDmanh[ranid],1,1},nCount=1},}, "test", 1);
	end
end
end
local manhghepanbang = random(1,3)
if manhghepanbang==1 then
--tbAwardTemplet:GiveAwardByList({{szName = "M�nh R��ng M�nh An Bang",tbProp={4,1624,1,1},nCount=1},}, "test", 1);
end
tbAwardTemplet:GiveAwardByList({{nExp_tl = 500000}}, "test", 1);
--tbAwardTemplet:GiveAwardByList({{szName = "Thi�p Ch�c M�ng",tbProp={6,1,2621,1,1},nCount=1,},}, "test", 1);

	--tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});
	SetTask(TSK_BoHoa,GetTask(TSK_BoHoa)+1)
	Msg2Player("�� s� d�ng l�n th�: <color=green>"..HienTaiSuDung+1 .."<color>")
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
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=red>%s<color=green> t� Event B�nh Ng�t", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	--WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng HKMP C�i Bang\n");
end