-- script viet hoa By http://tranhba.com #ãÌ####ÄNpc
-- script viet hoa By http://tranhba.com ##²#ã##ÄÝ##ß#Ì##±###´ããó40####
-- script viet hoa By http://tranhba.com #######ÄÝ##ß±###ß###º©Ð##µ#¢##´#±#·###
-- script viet hoa By http://tranhba.com ###ð###ÄÝ##ß±###ß###·ª###··Å¿ó#ð#ó####´#±#·###
-- script viet hoa By http://tranhba.com ##±#·#£±#Ìß###ÄÐß####Ä#ð####

Include("\\script\\missions\\ËÎ½ðÕ½³¡PKÕ½\\ËÎ½ðÕ½³¡Í·ÎÄ¼þ.lua");

function main()

local State = GetMissionV(1) 

-- script viet hoa By http://tranhba.com #´¿#£#
if (State == 0 ) then 
	Say("#ß´ã#####´³#######¤ý£±#ý###Ì#Å##!",0);
	NewWorld(78,1768,3098)
	SetFightState(1)
	return
end;

-- script viet hoa By http://tranhba.com ß×³##Ð¿##±#ãÝ#³#
if (State > 2) then
	NewWorld(78,1768,3098)
	SetFightState(1)
	return
end;


local GroupV = GetTask(SJTASKVLAUE);
-- script viet hoa By http://tranhba.com Ì####·Ý##ß£#ß###±#·##ý#Ä########¸###µ´#Ä##¤ßÌã##Ì#
result = CheckLastBattle(1, State);
if (result == 1) then
	return
end

if (result == 2) then
	-- script viet hoa By http://tranhba.com ´####°£#####Ý##ßã##¤###Ä±#·#Npc#Ä#¤#°
	Say("Ä·#Ì#ðÌ########ß##Ð###Ð±º##ßÝ#°####ß£Äã#Ä··#Ð±##Ä·#µ#ß##!",0)
end


-- script viet hoa By http://tranhba.com ±#·#£±#ó
if (State == 1 or State == 2) then 
	MSDIdx = PIdx2MSDIdx(1, PlayerIndex);
	if (MSDIdx > 0) then 
		nGroup = GetMSIdxGroup(1, MSDIdx);
 		
	if ( nGroup == 1) then 
    		Say("#ó#ß##Ý####ßã#¤ð####¤ó£##ß·#±######ó#Ä£±ºß¸#!",0)
  		else
    		Say("Ä·#Ì#ðÌ########ß##Ð###Ð±º##ßÝ#°####ß£Äã#Ä··#Ð±##Ä·#µ#ß##!",0)
  		end
	
		return
	end;
end;

if (State == 1) then
	if (GetMSPlayerCount(1,1) >= MAX_S_COUNT) then
		Say("#ß·##Ä##¸#Ä¿#°ß#####·ð#ð#ó###³£¿###Ì#¢ß#´#°Ð!", 0)
	return
	end;
	
	Say("#ó#ß##Ý####ßã#¤ð####¤ó£##ß·#±######ó#Ä£±ºß¸######Ìß#´###40##ß¤Ð#####³#3000¸##ÝÄ#³###Ð±##!",2, "#ß²##ã. /Yes", "Ì·#ß####!/No");
end;

-- script viet hoa By http://tranhba.com ##â#£±#ó
if (State == 2) then 
	Say("#°##âý##Ðóâ#âï############âß#·±##Ä####",0);
	return 
end;

end;

function Yes()
if (GetMissionV(1) ~= 1) then
	return
end
if (GetLevel() >= 40) then 
  if (Pay(MS_SIGN_MONEY) == 1) then
  Msg2Player("##ã#Ä·#Ä#ãÌ#####³¯#Äã##Û####¿×##Ì#â#³#°Ð!");
  V = GetMissionV(5);
  SetMissionV(5, V + 1);
  AddMSPlayer(1,1);
  SJ_JoinS();
  SetTask(SJKILLNPC,0);
  SetTask(SJKILLPK,0);
  -- script viet hoa By http://tranhba.com CheckGoFight()
  return 
  end;
end;

Say("Ä·²###40###ßâ#·#ã#´#####",0);
end;

function No()
Say("¿×##Ì#######£±##²##µ¸#!",0);
end;
