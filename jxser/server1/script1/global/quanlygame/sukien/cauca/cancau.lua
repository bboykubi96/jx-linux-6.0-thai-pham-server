--Event cau ca bang hoi
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\quanlygame\\sukien\\cauca\\head.lua")
IncludeLib("ITEM")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
MAXCOUNT = 5

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>§¹i hiÖp <color=yellow>%s<color=yellow> b¾t ®­îc<enter><color=cyan><%s><color=green><enter><color=yellow>< khi c©u c¸ t¹i D­¬ng Ch©u (207/197) ><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

local _GetFruit = function(nItemIndex)
	batdaucau()
	DemSoLan(nItemIndex)
end
local _OnBreak = function()
	Msg2Player("C©u c¸ thÊt b¹i")
end
function main(nItemIdx)
		local nHour = tonumber(GetLocalDate("%H%M"))
		if( nHour >= 2030 and nHour < 2100) then
else
		Say("Thêi gian c©u c¸ tõ 20h30 tíi 21h00...",0);
		return 1;
end
	local G,D,P,nLevel = GetItemProp(nItemIdx);
	if (G ~= 6) then
		return 1;
	end

	w,x,y=GetWorldPos()
	if w ~= 80 then
		CreateTaskSay({"B¹n h·y ®Õn <color=red>D­¬ng Ch©u (207/197)<color> ®Ó b¾t c¸","§­a ta ®Õn ®ã./MoveMap","Tho¸t./Cancel",});
		return 1;
	end

	PosId = GetNearstPos(x*32,y*32, GccPos);
	if (PosId == 0) then 
		Say("B¹n ®øng c¸ch khu vùc qu¸ xa <color=red>D­¬ng Ch©u (207/197)<color>, kh«ng thÓ sö dông! ",0)
		return 1
	end;	

	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 6 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
	end
	if P == 4349 then ----can cau
		tbProgressBar:OpenByConfig(21, %_GetFruit,{nItemIdx}, %_OnBreak)
	end
	return 1
end

function DemSoLan(nItemIdx)
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
	local itemname = "<color=yellow>"..GetItemName(nItemIdx).."<color>"
	SetSpecItemParam(nItemIdx,1,n_param)
	SyncItem(nItemIdx)
	if (n_param >= MAXCOUNT) then
		RemoveItemByIndex(nItemIdx)
	else
		Msg2Player(""..itemname.." cßn sö dông "..(MAXCOUNT - n_param).." lÇn")
	end
end
function MoveMap()
	NewWorld(80,1657,3140)
	Msg2Player("B¹n ®· ®Õn khu vùc c©u c¸!")
end
function GetDesc(nItemIdx)
	local szDesc = ""
	local n_param = tonumber(GetItemParam( nItemIdx, 1 ))
	szDesc = szDesc..format("\nCã thÓ sö dông <color=yellow>%d<color> lÇn", (MAXCOUNT - n_param));
	return szDesc;
end



function batdaucau()
local s = random(1,7)

if s==1 then
tbAwardTemplet:GiveAwardByList({{szName="C¸ Lãc",tbProp={6,1,4350,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color=yellow> c©u ®­îc c¸ Lãc <enter><color=yellow> khi c©u c¸ t¹i D­¬ng Ch©u (207/197)")
end;
if s==2 then
tbAwardTemplet:GiveAwardByList({{szName="C¸ R«",tbProp={6,1,4351,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color=yellow> c©u ®­îc c¸ R« <enter><color=yellow> khi c©u c¸ t¹i D­¬ng Ch©u (207/197)")
end;
if s==3 then
tbAwardTemplet:GiveAwardByList({{szName="C¸ Trª",tbProp={6,1,4352,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color=yellow> c©u ®­îc c¸ Trª <enter><color=yellow> khi c©u c¸ t¹i D­¬ng Ch©u (207/197)")
end;
if s==4 then
tbAwardTemplet:GiveAwardByList({{szName="C¸ Bãng",tbProp={6,1,4353,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color=yellow> c©u ®­îc c¸ Bãng <enter><color=yellow> khi c©u c¸ t¹i D­¬ng Ch©u (207/197)")
end;
if s==5 then
tbAwardTemplet:GiveAwardByList({{szName="L­¬ng",tbProp={6,1,4354,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color=yellow> c©u ®­îc c¸ L­¬ng <enter><color=yellow> khi c©u c¸ t¹i D­¬ng Ch©u (207/197)")
end;
if s==6 then
tbAwardTemplet:GiveAwardByList({{szName="T«m Cµng Xanh",tbProp={6,1,4355,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color=yellow> c©u ®­îc c¸ T«m Cµng Xanh <enter><color=yellow> khi c©u c¸ t¹i D­¬ng Ch©u (207/197)")
end;
if s==7 then
tbAwardTemplet:GiveAwardByList({{szName="Cua Cµng K×nh",tbProp={6,1,4356,1,1},nCount=1  ,},}, "test", 1);
Msg2SubWorld("§¹i hiÖp <color=yellow>"..GetName().."<color=yellow> c©u ®­îc c¸ Cua Cµng K×nh <enter><color=yellow> khi c©u c¸ t¹i D­¬ng Ch©u (207/197)")
end;
end