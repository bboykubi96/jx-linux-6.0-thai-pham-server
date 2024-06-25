QY_GOLDBOSS_POS = 
{
["Chi’n Long ßÈng"] =    {{959, {{1506,3104},{1594,3114},{1638,3079}}, "Chi’n Long ßÈng"   },},
["ßπi Chi’n V≠Ín ßµo"] =    {{1004, {{1717.2,3301.5},{1717.2,3301.5},{1717.2,3301.5}}, "ßπi Chi’n V≠Ín ßµo"   },},
}

-- tbS3BossDaiList = {}
function sukien_thang2_2021()
for i=1,getn(QY_GOLDBOSS_APOS_INFO) do
		bossname = QY_GOLDBOSS_APOS_INFO[i][1]
		bossid = QY_GOLDBOSS_APOS_INFO[i][2]
		bosslvl = QY_GOLDBOSS_APOS_INFO[i][3]
		series = random(0, 4)
		szMap = QY_GOLDBOSS_APOS_INFO[i][5][random(1,getn(QY_GOLDBOSS_APOS_INFO[i][5]))]
		world, posx, posy, worldname = qy_get_bosspos(szMap)
		str = format("<color=green>V≠Ín Æµo bﬁ kŒ lπ x©m nhÀp <color=cyan>%s<color> Æ∑ tÌi <color=cyan>%s<color> d—p loπn, c∏c anh hÔng h∑y c∂nh gi∏c!<color>",bossname, worldname)
		-- local szMsg = format( "<color=green>Mπng x∑ hÈi truy“n <color=cyan>%s<color> lµ 1 loπi virus kh∏t m∏u xu t hi÷n tπi <color=cyan>%s<color> c∏c anh hÔng mau tÌi hi’n m∏u!<color>",bossname, worldname)
		GlobalExecute(format( "dw Msg2SubWorld([[%s]])", str))
		GlobalExecute(format("dw QY_MakeBossEvent022021_RandInCity(%d, %d, %d, %d, %d, %d, [[%s]], [[%s]] )",bossid, bosslvl, series, world, posx, posy, bossname, str ));

		OutputMsg("Create Boss "..bossname..","..bossid..","..bosslvl..","..world..","..posx..","..posy..","..series..date("----%Y%m%d%H%M"))
	end
end

function sukien_thang10_2020()
for i=1,getn(QY_GOLDBOSS_APOS_INFO) do
		bossname = QY_GOLDBOSS_APOS_INFO[i][1]
		bossid = QY_GOLDBOSS_APOS_INFO[i][2]
		bosslvl = QY_GOLDBOSS_APOS_INFO[i][3]
		series = random(0, 4)
		szMap = QY_GOLDBOSS_APOS_INFO[i][5][random(1,getn(QY_GOLDBOSS_APOS_INFO[i][5]))]
		world, posx, posy, worldname = qy_get_bosspos(szMap)
		str = format("Giang hÂ truy“n %s Æ∑ xu t hi÷n tπi %s giang hÂ sœ c„ mÈt cuÈc chi’n Æ»m m∏u!",bossname, worldname)
		local szMsg = format( "<color=green>Giang hÂ truy“n<color> <color=cyan> %s <color> <color=green>Æ∑ xu t hi÷n tπi<color> <color=cyan> %s <color><color=green>giang hÂ sœ c„ mÈt cuÈc chi’n Æ»m m∏u!<color>",bossname, worldname)
		GlobalExecute(format( "dw Msg2SubWorld([[%s]])", szMsg))
		GlobalExecute(format("dw QY_MakeBossEvent102020_RandInCity(%d, %d, %d, %d, %d, %d, [[%s]], [[%s]] )",bossid, bosslvl, series, world, posx, posy, bossname, str ));

		OutputMsg("Create Boss "..bossname..","..bossid..","..bosslvl..","..world..","..posx..","..posy..","..series..date("----%Y%m%d%H%M"))
	end
end

function qy_get_bosspos(szMap)
	local cityidx = random(getn(QY_GOLDBOSS_POS[szMap]))
	local posidx = random(1,getn(QY_GOLDBOSS_POS[szMap][cityidx][2]));
	local world = QY_GOLDBOSS_POS[szMap][cityidx][1]
	local posx = QY_GOLDBOSS_POS[szMap][cityidx][2][posidx][1]
	local posy = QY_GOLDBOSS_POS[szMap][cityidx][2][posidx][2]
	return world, posx, posy, QY_GOLDBOSS_POS[szMap][cityidx][3]
end

function qy_makeboss_onlyone_pos_tieu()
	for i = 1, getn(QY_GOLDBOSS_APOS_INFO_Tieu) do
		bossname = QY_GOLDBOSS_APOS_INFO_Tieu[i][1]
		bossid = QY_GOLDBOSS_APOS_INFO_Tieu[i][2]
		bosslvl = QY_GOLDBOSS_APOS_INFO_Tieu[i][3]
		series = QY_GOLDBOSS_APOS_INFO_Tieu[i][4]
		if(bossid == 748) then
			series = random(0, 4)
		end
		szMap = QY_GOLDBOSS_APOS_INFO_Tieu[i][5][random(1,getn(QY_GOLDBOSS_APOS_INFO_Tieu[i][5]))]
		world, posx, posy, worldname = qy_get_bosspos_Tieu(szMap)
		str = format("Giang hÂ truy“n rªng %s Æ∑ xu t hi÷n tπi %s v‚ l©m trung nguy™n sœ c„ mÈt cuÈc chi’n Æ»m m∏u!",bossname, worldname)
		toadox = floor(posx/8)
		toadoy=floor(posy/16)
		msg = format("<color=yellow>%s<color> Æ∑ xu t hi÷n tπi <color=yellow>%s %s/%s<color>",bossname, worldname,toadox,toadoy)
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", msg));	
		GlobalExecute(format("dw QY_MakeBoss_RandInCity_Tieu(%d, %d, %d, %d, %d, %d, [[%s]], [[%s]] )",bossid, bosslvl, series, world, posx, posy, bossname, str ));
		OutputMsg("TRIEU HOI BOSS Tieu "..bossname..","..bossid..","..bosslvl..","..world..","..posx..","..posy..","..series..date("----%Y%m%d%H%M"))
	end
end
function qy_makeboss_onlyone_pos()
	-- for i = 1, getn(QY_GOLDBOSS_APOS_INFO) do
	local nBoss = 1;
	for i = 1, 3 do
		if (i == 1) then
			nBoss = random(1, 3)
		elseif (i == 2) then
			nBoss = random(4, 6)
		elseif (i == 3) then
			nBoss = random(7, 10)
		end
		bossname = QY_GOLDBOSS_APOS_INFO[nBoss][1]
		bossid = QY_GOLDBOSS_APOS_INFO[nBoss][2]
		bosslvl = QY_GOLDBOSS_APOS_INFO[nBoss][3]
		series = QY_GOLDBOSS_APOS_INFO[nBoss][4]
		if(bossid == 748) then
			series = random(0, 4)
		end
		szMap = QY_GOLDBOSS_APOS_INFO[nBoss][5][random(1,getn(QY_GOLDBOSS_APOS_INFO[nBoss][5]))]
		world, posx, posy, worldname = qy_get_bosspos(szMap)
		str = format("Giang hÂ truy“n rªng %s Æ∑ xu t hi÷n tπi %s v‚ l©m trung nguy™n sœ c„ mÈt cuÈc chi’n Æ»m m∏u!",bossname, worldname)
		toadox = floor(posx/8)
		toadoy=floor(posy/16)
		msg = format("<color=yellow>%s<color> Æ∑ xu t hi÷n tπi <color=yellow>%s<color>",bossname, worldname)
		-- msg = format("<color=yellow>%s<color> Æ∑ xu t hi÷n tπi <color=yellow>%s %s/%s<color>",bossname, worldname,toadox,toadoy)
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", msg));	
		GlobalExecute(format("dw QY_MakeBoss_RandInCity(%d, %d, %d, %d, %d, %d, [[%s]], [[%s]] )",bossid, bosslvl, series, world, posx, posy, bossname, str ));
		OutputMsg("TRIEU HOI BOSS DAI "..bossname..","..bossid..","..bosslvl..","..world..","..posx..","..posy..","..series..date("----%Y%m%d%H%M"))
	end
end
function qy_get_bosspos_Tieu(szMap)
	local cityidx = random(getn(QY_GOLDBOSS_POS_Tieu[szMap]))
	local posidx = random(1,getn(QY_GOLDBOSS_POS_Tieu[szMap][cityidx][2]));
	local world = QY_GOLDBOSS_POS_Tieu[szMap][cityidx][1]
	local posx = QY_GOLDBOSS_POS_Tieu[szMap][cityidx][2][posidx][1]
	local posy = QY_GOLDBOSS_POS_Tieu[szMap][cityidx][2][posidx][2]
	return world, posx, posy, QY_GOLDBOSS_POS_Tieu[szMap][cityidx][3]
end

function qy_get_bosspos(szMap)
	local cityidx = random(getn(QY_GOLDBOSS_POS[szMap]))
	local posidx = random(1,getn(QY_GOLDBOSS_POS[szMap][cityidx][2]));
	local world = QY_GOLDBOSS_POS[szMap][cityidx][1]
	local posx = QY_GOLDBOSS_POS[szMap][cityidx][2][posidx][1]
	local posy = QY_GOLDBOSS_POS[szMap][cityidx][2][posidx][2]
	return world, posx, posy, QY_GOLDBOSS_POS[szMap][cityidx][3]
end

--QY_GOLDBOSS_DPOS_INFO
function qy_makeboss_lotsof_pos()
	for i = 1, getn(QY_GOLDBOSS_DPOS_INFO) do
		bossname = QY_GOLDBOSS_DPOS_INFO[i][1]
		bossid = QY_GOLDBOSS_DPOS_INFO[i][2]
		bosslvl = QY_GOLDBOSS_DPOS_INFO[i][3]
		series = QY_GOLDBOSS_DPOS_INFO[i][5]
		str = QY_GOLDBOSS_DPOS_INFO[i][6]
		if(bossid == 748) then
			series = random(0, 4)
		end
		OutputMsg(bossname, bossid, bosslvl, series.."test")
		if (random(100) > 60) then
			world_t, posx_t, posy_t, worldname_t = qy_get_bosspos_incity()
			flag = 0
			for i=1, getn(TAB_CITY_EMPTY) do
				if (world_t == TAB_CITY_EMPTY[i]) then
					flag = 1
					break
				end
			end
			if (flag ~= 1) then
				TAB_CITY_EMPTY[getn(TAB_CITY_EMPTY)+1] = world_t
				world = world_t
				posx = posx_t
				posy = posy_t
				worldname = worldname_t
				str = format("Giang hÂ truy“n rªng %s Æ∑ xu t hi÷n tπi %s giang hÂ sœ c„ mÈt cuÈc chi’n Æ»m m∏u!",bossname, worldname)
				GlobalExecute(format("dw QY_MakeBoss_RandInCity(%d, %d, %d, %d, %d, %d, [[%s]], [[%s]])",bossid, bosslvl, series, world, posx, posy, bossname, str));
			else
				GlobalExecute(format("dw CallBossDown_Outter(%d, [[%s]])", bossid, str))
			end
		else
			GlobalExecute(format("dw CallBossDown_Outter(%d, [[%s]])", bossid, str))
		end
		OutputMsg("TRIEU HOI BOSS TIEU "..bossname..","..bossid..","..bosslvl..","..series..date("----%Y%m%d%H%M"))
	end
end

function qy_makeboss_fixure(ngroup)
	GlobalExecute(format("dw CallBossDown_Fixure(%d)", ngroup))
end;
