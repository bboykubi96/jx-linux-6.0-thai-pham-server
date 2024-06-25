Include("\\script\\event\\jiefang_jieri\\200904\\taskctrl.lua")
function main()
	local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(4140) == nDate) then -- neu khac se
		Say("Mçi ngµy chØ cã thÓ sö dông 1 h¶i long ch©u xin h·y chê ngµy mai råi h· tiÕp tôc", 0);
		return 1
end
	local ndate = tonumber(GetLocalDate("%y%m%d"));
	if (ndate ~= GetTask(jf0904_TSK_hailongzhu_ndate)) then
		SetTask(jf0904_TSK_hailongzhu_ndate, ndate);
		SetTask(jf0904_TSK_hailongzhu_UseTime, 0);
		if (ndate~= GetTask(jf0904_TSK_denggao_ndate)) then
			SetTask(jf0904_TSK_denggao_ndate, ndate);
			SetTask(jf0904_TSK_shuizei_FulfilTaskTime, 1);
		end
	end
	if (GetTask(jf0904_TSK_hailongzhu_UseTime) >= 1) then
		Say("Mçi ngµy chØ cã thÓ sö dông 1 H¶i Long Ch©u", 0);
		return 1
	end
	local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(4140) ~= nDate) then -- neu khac se
SetTask(4140, nDate);
SetTask(4139, 0);
	SetTask(jf0904_TSK_hailongzhu_UseTime, GetTask(jf0904_TSK_hailongzhu_UseTime)+1);
	SetTask(jf0904_TSK_shuizei_FulfilTaskTime, GetTask(jf0904_TSK_shuizei_FulfilTaskTime)+1);
	Say("Thu ®­îc c¬ héi thªm mét lÇn tham gia Tiªu diÖt thñy tÆc!.Chó ı h¶i long ch©u chØ cã t¸c dông khi quı nh©n sü ®· lµm nhiÖm vô thñy tÆc.Kh«ng ®­îc sö dông khi ch­a nhËn nhiÖm vô thñy tÆc sÏ mÊt t¸c dông", 0);
end
end
