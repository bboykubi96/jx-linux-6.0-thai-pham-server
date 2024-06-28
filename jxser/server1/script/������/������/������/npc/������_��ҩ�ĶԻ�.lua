-- script viet hoa By http://tranhba.com ¸#º### ××Ýâ°# ¢«ß##Ä°##ó#¤#°
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) #ãÌ#¢«#µ####¢«##±#°#

function main(sel)
	Uworld38 = GetByte(GetTask(38),1)
	if (GetFaction() == "tianwang") or (Uworld38 == 127) then
		Say("××Ýâ°##ó#ºâ©##ß###£#¤Û#ºÐ#Ý¸ÐóÝ¸³##Ä############±###ã#####", 2, "##ß#/yes", "²###ß#/no")
	else
		Talk(1,"","°###ã#¸##º±#°#±#####¢«##Ý#·Å####")
	end
end;

function yes()
Sale(59);  			
end;

function no()
end;






