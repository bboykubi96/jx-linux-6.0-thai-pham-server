--Tong kim le bao phan thuong khi dat top 1,2,3 tong kim edit by mcteam

Include("\\script\\lib\\pay.lua");
Include("\\script\\lib\\awardtemplet.lua");
IncludeLib("ITEM")

SONGJIN_LIBAO_TASK_NO = 2619
SONGJIN_LIBAO_LIMIT   = 5


if not TB_QIANQIU_YINGLIE0904 then
	Include("\\script\\event\\jiefang_jieri\\200904\\qianqiu_yinglie\\head.lua");
end

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(nItemIdx)
	local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIdx)));
	local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	if n_cur_date > n_item_date then
		Msg2Player("VËt phÈm qu¸ h¹n sö dông, tù ®éng mÊt ®i.")
		return 0;
	end
	
	--TB_QIANQIU_YINGLIE0904:reset_task()

	--dofile("script/global/g7vn/g7configall.lua")

	if DangDuaTop == 1 then
		Say("§ang trong qu¸ tr×nh ®ua top, kh«ng thÓ thùc hiÖn thao t¸c nµy")
		return 1
	end
	
	if IsCharged() == 0 or GetLevel() < 90 then
		Say("ChØ cã ng­êi ch¬i cÊp trªn 90  míi cã thÓ sö dông.", 0)
		return 1;
	end
	
	if (CalcFreeItemCellCount() < 5) then
		Say(format("§Ó tr¸nh mÊt m¸t tµi s¶n, h·y b¶o ®¶m hµnh trang cßn ®ñ %d « trèng.", 5), 0);
		return 1;
	end
			local checkexp = GetExpPercent()
if checkexp < -50 then
Say("HiÖn t¹i ®iÓm kinh nghiÖm v­ît -50% chØ cã thÓ sö dông bµn nh­îc råi h·y tiÕp tôc.")
return 1
end
	local tb_award = {
			{szName="Ng©n l­îng", nJxb=100000, nRate = 5},
			{szName="Ng©n l­îng", nJxb=200000, nRate = 5},

		{szName = "ThiÕt la h¸n", tbProp = {6,1,23,1,1,0}, nRate = 0.1},
		{szName = "§iÓm kinh nghiÖm", nExp = 1000000, nRate = 40},
		{szName = "§iÓm kinh nghiÖm", nExp = 3000000, nRate = 40},
		--{szName = "§iÓm kinh nghiÖm", nExp = 3000000, nRate = 10},
		{szName = "tiªn thæ lé", tbProp={6,1,71,1,0,0}, nCount=1, nRate=0.1},
	}
	
	local rtotal = 10000000
	local rcur=random(1,rtotal);
	local rstep=0;
	local n_award_idx = 0;
	for i=1,getn(tb_award) do
		rstep=rstep+floor(tb_award[i].nRate*rtotal/100);
		if(rcur <= rstep) then
			n_award_idx = i;
			break
		end
	end
	
	if (n_award_idx == 0 or n_award_idx > getn(tb_award)) then
		return 1;
	end
	
	-- ÏÞÖÆÃ¿ÌìÊ¹ÓÃ20¸ö
	local ndate = tonumber(GetLocalDate("%m%d"));
	local nUseTimes = GetBitTask(SONGJIN_LIBAO_TASK_NO, 0, 8) -- Ê¹ÓÃ´ÎÊý
	local nLastUseDate = GetBitTask(SONGJIN_LIBAO_TASK_NO, 8, 24) -- ÉÏ´ÎÊ¹ÓÃÊ±¼ä
	
	if( nLastUseDate ~= ndate) then
		nLastUseDate =  ndate;
		nUseTimes = 0;
	end
	
	if (nUseTimes >= SONGJIN_LIBAO_LIMIT) then
		Say(format("Mét ngµy chØ cã thÓ sö dông %d Tèng Kim lÔ bao", SONGJIN_LIBAO_LIMIT), 0)
		return 1;
	end
		
	nUseTimes = nUseTimes + 1;
	SetBitTask(SONGJIN_LIBAO_TASK_NO, 0, 8,  nUseTimes);
	SetBitTask(SONGJIN_LIBAO_TASK_NO, 8, 24, nLastUseDate);
	
	tbAwardTemplet:GiveAwardByList(tb_award[n_award_idx], "Tèng Kim lÔ bao");

	Msg2SubWorld("§¹i hiÖp <color=white>"..GetName().."<color> ®· sö dông Tèng Kim LÔ Bao nhËn ®­îc rÊt nhiÒu phÇn quµ hÊp dÉn.")
end
