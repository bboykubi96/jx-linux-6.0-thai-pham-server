IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\global\\judgeoffline_limit.lua");
Include("\\script\\missions\\basemission\\lib.lua")
IncludeLib("ITEM")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\activitysys\\g_activity.lua")
IncludeLib("TASKSYS");

local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return
	end
AddOwnExp(500000)
ruongnguu()

DelNpc(nNpcIdx)
end

local _OnBreak = function()
Msg2Player("B� ngo�i l�c t�c ��ng kh�ng th� thao t�c.!")
end


function main()
	local nNpcIndex = GetLastDiagNpc()
	if GetNpcParam(nNpcIndex, 4) ~= 1 then
		SetNpcParam(nNpcIndex, 4, 1)
		end
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)
	local nPlayerLevel = GetLevel();
	if (nPlayerLevel < 50) then
		Say("Ng��i ch�i ph�i ��t ��ng c�p tr�n 50 m�i c� th� tham gia.")
		return
		end
	tbProgressBar:OpenByConfig(5, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;




function ruongnguu()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>��u s� <color>%s<color=white> May m�n nh�n ���c <color=green><%s><enter><color=white>< khi nh�t b�o r��ng ��u ng�u><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
	
end
local s = random(1,11)

if s==1 then
			tbAwardTemplet:GiveAwardByList({{szName = "Thi�t La h�n",tbProp={6,1,23,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==2 then
			tbAwardTemplet:GiveAwardByList({{szName = "Qu� Hoa T�u",tbProp={6,1,125,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==3 then
			tbAwardTemplet:GiveAwardByList({{szName = "Thi�n S�n B�o L�",tbProp={6,1,72,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==4 then
			tbAwardTemplet:GiveAwardByList({{szName = "b�ch qu� l�",tbProp={6,1,73,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==5 then
			tbAwardTemplet:GiveAwardByList({{szName = "Ti�n Th� L�",tbProp={6,1,71,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==6 then
			tbAwardTemplet:GiveAwardByList({{szName = "T��ng �nh ph�",tbProp={6,1,18,1,1},nCount=1,CallBack= _Message,},}, "test", 1);

end;
if s==7 then
			tbAwardTemplet:GiveAwardByList({{szName = "B�n Nh��c",tbProp={6,1,12,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==8 then
			tbAwardTemplet:GiveAwardByList({{szName = "L� Bao B� K�p",tbProp={6,1,4347,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==9 then
			tbAwardTemplet:GiveAwardByList({{szName = "Hoa Hong",tbProp={6,0,20,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==10 then
			tbAwardTemplet:GiveAwardByList({{szName = "��i L�c",tbProp={6,0,3,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==11 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi T�c",tbProp={6,0,6,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
end