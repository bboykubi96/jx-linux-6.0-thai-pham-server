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
dofile("script/global/g7vn/item/batnhabalakinh.lua")
local nValue	= GetTask(1882);
local countlinhduoc = GetByte(nValue,2)
if GetLevel() < 10 then
		Say("Ng­êi ch¬i ch­a ®¹t cÊp 30 kh«ng thÓ sö dông event.", 0);
		return 1;
        end
if	countlinhduoc<15 then
		 Say("CÇn ph¶i max 15 TrÊn Ph¸i Linh D­îc.")
		return 1
		end
	local nTask = GetTask(4386)
	if nTask >= 1 then
		 Say("Mçi nh©n vËt chØ cã thÓ sö dông B¸t Nh· Ba La Kinh 1 lÇn duy nhÊt xin h·y nh­êng cho acc kh¸c")
		return 1
		end
SetTask(4386,1)
SetTask(1882, SetByte(nValue, 2, 0))
Msg2SubWorld("<color=cyan>Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> reset thµnh c«ng cã thÓ t¨ng giíi h¹n ¨n thªm 15 TrÊn Ph¸i Linh D­îc")
Msg2Player("Reset thµnh c«ng !<enter><color=yellow>b©y giê b¹n cã thÓ t¨ng giíi h¹n ¨n Tr©n Ph¸i Linh D­îc lªn tèi ®a 15 ®¬n vÞ n÷a<color>");
	
	
end
