-- script viet hoa By http://tranhba.com #��####�Npc
-- script viet hoa By http://tranhba.com ##�#�##��##�#�##�###����40####
-- script viet hoa By http://tranhba.com #######��##߱###�###���##�#�##�#�#�###
-- script viet hoa By http://tranhba.com ###�###��##߱###�###��###��ſ�#�#�####�#�#�###
-- script viet hoa By http://tranhba.com ##�#�#��#��###���####�#�####

Include("\\script\\missions\\�ν�ս��PKս\\�ν�ս��ͷ�ļ�.lua");

function main()

local State = GetMissionV(1) 

-- script viet hoa By http://tranhba.com #��#�#
if (State == 0 ) then 
	Say("#ߴ�#####��#######����#�###�#�##!",0);
	NewWorld(78,1768,3098)
	SetFightState(1)
	return
end;

-- script viet hoa By http://tranhba.com �׳##п##�#��#�#
if (State > 2) then
	NewWorld(78,1768,3098)
	SetFightState(1)
	return
end;


local GroupV = GetTask(SJTASKVLAUE);
-- script viet hoa By http://tranhba.com �####��##ߣ#�###�#�##�#�########�###��#�##����##�#
result = CheckLastBattle(1, State);
if (result == 1) then
	return
end

if (result == 2) then
	-- script viet hoa By http://tranhba.com �####��#####�##��##�###ı#�#Npc#�#�#�
	Say("ķ#�#��########�##�###б�##��#�####ߣ��#ķ�#б##ķ#�#�##!",0)
end


-- script viet hoa By http://tranhba.com �#�#��#�
if (State == 1 or State == 2) then 
	MSDIdx = PIdx2MSDIdx(1, PlayerIndex);
	if (MSDIdx > 0) then 
		nGroup = GetMSIdxGroup(1, MSDIdx);
 		
	if ( nGroup == 1) then 
    		Say("#�#�##�####��#��####��##߷#�######�#ģ��߸#!",0)
  		else
    		Say("ķ#�#��########�##�###б�##��#�####ߣ��#ķ�#б##ķ#�#�##!",0)
  		end
	
		return
	end;
end;

if (State == 1) then
	if (GetMSPlayerCount(1,1) >= MAX_S_COUNT) then
		Say("#߷##�##�#Ŀ#��#####��#�#�###���###�#��#�#��!", 0)
	return
	end;
	
	Say("#�#�##�####��#��####��##߷#�######�#ģ��߸######��#�###40##ߤ�#####�#3000�##��#�###б##!",2, "#߲##�. /Yes", "̷#�####!/No");
end;

-- script viet hoa By http://tranhba.com ##�#��#�
if (State == 2) then 
	Say("#�##��##���#��############��#��##�####",0);
	return 
end;

end;

function Yes()
if (GetMissionV(1) ~= 1) then
	return
end
if (GetLevel() >= 40) then 
  if (Pay(MS_SIGN_MONEY) == 1) then
  Msg2Player("##�#ķ#�#��#####��#��##�####��##�#�#�#��!");
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

Say("ķ�###40###��#�#�#�#####",0);
end;

function No()
Say("��##�#######��##�##��#!",0);
end;
