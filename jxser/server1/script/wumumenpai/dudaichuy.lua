Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

function main(sel)
	if (GetLastFactionNumber() == 11 or GetTask(13) >= 30*256) then 
		Say("D­ §¹i Chïy: §Ó thi ®Êu trong ®Êu tr­êng, vò khÝ lµ mét thø kh«ng thÓ thiÕu.", 2,"Giao dÞch/yes", "Ta cã chuyÖn kh¸c/no")
	else
		Say("D­ §¹i Chïy: Ch­ëng M«n Ta Cã LÖnh C¸c §Ö Tö Bæn M«n Kh«ng §­îc Cung CÊp Vò KhÝ Cho Ng­êi Ngoµi!")
	end
end;

function yes()
Sale(37)			
end;


function no()
end;
