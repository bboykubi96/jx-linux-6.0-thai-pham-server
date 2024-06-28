-- script viet hoa By http://tranhba.com  ´ãµÝ###°Ä###³#·Å#µ±###&³#·Å#µ±#ßß
-- script viet hoa By http://tranhba.com  by#ºDan_Deng(2003-09-16)
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-05-27) ###ï£##ïÌ###

Include("\\script\\global\\repute_head.lua")
Include("\\script\\global\\map_helper.lua")
npc_name = "<#>³#·Å#µ±#"

function default_talk()
-- script viet hoa By http://tranhba.com 	UTask_world42 = GetTask(42)	-- script viet hoa By http://tranhba.com  ÐÌ#·Ì###±#¸¿
-- script viet hoa By http://tranhba.com 	if ((UTask_world42 == 0) and (GetLevel() >= 80) and (GetReputeLevel(GetRepute()) >= 7)) then		-- script viet hoa By http://tranhba.com  Ì####«#¯##ÐïÝ##Ì##ºÝÐïÝ####Ä####²#£#º#·#Ì###ß##£·#°#
-- script viet hoa By http://tranhba.com 		Talk(6,"U42_get","³#·Å#µ±####º×ý##³#µ#####µ#ã###º####££##ï#¿","³#·Å#µ±#ßß#º£#°####ß¤#µ´#Ä#°Ý#ß######ý#####ãß²²###¸#######³#µ´#³#ß°##ýâß#ï#ã##","Ý##ß#º¸######¿##¤â·´##£¢#¿","³#·Å#µ±####ºº#º###â©##´ã#µß#±Ý×·×·##ã#·#Ð#####¿´µ´£#######â©###ã£¢¿##¿","Ý##ß#º¿Ý####¢###²###°####µ#ó£##ß±²±#####","³#·Å#µ±#ßß#º°#######ÝÝ#Ä####º·#ã·#´###°###")
-- script viet hoa By http://tranhba.com 	else
		Talk(4,"","##××#ß¿´##9##·µÌ###²#¿´#Ý¿Ð##¸###¿´²#ã·##","###ã##Ä#¸#°Ð!","#####Ýã#######¿´â©¿´Ä###´ã¸#ß²º·!","·#´Ý##ÐÝ##º#·µ! ")
-- script viet hoa By http://tranhba.com 	end;
end;

function U42_get()
	Say("#¤¸###£#5Ýß¸#.",2,"¸###´ã##â#ã#Ì#/yes1","###·¸###Ì#####²#¸##ß!/no")
end;

function yes1()
	if (GetCash()>=50000) then 
		Pay(50000)
		Talk(1,"","#ã#¢³#£#ºµ#Å##¿×Ì#ß#Ýâ#Ì#£#â#Åâ#Ì########µâ©##·#·#.")
		SetTask(42, 10)
		AddNote("###ï£##ïÌ####º#ãÌ#####Ì#ß#Ýâ#Ìâß#â#Å#µÌ##¯#£##º##Ä#### ")
		Msg2Player("###ï£##ïÌ####º#ãÌ#####Ì#ß#Ýâ#Ìâß#â#Å#µÌ##¯#£##º##Ä####")
	else
		Talk(1,"","#i##°Ð##·#####£²·´´ã#µ####Ì###Å#°Ð!")
	end
end;

function no()
	Talk(1,"","#i##°Ð##·#####£²·´´ã#µ####Ì###Å#°Ð!")
end;
