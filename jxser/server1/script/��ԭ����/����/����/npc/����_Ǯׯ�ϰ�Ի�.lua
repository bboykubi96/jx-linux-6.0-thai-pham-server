--中原南区 襄阳府 钱庄老板对话
-- Update: Dan_Deng(2003-12-31) 加红包、元宝功能

Include("\\script\\global\\钱庄功能.lua")

function main(sel)
	i = random(0,1)
	if (i == 0) then
		Talk(1,"main_proc","Ch� ti襫 trang:  L� d﹏ l祄 ╪, 琻g nhi猲 l� ti襫 ki誱 頲 c祅g nhi襲 c祅g t鑤 r錳, gi祏 c� l� sng nh蕋 trong thi猲 h� r錳! ")
	else
		Talk(1,"Ch� ti襫 trang:  Chuy謓 i to祅 gi� d鑙, ch� c� v祅g th藅 b筩 tr緉g m韎 l� th藅 th玦.")
	end
end;
