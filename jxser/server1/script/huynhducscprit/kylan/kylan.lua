LANTERN_ID = 645;
-- TOADOXY = { -- bien kinh
-- {1604,3413}
-- -- {1552,3262},
-- -- {1544,3294},
-- -- {1461,3277},
-- -- {1439,3414},
-- -- {1550,3269},
-- -- {1671,3258},
-- -- {1776,3195},
-- -- {1554,3005},
-- -- {1464,3056},
-- -- {1364,3323},
-- -- {1421,3262},
-- -- {1665,2923},
-- -- {1770,2977},
-- -- {1554,3264},
-- -- {1626 ,3332},
-- }
TOADOXY = { -- ba lang huyen
{1569,3254},
-- {1473,3291},
-- {1551,3007},
-- {1763,3218},
}

function HoaDang_AddNpc()
        --local i = TabFile_Load("\\settings\\dark\\event\\hoadang\\hoadang.txt","HOADANG");
		--if i ~= 1 then
             --print("Load file txt sai me roi")
             --return
        --end	
	    --local nRowld = getn(TabFile_GetRowCount("HOADANG"))
		-- local nNowTime = tonumber(date("%H%M"))
		-- if nNowTime > 1951 or nNowTime < 1929 then
			-- return
		-- end
		HoaDang_RemoveNpc()
		local nrowid = getn(TOADOXY)
		local row = random(1,nrowid)
		--local nMap = tonumber(TabFile_GetCell("HOADANG",row,"MAP_LANTERN"));
		--local nX = tonumber(TabFile_GetCell("HOADANG",row,"XPOS"));
		--local nY = tonumber(TabFile_GetCell("HOADANG",row,"YPOS"));
		local nMap = 37
		local nX = TOADOXY[row][1]
		local nY = TOADOXY[row][2]
		-- local nNPC = random(1333,1334)
		-- id 1866 co do sao vang
		-- id 1556 trong khai hoan
		local nNpcIndex = AddNpcEx(1556,99,0,SubWorldID2Idx(nMap),nX*32,nY*32,1,"TrËng kh∂i hoµn",0);
		SetNpcScript(nNpcIndex,"\\script\\huynhducscprit\\kylan\\npc_kylan.lua")
		-- SetNpcTimer(nNpcIndex,30*60*18);
	local szMsg = "<color=yellow><color=red>TrËng kh∂i hoµn<color>Æ∑ xu t hi÷n Î Bi÷n Kinh!!!";
	AddLocalNews("TrËng kh∂i hoµn Æ∑ xu t hi÷n Î Ba L®ng Huy÷n!!!.")
	Msg2SubWorld(szMsg)
end


function HoaDang_RemoveNpc()
	--local tbMap = {1,11,162,176,80,37,78};
	--for k=1,getn(tbMap) do 
		ClearMapNpcWithName(37,"TrËng kh∂i hoµn");
	--end
end
