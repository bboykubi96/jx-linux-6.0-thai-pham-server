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
Talk(5,"nv2x5","Du T�u M�i H�a Lang: c�c v� anh h�ng h�y � l�i, kh�ng bi�t c�c v� anh h�ng c� lo khi kh�ng c� v� kh� trong tay kh�ng?","Du T�u M�i H�a Lang: T�i h�n s�c m�n, ta �� �i b�c nam nhi�u n�i, t�m r�t nhi�u nguy�n li�u t�t. Tr��c ��y ta �� c�u m�t ng��i, ng��i �� ���c m�nh danh l� th� r�n th�n b� hi�m c�. �� tr� �n, anh �y �� m� l� luy�n v� bi�n nh�ng nguy�n li�u qu� c�a t�i th�nh m�t v� kh� uy l�c v� song!","Du T�u M�i H�a Lang: sau khi anh �y r�i �i c� n�i r�ng, v� anh h�ng th� 250 m� ta g�p s� l� ch� nh�n c�a lo�i binh kh� n�y","Du T�u M�i H�a Lang: kh�ng ng�, ng��i ch�nh l� ng��i ��.")
end

function nv2x5(nNpcIdx)
Describe("Du T�u M�i H�a Lang: C�c h� v�i ta c� duy�n, kh�ng y�u c�u g� kh�c, ch� c�n ��i hi�p cho 1 n�a s� ti�n nguy�n li�u, ta s� �em t�ng binh kh� �� cho ��i hi�p, ��i hi�p th�y th� n�o?",3,"H�, th�t l� m�t gian th��ng, ta s� cho ng��i bi�t tay/nv2x6","�� ta suy ngh� l�i/no")
end

function nv2x6(nNpcIdx)
local nNpcIndex = GetLastDiagNpc();
DelNpc(nNpcIndex)
CallSjNpc3(488, 20, 179, 1875, 2634, "Th��ng Gia",5,0,50000,nil,nil,nil,nil,nil,nil,100);
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
