
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");

function main(nItemIndex)
	dofile("script/global/g7vn/event/hoabonmua/bohoabonmua1.lua")
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if P~=4527 then
	Say("Event �� k�t th�c.")
	return 1
	end
local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate > 20220730 then
	Say("Event �� k�t th�c !!!")
	return 1
	end
	if CalcEquiproomItemCount(6,1,4527,-1) <1 then
	Say("Bug h�??? Chim c�t")
	return 1
	end
	if CalcFreeItemCellCount() < 10 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 10 � tr�ng!")
		return 1;
	end
	local TSK_BoHoa=4996
	local HienTaiSuDung =GetTask(TSK_BoHoa)
	if (HienTaiSuDung >= 300) then
	Say("S� d�ng event �� ��t gi�i h�n 300 c�i, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
	
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
	{szName="��i L�c Ho�n",tbProp={6,0,3,1,1},nCount=1,nRate=5,CallBack= _Message},
	{szName="Phi T�c Ho�n",tbProp={6,0,6,1,1},nCount=1,nRate=5,CallBack= _Message},
	{szName="Phi Phong",tbProp={6,1,15,1,1},nCount=1,nRate=2,CallBack= _Message},
	},
	}
	tbAwardTemplet:GiveAwardByList(tbVnNewItemDropAward,"Ph�n th��ng")	
----------------------------------------------------------------------------------------------------------------------------------------------
tbAwardTemplet:GiveAwardByList({{nExp_tl = 200000}}, "test", 1);
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
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=red>%s<color=green> t� <color=cyan>Phong Ph�o Trung", GetName(), strItemName)
	--AddGlobalNews(strMessage)
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
	--WriteLogPro("dulieu/moruonghkmprandom.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%H%M%d%m%Y")).."   "..GetIP().."\t �� nh�n ���c:"..strItemName.." t� b�o r��ng HKMP C�i Bang\n");
end