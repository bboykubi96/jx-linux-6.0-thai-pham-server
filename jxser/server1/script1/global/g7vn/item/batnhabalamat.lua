IncludeLib("LEAGUE")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua")
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
		Say("Ng­êi ch¬i ch­a ®¹t cÊp 30 kh«ng thÓ sö dông event.", 0);
		return 1;
        end
if	countlinhdon<15  then
		 Say("CÇn ph¶i max 15 TrÊn Ph¸i Linh §¬n.")
		return 1
		end
	local nTask = GetTask(4387)
	if nTask >= 1 then
		 Say("Mçi nh©n vËt chØ cã thÓ sö dông B¸t Nh· Ba La MËt 1 lÇn duy nhÊt xin h·y nh­êng cho acc kh¸c")
		return 1
		end
SetTask(4387,1)
SetTask(1882, SetByte(nValue, 1, 0))
Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> reset thµnh c«ng cã thÓ t¨ng giíi h¹n ¨n thªm 15 TrÊn Ph¸i Linh §¬n")
Msg2Player("Reset thµnh c«ng !<enter><color=yellow>b©y giê b¹n cã thÓ t¨ng giíi h¹n ¨n TrÊn Ph¸i Linh §¬n lªn tèi ®a 15 ®¬n vÞ n÷a<color>");
	
	
end
