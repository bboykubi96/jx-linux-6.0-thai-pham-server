IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\·��_���.lua")
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\lib\\composeex.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
function main()
dofile("script/global/g7vn/item/batnhabalamat.lua")
local nValue	= GetTask(1882);
local countlinhdon = GetByte(nValue,1)

if GetLevel() < 10 then
		Say("Ng��i ch�i ch�a ��t c�p 30 kh�ng th� s� d�ng event.", 0);
		return 1;
        end
if	countlinhdon<15  then
		 Say("C�n ph�i max 15 Tr�n Ph�i Linh ��n.")
		return 1
		end
	local nTask = GetTask(4387)
	if nTask >= 1 then
		 Say("M�i nh�n v�t ch� c� th� s� d�ng B�t Nh� Ba La M�t 1 l�n duy nh�t xin h�y nh��ng cho acc kh�c")
		return 1
		end
SetTask(4387,1)
SetTask(1882, SetByte(nValue, 1, 0))
Msg2SubWorld("<color=cyan>Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> reset th�nh c�ng c� th� t�ng gi�i h�n �n th�m 15 Tr�n Ph�i Linh ��n")
Msg2Player("Reset th�nh c�ng !<enter><color=yellow>b�y gi� b�n c� th� t�ng gi�i h�n �n Tr�n Ph�i Linh ��n l�n t�i �a 15 ��n v� n�a<color>");
	
	
end
