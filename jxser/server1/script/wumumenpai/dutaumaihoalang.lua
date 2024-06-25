IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")

function main(nNpcIdx)
local nNpcIndex = GetLastDiagNpc()
local dwNpcId = GetNpcId(nNpcIndex)	
	if (GetTask(12) == 80*256) then
		OnClick()
	end	
end


function OnClick(nNpcIdx)
Talk(5,"nv2x5","Du TÈu M¹i Hãa Lang: c¸c vÞ anh hïng h·y ë l¹i, kh«ng biÕt c¸c vÞ anh hïng cã lo khi kh«ng cã vò khÝ trong tay kh«ng?","Du TÈu M¹i Hãa Lang: Tµi hÌn søc män, ta ®· ®i b¾c nam nhiÒu n¬i, t×m rÊt nhiÒu nguyªn liÖu tèt. Tr­íc ®©y ta ®· cøu mét ng­êi, ng­êi ®ã ®­îc mÖnh danh lµ thî rÌn thÇn bÝ hiÕm cã. §Ó tr¶ ¬n, anh Êy ®· më lß luyÖn vµ biÕn nh÷ng nguyªn liÖu quý cña t«i thµnh mét vò khÝ uy lùc v« song!","Du TÈu M¹i Hãa Lang: sau khi anh Êy rêi ®i cã nãi r»ng, vÞ anh hïng thø 250 mµ ta gÆp sÏ lµ chñ nh©n cña lo¹i binh khÝ nµy","Du TÈu M¹i Hãa Lang: kh«ng ngê, ng­¬i chÝnh lµ ng­êi ®ã.")
end

function nv2x5(nNpcIdx)
Describe("Du TÈu M¹i Hãa Lang: C¸c h¹ víi ta cã duyªn, kh«ng yªu cÇu g× kh¸c, chØ cÇn ®¹i hiÖp cho 1 n÷a sè tiÒn nguyªn liÖu, ta sÏ ®em t¨ng binh khÝ ®ã cho ®¹i hiÖp, ®¹i hiÖp thÊy thÕ nµo?",3,"Hõ, thËt lµ mét gian th­¬ng, ta sÏ cho ng­¬i biÕt tay/nv2x6","§Ó ta suy nghÜ l¹i/no")
end

function nv2x6(nNpcIdx)
local nNpcIndex = GetLastDiagNpc();
DelNpc(nNpcIndex)
CallSjNpc3(488, 20, 179, 1875, 2634, "Th­¬ng Gia",5,0,50000,nil,nil,nil,nil,nil,nil,100);
SetTask(12,90*256)
end

function CallSjNpc3(NpcId, NpcLevel, W, X, Y, Name,nCamp)
	W,X,Y = GetWorldPos();
	local nCamp = 5;
	local nTaskId =5333
	local playername = GetName();
		NPC_PARAM_TASK_ID = 3
		nNpcIndex=AddNpc(488, 20, SubWorldID2Idx(W), 1875* 32, 2634* 32, 1, Name, 100);
		AddTimer(590* 18, "OnTimeout", nNpcIndex)
		if nNpcIndex > 0 then
		SetNpcScript(nNpcIndex, "\\script\\wumumenpai\\danhdutaumaihoalang.lua")
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
