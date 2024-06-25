-- script viet hoa By http://tranhba.com ##¤#±±## ××Ì×#× ¢«ß##Ä###ã#¤#°
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) #ãÌ#¢«#µ####¢«##±#°#

function main(sel)
	Uworld30 = GetByte(GetTask(30),1)
	if (GetFaction() == "tianren") or (Uworld30 == 127) then
		Say("##ãã#º#ß·#´ã#ð#ó#Äß#£â¿Ð²#±Ì###ó##Ð###·#ß#²#Ðï##º·ß#ß²º##µ####", 2, "##ß#/yes", "²###ß#/no")
	else
		Talk(1,"","#×##ã#¸###±##×ß###Ä#¢«###ß³####ã.")
	end
end;

function yes()
Sale(62)
end;

function no()
end;
