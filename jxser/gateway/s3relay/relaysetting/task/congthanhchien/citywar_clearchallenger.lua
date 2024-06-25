-------------------------------------***Edit*By*Heart*Doldly***-----------------------------------
Include("\\RelaySetting\\Task\\congthanhchien\\citywar_head.lua")
LEAGUETYPE_CITYWAR_SIGN = 508;
LEAGUETYPE_CITYWAR_FIRST = 509;

function TaskShedule()
	TaskName("Bang Hoi Huy Bo Ghi Danh Cong Thanh Chien");
	TaskInterval(1440);	
	TaskTime(23, 45);			
	TaskCountLimit(0);	
	OutputMsg("======================================================================================================")
	OutputMsg("======================> [Cong Thanh] Xoa Du Lieu Cong Thanh Vao Luc 23h:45 <===========================")
end

function TaskContent()
	if (HinhThucCongThanh ~= 0) then
		clearCityWarLeague();
		checkCityWarLeague();
		OutputMsg("=====> [Cong Thanh] Xoa du lieu cong thanh <========")
	end
end;

function checkCityWarLeague()

	for i = 1, 7 do
		local szLg = cityid_to_lgname(i);
		local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szLg);
		if (FALSE(nlid)) then
			local nNewLeagueID = LG_CreateLeagueObj()	
			LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_SIGN, szLg)
			local ret = LG_ApplyAddLeague(nNewLeagueID, "", "");
			LG_FreeLeagueObj(nNewLeagueID);
		end;
		
		nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLg);
		if (FALSE(nlid)) then
			local nNewLeagueID = LG_CreateLeagueObj()	
			LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_FIRST, szLg)
			local ret = LG_ApplyAddLeague(nNewLeagueID, "", "");
			LG_FreeLeagueObj(nNewLeagueID);
		end;
	end;
end;

function clearCityWarLeague()

		for i = 1, 7 do
			local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, TB_CITYWAR_ARRANGE[i][3]);
			if (not FALSE(nlid)) then
				local nCount = LG_GetMemberCount(nlid);
				for k= 0, nCount -1 do
					local szMemberName = LG_GetMemberInfo(nlid, k);
					LGM_ApplyRemoveMember(LEAGUETYPE_CITYWAR_FIRST, TB_CITYWAR_ARRANGE[i][3], szMemberName, "", "", 0);
				end;
			end;
			
			
			nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, TB_CITYWAR_ARRANGE[i][3]);
			if (not FALSE(nlid)) then
				nCount = LG_GetMemberCount(nlid);
				local tbTemMem = {};
				for k = 0, nCount -1 do
					local szMemberName = LG_GetMemberInfo(nlid, k);
					tbTemMem[getn(tbTemMem)+1] = szMemberName;
				end;
				for k = 1, getn(tbTemMem) do
					LGM_ApplyRemoveMember(LEAGUETYPE_CITYWAR_SIGN, TB_CITYWAR_ARRANGE[i][3], tbTemMem[k], "", "", 0);
				end;
			end;
		end;
end;

function cityid_to_lgname(nCityID)
	return TB_CITYWAR_ARRANGE[nCityID][3];
end;

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
