
-- script viet hoa By http://tranhba.com  ====================== #�###�## ======================

-- script viet hoa By http://tranhba.com  ###�#Ф#online ߰����###�## ###### �##��
-- script viet hoa By http://tranhba.com  Edited by peres
-- script viet hoa By http://tranhba.com  2006/12/26 PM 15:39

-- script viet hoa By http://tranhba.com  #ף##�###ߴ#�#ߢ##���#�####�###�##�����#�##��#���###�и###
-- script viet hoa By http://tranhba.com  �###�#��#��#��#�#ߤ��#��#####��##�#�#�###
-- script viet hoa By http://tranhba.com  �##�#��ߤ���####�##��#��#####�#�#��#�#�#ĸ�####�#�׸#�##�##
-- script viet hoa By http://tranhba.com  #ף##��##�##�##߰#�#�#�#��###�####�##�##
-- script viet hoa By http://tranhba.com  ��####⩣#�##��#��#�##�###

-- script viet hoa By http://tranhba.com  ======================================================

-- script viet hoa By http://tranhba.com  �#####ݳ��##�#
IncludeLib("TASKSYS");

Include("\\script\\global\\forbidmap.lua");

function main()

	local subworld, x, y = GetWorldPos();
	local mapindex = SubWorldID2Idx(subworld);
	local mapname = SubWorldName(mapindex);	
		
	-- script viet hoa By http://tranhba.com  ##�####��#�#�#�#�
	if GetFightState()==0 then
		Say("##�#��#�#�##��#�##��#####��#��#�#####�#���#�#㷴#######", 0);
		return 1;
	end;
	
	if CheckAllMaps(subworld)==1 then
		Say("##�#��#�#�##��#�##��#####��#��#�#####�#���#�#㷴#######", 0);
		return 1;
	end;
	
	-- script viet hoa By http://tranhba.com  ߰��#ĵ�#�##1###��##�##2#####�#�
	local nBossType = random(1,2);	
	
	-- script viet hoa By http://tranhba.com  ߰��#��###
	local aryBossTitle = {
		[1] = {"�####�",
			   "#Ĳ#��#�#�",
			   "�#��#�",},
			   
		[2] = {"##�##�",
			   "##��#�",
			   "��#�#�",},	
	}
	
	local nBossIndex  = {
			[1]=1237,
			[2]=1238,
		}

	local nNpcIndex	 = AddNpcEx(nBossIndex[nBossType],
					95,
					random(0,4),
					mapindex,
					x*32, -- script viet hoa By http://tranhba.com  ###� X ##�#
					y*32, -- script viet hoa By http://tranhba.com  ###� Y ##�#
					1,
					"##"..aryBossTitle[nBossType][random(1,getn(aryBossTitle[nBossType]))].."##߰��",
					1);
		
		SetNpcScript(nNpcIndex, "\\script\\global\\seasonnpc_death.lua");
		
		Msg2SubWorld("#####��##� <color=yellow>"..GetName().."<color> ����<color=green>"..mapname.."<color>�#߰��##��##��##");
		
		return 0;
end;

