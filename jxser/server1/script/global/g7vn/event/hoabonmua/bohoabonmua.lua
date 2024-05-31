
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");

function main(nItemIndex)
	dofile("script/global/g7vn/event/hoabonmua/bohoabonmua.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P~=4528 then
	Say("Event �� k�t th�c.")
	return 1
	end
local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate > 20220730 then
	Say("Event �� k�t th�c !!!")
	return 1
	end
	if CalcEquiproomItemCount(6,1,4528,-1) <1 then
	Say("Bug h�??? Chim c�t")
	return 1
	end
	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 10 � tr�ng!")
		return 1;
	end
	local TSK_BoHoa=4994
	local HienTaiSuDung =GetTask(TSK_BoHoa)
	if (HienTaiSuDung >= 300) then
	Say("S� d�ng event �� ��t gi�i h�n 300 c�i, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
	
	
----------------------------------------------------------------------------------------------------------------------------------------------

local tbVnNewItemDropAward = {
	[1] = {
		--{szName="Ng�n L��ng",nJxb=20000000,nCount=1},
	--	{szName="Ti�n ��ng",tbProp={4,417,1,1,0,0},nCount=50},
--	{szName="R��ng m�nh HKMP ",tbProp={6,1,4448,1,1},nCount=20},
--	{szName="M�nh �o Nhu T�nh",tbProp={4,1619,1,1},nCount=1},
--	{szName="Th�y Tinh",tbProp={4,random(238,240),1,1},nCount=1},
--	{szName="B�o r��ng HKMP random 1 Ng�y",tbProp={6,1,4472,1,1},nCount=1,nExpiredTime=60*24},
	},
	[2] = {

	{szName="Th�y Tinh",tbProp={4,random(238,240),1,1},nCount=1,nRate=1,CallBack= _Message},
	{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1},nCount=1,nRate=1,CallBack= _Message},
	{szName="Ti�n Th�o L�",tbProp={6,1,71,1,1},nCount=1,nRate=1,CallBack= _Message},
	{szName="Ti�n Th�o L� ��t Bi�t",tbProp={6,1,1181,1,1},nCount=1,nRate=1,CallBack= _Message},
	{szName="Thi�n S�n B�o L�",tbProp={6,1,72,1,1},nCount=1,nRate=0.5,CallBack= _Message},
	{szName="B�ch Qu� L�",tbProp={6,1,73,1,1},nCount=1,nRate=1,CallBack= _Message},
	{szName="Qu� Hoa T�u",tbProp={6,1,125,1,1},nCount=1,nRate=1,CallBack= _Message},
	{szName="Ph�c Duy�n Ti�u",tbProp={6,1,122,1,1},nCount=1,nRate=1,CallBack= _Message},
	{szName="Ph�c Duy�n Trung",tbProp={6,1,123,1,1},nCount=1,nRate=0.7,CallBack= _Message},
	{szName="Ph�c Duy�n ��i",tbProp={6,1,124,1,1},nCount=1,nRate=0.5,CallBack= _Message},
	{szName="Th� ��t X�",tbProp={6,1,1375,1,1},nCount=1,nRate=0.5,CallBack= _Message},
	{szName="Thi�t La H�n",tbProp={6,1,23,1,1},nCount=1,nRate=0.5,CallBack= _Message},
	{szName="L� Bao B� K�p",tbProp={6,1,4347,1,1},nCount=1,nRate=1,CallBack= _Message},
	{szName="L� Bao Ti�n V�n",tbProp={6,1,4516,1,1},nCount=1,nRate=1,CallBack= _Message},
	{szName="B�n Nh��c T�m Kinh",tbProp={6,1,12,1,1},nCount=1,nRate=0.5,CallBack= _Message},
	{szName="M� B�i Gh�p Th� C��i",tbProp={6,1,random(4529,4533),1,1},nCount=1,nRate=1,CallBack= _Message},
	},
	}
	tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"Ph�n th��ng")	
----------------------------------------------------------------------------------------------------------------------------------------------
tbAwardTemplet:GiveAwardByList({{nExp_tl = 600000}}, "test", 1);
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
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=red>%s<color=green> t� <color=cyan>Phong Ph�o ��i", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	--WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng HKMP C�i Bang\n");
end