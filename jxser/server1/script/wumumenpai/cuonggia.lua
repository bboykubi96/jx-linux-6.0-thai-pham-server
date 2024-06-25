IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
-----------------------------------------------------
function main(nNpcIdx)
local nNpcIndex = GetLastDiagNpc()
local dwNpcId = GetNpcId(nNpcIndex)	
	if (GetTask(13) == 10*256) then
		OnClick()
	end	
end


function OnClick(nNpcIdx)
Describe("C��ng Gi�: L�i m�t k� kh�ng s� ch�t? N�u ng��i ��ng � v� ��nh th�ng ta, ta s� t�ng cho ng��i m�t s� b�o b�i",2,"Ta kh�ng ngh� v� �i�u ��! Chi�n ��u n�u ng��i mu�n/kydanhdetu2","�� ta ngh� l�i ��/no")
end

function kydanhdetu2(nNpcIdx)
Describe("C��ng Gi�: Th�t ra, n�u ng��i ch�u ���c 10 chi�u c�a ta, ng��i s� v��t qua. N�u ng��i kh�ng ch�u ��ng ���c, c� th� c�u xin ta, ta s� cho ng��i �i, ng��i c� ngh� nh� th� kh�ng?",2,"Ta th� ch�t c�ng kh�ng ��u h�ng/kydanhdetu3","�� ta suy ngh� l�i/no")
end

function kydanhdetu3(nNpcIdx)
local nNpcIndex = GetLastDiagNpc();
DelNpc(nNpcIndex)
CallSjNpc3( 163, 50, 989, 1504, 3087, "C��ng Gi�",5,0,50000,nil,nil,nil,nil,nil,nil,100);
end

function CallSjNpc3(NpcId, NpcLevel, W, X, Y, Name,nCamp)
	W,X,Y = GetWorldPos();
	local nCamp = 5;
	local nTaskId =5333
	local playername = GetName();
		NPC_PARAM_TASK_ID = 3
		nNpcIndex=AddNpc( 163, 50, SubWorldID2Idx(W), 1504* 32, 3087* 32, 1, Name, 100);
		AddTimer(590* 18, "OnTimeout", nNpcIndex)
		if nNpcIndex > 0 then
		SetNpcScript(nNpcIndex, "\\script\\wumumenpai\\cuonggia2.lua")
		SetNpcAI(nNpcIndex, 2)
		SetNpcKind(nNpcIndex, 0)	
		SetNpcCurCamp(nNpcIndex, nCamp)		
		SetNpcParam(nNpcIndex, %NPC_PARAM_POS, 2)	
		SetNpcTimer(nNpcIndex, 20*60*18)		
		return nNpcIndex
		end
end

function OnTimeout(nNpcIndex)
DelNpc(nNpcIndex);
end
