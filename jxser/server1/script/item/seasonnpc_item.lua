
-- script viet hoa By http://tranhba.com  ====================== #Ä###Å## ======================

-- script viet hoa By http://tranhba.com  ###µ#Ð¤#online ß°ÛÅâï###µ## ###### Å##ïº×
-- script viet hoa By http://tranhba.com  Edited by peres
-- script viet hoa By http://tranhba.com  2006/12/26 PM 15:39

-- script viet hoa By http://tranhba.com  #×£##·###ß´#Ð#ß¢##£±Ý#Ì####Å###µ##····³#¢##·¤#µ´¤###¸Ð¸###
-- script viet hoa By http://tranhba.com  ²###â©#ÐÅ#°·#Äã#×#ß¤ºã#¸Ý#####ÄÄ##Ä#Ì#Ä###
-- script viet hoa By http://tranhba.com  Å##ã³#´ãß¤ºãß####¸##ÐÝ#ãÝ#####Ä#Ì#¢ð#¿#ß#Ä¸³####â#º×¸#ß##¢##
-- script viet hoa By http://tranhba.com  #×£##·Ý##¢##°##ß°#Ì#´#£#º·###ý####£##Ä##
-- script viet hoa By http://tranhba.com  ßß####â©£#Å##ãß#Ðó#Ä##·###

-- script viet hoa By http://tranhba.com  ======================================================

-- script viet hoa By http://tranhba.com  Ì#####Ý³¿©##³#
IncludeLib("TASKSYS");

Include("\\script\\global\\forbidmap.lua");

function main()

	local subworld, x, y = GetWorldPos();
	local mapindex = SubWorldID2Idx(subworld);
	local mapname = SubWorldName(mapindex);	
		
	-- script viet hoa By http://tranhba.com  ##â####´×#²#Ä#£#ã·
	if GetFightState()==0 then
		Say("##Ä#¤ó³#£#ã##¢£#´##Äâ#####ãß#ßâ#¸#####Ý#²ÅÄ#£#ã·´#######", 0);
		return 1;
	end;
	
	if CheckAllMaps(subworld)==1 then
		Say("##Ä#¤ó³#£#ã##¢£#´##Äâ#####ãß#ßâ#¸#####Ý#²ÅÄ#£#ã·´#######", 0);
		return 1;
	end;
	
	-- script viet hoa By http://tranhba.com  ß°ÛÅ#Äµµ#Ý##1###âÝ##Ä##2#####¿#Ä
	local nBossType = random(1,2);	
	
	-- script viet hoa By http://tranhba.com  ß°ÛÅ#ÄÝ###
	local aryBossTitle = {
		[1] = {"ã####Ä",
			   "#Ä²#¤ó#Ð#Ä",
			   "ã#µ¸#Ä",},
			   
		[2] = {"##Å##Ä",
			   "##ºý#Ä",
			   "·«#ý#Ä",},	
	}
	
	local nBossIndex  = {
			[1]=1237,
			[2]=1238,
		}

	local nNpcIndex	 = AddNpcEx(nBossIndex[nBossType],
					95,
					random(0,4),
					mapindex,
					x*32, -- script viet hoa By http://tranhba.com  ###· X ##ß#
					y*32, -- script viet hoa By http://tranhba.com  ###· Y ##ß#
					1,
					"##"..aryBossTitle[nBossType][random(1,getn(aryBossTitle[nBossType]))].."##ß°ÛÅ",
					1);
		
		SetNpcScript(nNpcIndex, "\\script\\global\\seasonnpc_death.lua");
		
		Msg2SubWorld("#####ºÝ##ß <color=yellow>"..GetName().."<color> âý¤ó<color=green>"..mapname.."<color>ã#ß°ÛÅ##´Ì##ßâ##");
		
		return 0;
end;

