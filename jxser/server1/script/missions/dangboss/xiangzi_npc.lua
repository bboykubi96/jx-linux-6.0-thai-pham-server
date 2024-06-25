IncludeLib("LEAGUE")
IncludeLib("SETTING")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
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
Msg2Player("BÞ ngo¹i lùc t¸c ®éng kh«ng thÓ thao t¸c.!")
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
		Say("Ng­êi ch¬i ph¶i ®¹t ®¼ng cÊp trªn 50 míi cã thÓ tham gia.")
		return
		end
	tbProgressBar:OpenByConfig(5, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
end;




function ruongnguu()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=white>§Êu sÜ <color>%s<color=white> May m¾n nhËn ®­îc <color=green><%s><enter><color=white>< khi nhÆt b¶o r­¬ng ®Êu ng­u><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	--RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	AddGlobalNews(msg);
	OB_Release(handle)
	
end
local s = random(1,11)

if s==1 then
			tbAwardTemplet:GiveAwardByList({{szName = "ThiÕt La h¸n",tbProp={6,1,23,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==2 then
			tbAwardTemplet:GiveAwardByList({{szName = "QuÕ Hoa Töu",tbProp={6,1,125,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==3 then
			tbAwardTemplet:GiveAwardByList({{szName = "Thiªn S¬n B¶o Lé",tbProp={6,1,72,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==4 then
			tbAwardTemplet:GiveAwardByList({{szName = "b¸ch qu¶ lé",tbProp={6,1,73,1,1},nCount=1, CallBack= _Message,},}, "test", 1);
end;
if s==5 then
			tbAwardTemplet:GiveAwardByList({{szName = "Tiªn Thæ Lé",tbProp={6,1,71,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==6 then
			tbAwardTemplet:GiveAwardByList({{szName = "T­¬ng ¸nh phï",tbProp={6,1,18,1,1},nCount=1,CallBack= _Message,},}, "test", 1);

end;
if s==7 then
			tbAwardTemplet:GiveAwardByList({{szName = "Bµn Nh­îc",tbProp={6,1,12,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==8 then
			tbAwardTemplet:GiveAwardByList({{szName = "LÔ Bao BÝ KÝp",tbProp={6,1,4347,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==9 then
			tbAwardTemplet:GiveAwardByList({{szName = "Hoa Hong",tbProp={6,0,20,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==10 then
			tbAwardTemplet:GiveAwardByList({{szName = "§¹i Lùc",tbProp={6,0,3,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
if s==11 then
			tbAwardTemplet:GiveAwardByList({{szName = "Phi Tèc",tbProp={6,0,6,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;
end