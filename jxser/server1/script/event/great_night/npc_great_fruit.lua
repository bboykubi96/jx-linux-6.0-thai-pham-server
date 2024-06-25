IncludeLib("ITEM")
Include("\\script\\tong\\tong_award_head.lua");-- by÷æ…Ω£¨∞Ôª·÷‹ƒø±Íπ±œ◊∂»
Include("\\script\\item\\huihuangzhiguo_advance.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\lib\\awardtemplet.lua")

function main()
	
	if (0 == GetCamp()) then
		Msg2Player("Bπn ch≠a gia nhÀp m´n ph∏i, kh´ng th” h∏i qu∂.")
		return
	end
	if (0 == GetFightState() or GetLife(0) <= 0) then
		Msg2Player("kh´ng th” h∏i qu∂.")
		return
	end

	local GREADSEED_SEEDID_TASKID = 2310;
	local GREADSEED_TIME_TASKID = 2311;
	local nTime = GetCurrentTime();
	local nNpcIdx = GetLastDiagNpc();
	local nPlayerLevel = GetLevel();
	local nGetSeedLevel;
	
	if (GetNpcParam(nNpcIdx, 4) == 1) then
		return
	end
	
	if (nPlayerLevel < 90) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 80 and nPlayerLevel < 90) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 90) then
		nGetSeedLevel = 3;
	end
	
	if (nGetSeedLevel ~= GetNpcParam(nNpcIdx, 1)) then -- »Áπ˚º∂±≤ª∂‘,≤ªƒ‹Ω¯–– ∞»°
		--’‚¿Ô∏ÊÀﬂÕÊº“º∂±≤ª∂‘,≤ªƒ‹ ∞»°
		if (1 == GetNpcParam(nNpcIdx, 1)) then
			Msg2Player("Loπi qu∂ nµy ng≠Íi ch¨i tı c p 90 trÎ xuËng c„ th” h∏i!")
		elseif (2 == GetNpcParam(nNpcIdx, 1)) then
			Msg2Player("Loπi qu∂ nµy ng≠Íi ch¨i tı c p 80 Æ’n c p 90 mÌi c„ th” h∏i.")
		else
			Msg2Player("Loπi qu∂ nµy ng≠Íi ch¨i tı c p 90 trÎ l™n mÌi c„ th” h∏i!")
		end
		return
	end;
	
	if (GetNpcParam(nNpcIdx, 2) == GetTask(GREADSEED_SEEDID_TASKID)) then
		if (nTime >= GetTask(GREADSEED_TIME_TASKID) + 10) then
			-- –¬π˚ µ
			if (huihuangzhiguo_advance:GetGuoZiAvd() == 0) then
				-- æ…π˚ µ
				local nTimeSv = tonumber(GetLocalDate("%H%M"));
				local w,x,y = GetWorldPos(); 
				if nTimeSv>=2020 and nTimeSv<=2300 and (w==959 or w==355)  then

					tbAwardTemplet:GiveAwardByList({tbProp = {6,1,904 + nGetSeedLevel - 2,1,0,0,0}, nExpiredTime = 7*60*24}, "ß™m Huy Hoµng", 1);--905
						Msg2Player("Bπn nhÀn Æ≠Óc mÈt qu∂ Hoµng Kim");
						Msg2SubWorld("ChÛc mıng Æπi hi÷p <color=green>"..GetName().."<color> Æ∑ nh∆t Æ≠Óc <color=yellow>qu∂ Hoµng Kim<color>")
					else 
					tbAwardTemplet:GiveAwardByList({tbProp = {6,1,904 + nGetSeedLevel-1,1,0,0,0}, nExpiredTime = 7*60*24}, "ß™m Huy Hoµng", 1);--906
						Msg2Player("Bπn nhÀn Æ≠Óc mÈt qu∂ Huy Hoµng");
						Msg2SubWorld("ChÛc mıng Æπi hi÷p <color=green>"..GetName().."<color> Æ∑ nh∆t Æ≠Óc <color=yellow>qu∂ Huy Hoµng<color>")				
					end

				--local _, nTongID = GetTongName()
				--Msg2Tong(nTongID,"ßπi hi÷p "..GetName().." Æ∑ nh∆t Æ≠Óc qu∂ Huy Hoµng")

			end
			SetTask(GREADSEED_TIME_TASKID, 0);
			SetTask(GREADSEED_SEEDID_TASKID, 0);
			DelNpc(nNpcIdx)
			SetNpcParam(nNpcIdx, 4, 1)
			tongaward_goldenseed();-- by÷æ…Ω£¨∞Ôª·÷‹ƒø±Íπ±œ◊∂»
			
			G_ACTIVITY:OnMessage("CaiJiHuiHuangZhiGuo");

		else	-- ±º‰√ªµΩ10√Î÷”;
			Msg2Player(format("Bπn Æ∑ ch‰n qu∂ nµy, %d gi©y sau mÌi c„ th” h∏i qu∂!",
						(10 - (nTime - GetTask(GREADSEED_TIME_TASKID)))
							))
			return
		end;
	else
		Msg2Player("Bπn ch‰n qu∂ nµy, 10 gi©y sau qu∂ ch›n c„ th” h∏i Æ≠Óc.")
		SetTask(GREADSEED_TIME_TASKID, nTime);
		SetTask(GREADSEED_SEEDID_TASKID, GetNpcParam(nNpcIdx, 2));
	end;
end;

