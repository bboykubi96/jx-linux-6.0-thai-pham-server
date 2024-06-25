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
Describe("C­êng Gi¶: L¹i mét kÎ kh«ng sî chÕt? NÕu ng­¬i ®ång ý vµ ®¸nh th¾ng ta, ta sÏ tÆng cho ng­¬i mét sè b¶o bèi",2,"Ta kh«ng nghÜ vÒ ®iÒu ®ã! ChiÕn ®Êu nÕu ng­¬i muèn/kydanhdetu2","§Ó ta nghÜ l¹i ®·/no")
end

function kydanhdetu2(nNpcIdx)
Describe("C­êng Gi¶: ThËt ra, nÕu ng­¬i chÞu ®­îc 10 chiªu cña ta, ng­¬i sÏ v­ît qua. NÕu ng­¬i kh«ng chÞu ®ùng ®­îc, cã thÓ cÇu xin ta, ta sÏ cho ng­¬i ®i, ng­¬i cã nghÜ nh­ thÕ kh«ng?",2,"Ta thµ chÕt còng kh«ng ®Çu hµng/kydanhdetu3","§Ó ta suy nghÜ l¹i/no")
end

function kydanhdetu3(nNpcIdx)
local nNpcIndex = GetLastDiagNpc();
DelNpc(nNpcIndex)
CallSjNpc3( 163, 50, 989, 1504, 3087, "C­êng Gi¶",5,0,50000,nil,nil,nil,nil,nil,nil,100);
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
