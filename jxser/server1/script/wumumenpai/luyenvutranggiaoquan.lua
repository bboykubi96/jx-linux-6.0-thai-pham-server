IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
-----------------------------------------------------
function main() 
dofile("script/wumumenpai/luyenvutranggiaoquan.lua")
	if GetTask(12) == 50*256 and GetLevel() >= 20 then
		Describe("Luy�n V� Tr�ng Gi�o Quan: B�n c� mu�n v�o v� tr��ng b�y gi� kh�ng?",2,"Xin cho t�i ���c v�o trong/nv2x2","�� t�i suy ngh� l�i/no")
	elseif GetTask(12) == 340*256 and GetLevel() >= 50 then
		Describe("Luy�n V� Tr�ng Gi�o Quan: B�n c� mu�n v�o v� tr��ng b�y gi� kh�ng?",2,"Xin cho t�i ���c v�o trong/nv5x3","�� t�i suy ngh� l�i/no")
	elseif GetTask(13) == 10*256 and GetLevel() >= 50 then
		Describe("Luy�n V� Tr�ng Gi�o Quan: B�n c� mu�n v�o v� tr��ng b�y gi� kh�ng?",2,"Xin cho t�i ���c v�o trong/nvkydanhdetu2","�� t�i suy ngh� l�i/no")
	else
		Talk(1,"","Luy�n V� Tr�ng Gi�o Quan: mu�n n�ng cao v� thu�t, th� ph�i ch�u kh� h�c h�i v� r�n luy�n.")
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------
function nv2x2() 
W,X,Y = GetWorldPos();
local nCamp = GetCurCamp();
CallSjNpc( 1153, 20, 989, 1502, 3091, "C�t Khang",5,0,50000,nil,nil,nil,nil,nil,nil,100);
CallSjNpc2( 1154, 20, 989, 1503, 3080, "Th� Nhu�",5,0,50000,nil,nil,nil,nil,nil,nil,100);
NewWorld(989, 1508, 3089)
SetFightState(1) 
end 

function CallSjNpc(NpcId, NpcLevel, W, X, Y, Name,nCamp)
	W,X,Y = GetWorldPos();
	local nCamp = 5;
	local nTaskId =5333
	local playername = GetName();
		NPC_PARAM_TASK_ID = 3
		nNpcIndex=AddNpc( 1153, 20, SubWorldID2Idx(W), 1502* 32, 3091* 32, 1, Name, 100);
		AddTimer(60* 18, "OnTimeout", nNpcIndex)
		if nNpcIndex > 0 then
		SetNpcScript(nNpcIndex, "\\script\\wumumenpai\\danhdienvotruong1.lua")
		SetNpcAI(nNpcIndex, 2)
		SetNpcKind(nNpcIndex, 0)	
		SetNpcCurCamp(nNpcIndex, nCamp)		
		SetNpcParam(nNpcIndex, %NPC_PARAM_POS, 2)			
		return nNpcIndex
		end
end


function CallSjNpc2(NpcId, NpcLevel, W, X, Y, Name,nCamp)
	W,X,Y = GetWorldPos();
local nCamp = 5;
	local nTaskId =5333
	local playername = GetName();
		NPC_PARAM_TASK_ID = 3
		nNpcIndex=AddNpc( 1154, 20, SubWorldID2Idx(W), 1503* 32, 3080* 32, 1, Name, 100);
		AddTimer(60* 18, "OnTimeout", nNpcIndex)
		if nNpcIndex > 0 then
		SetNpcScript(nNpcIndex, "\\script\\wumumenpai\\danhdienvotruong1.lua")
		SetNpcAI(nNpcIndex, 2)
		SetNpcKind(nNpcIndex, 0)	
		SetNpcCurCamp(nNpcIndex, nCamp)		
		SetNpcParam(nNpcIndex, %NPC_PARAM_POS, 2)			
		return nNpcIndex
		end
end
------------------------------------------------------------------------------------------------------------------------------------------
function nv5x3() 
W,X,Y = GetWorldPos();
local nCamp = GetCurCamp();
CallSjNpc5(632, 50, 989, 1507, 3091, "Tinh Anh S� Huynh",5,0,50000,nil,nil,nil,nil,nil,nil,100);
NewWorld(989, 1508, 3089)
SetFightState(1) 
end 

function CallSjNpc5(NpcId, NpcLevel, W, X, Y, Name,nCamp)
	W,X,Y = GetWorldPos();
	local nCamp = 5;
	local nTaskId =5333
	local playername = GetName();
		NPC_PARAM_TASK_ID = 3
		nNpcIndex=AddNpc( 632, 20, SubWorldID2Idx(W), 1507* 32, 3091* 32, 1, Name, 100);
		AddTimer(60* 18, "OnTimeout", nNpcIndex)
		if nNpcIndex > 0 then
		SetNpcScript(nNpcIndex, "\\script\\wumumenpai\\tinhanhsuhuynh.lua")
		SetNpcAI(nNpcIndex, 2)
		SetNpcKind(nNpcIndex, 0)	
		SetNpcCurCamp(nNpcIndex, nCamp)		
		SetNpcParam(nNpcIndex, %NPC_PARAM_POS, 2)			
		return nNpcIndex
		end
end

function nvkydanhdetu2()
local nIndex = AddNpc(110,1,SubWorldID2Idx(989),1507*32,3090*32,0,"C��ng Gi�")
SetNpcScript(nIndex,"\\script\\wumumenpai\\cuonggia.lua")
AddTimer(240* 18, "OnTimeout", nIndex)
NewWorld(989,1508,3089)
SetFightState(1) 
end

function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
------------------------