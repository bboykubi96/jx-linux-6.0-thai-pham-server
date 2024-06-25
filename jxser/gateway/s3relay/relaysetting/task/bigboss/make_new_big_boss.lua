----------------------------------------------------------***Edit*By*Heart*Doldly***---------------------------------------------------------
Include("\\script\\mission\\boss\\bigboss.lua")

function TaskShedule()
	TaskName("BOSS HOANG KIM XUAT HIEN 19h45");
	TaskInterval(1440);
	TaskTime(19, 45);
	TaskCountLimit(0);
	OutputMsg("======================================================================================================")
	OutputMsg(format("          SO LUONG BOSS HOANG KIM XUAT HIEN: %d THAM GIA DANH BAI: %s BOSS HOANG KIM", BigBoss.gold_boss_count, BigBoss.gold_boss_count))
	OutputMsg("     DOC CO THIEN PHONG SE XUAT HIEN KHI DANH BAI SE NHAN DUOC PHAN THUONG VO CUNG GIA TRI                    ")
	OutputMsg(format("           THOI GIAN BOSS XUAT HIEN LUC: 19:45 KHI DA DANH BAI %d BOSS HOANG KIM",   BigBoss.gold_boss_count))
end

function TaskContent()
	if (GetProductRegion() ~= "vn") then
		return 0;
	end;
	
	BigBoss.isBigBossDead = 0;
	OutputMsg( format("GOLD BOSS COUNT :  %d", BigBoss.gold_boss_count) );
	if (BigBoss.gold_boss_count == 0) then
		local bossname = "§éc C« Thiªn Phong";
		local series = random(0, 4);
		local bossid = BigBoss.BIG_BOSS_SER[series];
		local bosslvl = 95;
	
		local nPosIdx = random(1,getn(BigBoss.BIG_BOSS_POS));
		local nPosIdx2 = random(1,getn(BigBoss.BIG_BOSS_POS[nPosIdx][2]));
		local worldname = BigBoss.BIG_BOSS_POS[nPosIdx][3];
		local world = BigBoss.BIG_BOSS_POS[nPosIdx][1];
		local posx = BigBoss.BIG_BOSS_POS[nPosIdx][2][nPosIdx2][1];
		local posy = BigBoss.BIG_BOSS_POS[nPosIdx][2][nPosIdx2][2];
		local toadox = floor(posx/8)
		local toadoy=floor(posy/16)
		local str = format("Giang hå truyÒn r»ng <color=yellow>%s<color> xuÊt hiÖn t¹i <color=yellow>%s<color> Täa ®é: <color=green>%s/%s<color>! C¸c nh©n sÜ vâ l©m sÏ cã 1 trËn chiÕn ®Ém m¸u !", bossname, worldname, toadox, toadoy)

		GlobalExecute(format("dw Msg2SubWorld([[%s]])", str))
		GlobalExecute(format("dwf \\script\\missions\\boss\\call_big_boss.lua BigBoss:Make_Big_Boss(%d, %d, %d, %d, %d, %d, [[%s]], [[%s]] )",bossid, bosslvl, series, world, posx, posy, bossname, str ));
		bossnames = "Doc Co Thien Phong"
		OutputMsg("Create Boss "..bossnames..","..bossid..","..bosslvl..","..world..","..posx..","..posy..","..series..date("----%Y%m%d%H%M"))
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
