-- script viet hoa By http://tranhba.com �##�#����#���#�#��#�##
-- script viet hoa By http://tranhba.com �##�#�#�10�#######�#1�##�ĳ###�####��4�##�ĳ###�####��5�#�##�ĳ###�##
-- script viet hoa By http://tranhba.com ###�#�#�50�#######20�##�ĳ###�##30�##�#####�##
-- script viet hoa By http://tranhba.com ĳ###�#�###���#�##���##��###��#�#�#п###
TASK_LW_TYPECOUNT = 1 -- script viet hoa By http://tranhba.com 
TASK_LW_AWARD_MAX = 2 -- script viet hoa By http://tranhba.com #�#�#�#�####��
TASK_LW_AWARD_USED = 3 -- script viet hoa By http://tranhba.com #�#�#�#�##�###�#�##���
TASK_LW_AWARD_TOTAL = 4 -- script viet hoa By http://tranhba.com #�#�##��#�###��#��
TASK_LW_AWARD_CURPOS = 5 -- script viet hoa By http://tranhba.com #�#��###�##����#��#�#��#
-- script viet hoa By http://tranhba.com tab = 
-- script viet hoa By http://tranhba.com {
-- script viet hoa By http://tranhba.com 	leagueid, �##�id
-- script viet hoa By http://tranhba.com 	"awardinfo" = { #�##����
-- script viet hoa By http://tranhba.com 	{awardUSED�#�##���##�#�#�#, total, {{type1max,type1cur}, {type2max,type2cur}, {type3max, type3cur}}},
-- script viet hoa By http://tranhba.com 	{awardused, total,{type1max,type1cur}, {type2max,type2cur}},
-- script viet hoa By http://tranhba.com 	},
-- script viet hoa By http://tranhba.com }

-- script viet hoa By http://tranhba.com ��RELAY����#�#��####��#��#�##�##�##
function limit_create_info(tab)
	leagueid = tab["leaguetype"]
	for i = 1, getn(tab["awardinfo"]) do 
		local some_tab = tab["awardinfo"][i]
		local leaguename = tostring(i)
		local lid = LG_GetLeagueObj(leagueid, leaguename) ;
		if (lid == 0 or lid == nil) then
			lid = LG_CreateLeagueObj()
			LG_SetLeagueInfo(lid, leagueid, leaguename)
			LG_ApplyAddLeague(lid)
			LG_ApplySetLeagueTask(leagueid, leaguename, TASK_LW_TYPECOUNT , getn(some_tab[3]) )
			LG_ApplySetLeagueTask(leagueid, leaguename, TASK_LW_AWARD_TOTAL , some_tab[2] )
			LG_ApplySetLeagueTask(leagueid, leaguename, TASK_LW_AWARD_CURPOS , some_tab[1] )
			for j = 1, getn(some_tab[3]) do 
				local membername = "type"..j
				local memberObj = LGM_CreateMemberObj()
				LGM_SetMemberInfo(memberObj,membername, 0, leagueid, leaguename)
				-- script viet hoa By http://tranhba.com LG_AddMemberToObj(lid, memberObj)
				LGM_ApplyAddMember(memberObj)
				LG_ApplySetMemberTask(leagueid, leaguename, membername, TASK_LW_AWARD_MAX, some_tab[3][j][1])
				LG_ApplySetMemberTask(leagueid, leaguename, membername, TASK_LW_AWARD_USED, some_tab[3][j][2])
			end
			LG_FreeLeagueObj(lid)
		end
	end
end 

function limit_show_info(leagueid, msgfun)
	local levelcount = limit_getcount(leagueid)
	msgfun("-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -LIMITED_AWARD REPORT-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com ")
	msgfun("AWARD LEVEL COUNT:"..levelcount)
	for i = 1, levelcount do 
		local awardcount, curpos, total = limit_get_level_awardinfo(leagueid, i)
		msgfun(i..":CHILD AWARD COUNT "..awardcount.." CURRENT GOT & TOTAL:"..curpos.."/"..total);
		for j = 1, awardcount do 
			local awardused, awardmax = limit_get_one_awardinfo(leagueid,i,j)
			msgfun("	["..j.."]:GOT & MAX:"..awardused.."/"..awardmax)
		end
	end
	msgfun("-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com ")
end

function limit_clear_awardinfo(award_leaguetype)
	local count = 0
	local n_lid = LG_GetFirstLeague(award_leaguetype)
	while (n_lid ~= 0 and n_lid ~= nil) do
		
		name = LG_GetLeagueInfo(n_lid)
		if (name~= "") then 
			LG_ApplyRemoveLeague(award_leaguetype, name)
			count = count + 1
		end
		n_lid = LG_GetFirstLeague(award_leaguetype)
	end
	return count	
end

-- script viet hoa By http://tranhba.com ###�ĳ##��#�#�#�#п#
function limit_get_level_awardinfo(award_leaguetype, awardlevel)
	local lid = LG_GetLeagueObj(award_leaguetype, tostring(awardlevel)) ;
	if (lid ~= 0 and lid ~= nil) then 
		local curpos = LG_GetLeagueTask(lid,	TASK_LW_AWARD_CURPOS)
		local total = LG_GetLeagueTask(lid,		TASK_LW_AWARD_TOTAL)
		local typecount = LG_GetLeagueTask(lid,	TASK_LW_TYPECOUNT)
		return typecount, curpos, total
	end
	return -1, -1, -1
end

function limit_get_one_awardinfo(award_leaguetype, awardlevel, awardnum)
	local awardmax = LG_GetMemberTask(award_leaguetype, tostring(awardlevel), "type"..awardnum, TASK_LW_AWARD_MAX) ;
	local awardused = LG_GetMemberTask(award_leaguetype, tostring(awardlevel), "type"..awardnum, TASK_LW_AWARD_USED) ;
	return awardused, awardmax
end

function limit_getcount(award_leaguetype)
	local count = 0
	local n_lid = LG_GetFirstLeague(award_leaguetype)
	while (n_lid ~= 0 and n_lid ~= nil) do
		count = count + 1
		n_lid = LG_GetNextLeague(award_leaguetype, n_lid)
	end
	return count
end

function limit_append_award(award_leaguetype, awardlevel, awardnum)
	LG_ApplyAppendMemberTask(award_leaguetype, tostring(awardlevel), "type"..awardnum, TASK_LW_AWARD_USED, 1)
end

function limit_append_curcount(award_leaguetype, awardlevel, appendnum)
	LG_ApplyAppendLeagueTask(award_leaguetype, tostring(awardlevel), TASK_LW_AWARD_CURPOS, appendnum)
end

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -
-- script viet hoa By http://tranhba.com [1]->leaguename �##�# �#��#��#
-- script viet hoa By http://tranhba.com typecount = 3 �#��#��#�#3###�##
-- script viet hoa By http://tranhba.com maxcount = 10 ###�#ݳ#10###�##
-- script viet hoa By http://tranhba.com total = 10000
-- script viet hoa By http://tranhba.com curpos = 100
-- script viet hoa By http://tranhba.com 
-- script viet hoa By http://tranhba.com 	[type1]member �#��#�#��####�##
-- script viet hoa By http://tranhba.com 	max = 1	�#��#�#��####�#####�#ݳ#�##�
-- script viet hoa By http://tranhba.com 	cur = 0 Ŀ#�#ݳ####��#

-- script viet hoa By http://tranhba.com 	[type2]member �#��#�#�#####�##
-- script viet hoa By http://tranhba.com 	max = 4
-- script viet hoa By http://tranhba.com 	cur = 0
	
-- script viet hoa By http://tranhba.com 	[type3]member �#��#�#���###�##
-- script viet hoa By http://tranhba.com 	max = 5
-- script viet hoa By http://tranhba.com 	cur = 0

-- script viet hoa By http://tranhba.com [2]						�##�# ##��#��#
-- script viet hoa By http://tranhba.com typecount = 2
-- script viet hoa By http://tranhba.com maxcount = 50
-- script viet hoa By http://tranhba.com 	[type1]			�Ф��#
-- script viet hoa By http://tranhba.com 	max=20
-- script viet hoa By http://tranhba.com 	cur=0
-- script viet hoa By http://tranhba.com 	[type2]			�Ф��#
-- script viet hoa By http://tranhba.com 	max=30
-- script viet hoa By http://tranhba.com 	cur=0
-- script viet hoa By http://tranhba.com ######
-- script viet hoa By http://tranhba.com ######
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -
