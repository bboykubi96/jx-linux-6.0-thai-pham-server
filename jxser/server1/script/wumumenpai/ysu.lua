Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
-------------------------------------------------
function main(sel)
dofile("script/wumumenpai/ysu.lua")
	if (GetLastFactionNumber() == 11 and GetTask(12) == 210*256 and GetLevel() >= 30) then
		Say("Y S­: Phiªu b¹c trªn giang hå ch¾c ch¾n sÏ bÞ th­¬ng. Ta b¸n thuèc ch÷a bÖnh lµ chñ yÕu.",3,"Ta Muèn ChÕ D­îc LiÖu TrÞ Th­¬ng/nv3x3","Giao dÞch/yes","Ta cã chuyÖn kh¸c/no");
	elseif (GetLastFactionNumber() == 11 or GetTask(13) >= 30*256) then 
		Say("Y S­: Phiªu b¹c trªn giang hå ch¾c ch¾n sÏ bÞ th­¬ng. Ta b¸n thuèc ch÷a bÖnh lµ chñ yÕu.", 2,"Giao dÞch/yes", "Ta cã chuyÖn kh¸c/no");
	else
		Talk(1,"","Y S­: Ta chØ chöa trÞ cho nh÷ng ng­êi ë bæn ph¸i mµ th«i.")
	end
end

function nv3x3()
Talk(4,"",""..GetName()..": §©y lµ th¶o d­îc mµ Thang Anh nhê giao cho Y S­, Y S­ xem cã ph¶i lµ d­îc liÖu cÇn kh«ng?","Y S­: Tèt, ®Ó ta xem thö.","Y S­:¸! §©y ®óng lµ thø ta ®ang cÇn.","Y S­: Cã qu¸ nhiÒu ng­êi bÞ th­¬ng, L·o phu h¬i yÕu, xin h·y gióp ta b«i d­îc liÖu ®Ó ch÷a th­¬ng cho c¸c ®Ö tö, sau ®ã b¸o c¸o cho Thang Anh biÕt t×nh h×nh.")			
tbAwardTemplet:GiveAwardByList({tbProp={6,1,4331,1,0,0},nCount=3,nBindState=-2},"D­îc LiÖu")
SetTask(12,220*256) ConsumeEquiproomItem(3,6,1,4330,-1)
Msg2Player("§Õn ch÷a th­¬ng cho c¸c ®Ö tö (221/199)")
end;

function yes()
Sale(65);  			
end;


function no()
end;
