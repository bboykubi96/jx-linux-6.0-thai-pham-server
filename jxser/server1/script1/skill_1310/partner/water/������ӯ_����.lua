IncludeLib("PARTNER");
function OnLevelUp(uplevel,nPartnerIdx)
	local partnerlevel = PARTNER_GetLevel(nPartnerIdx);
	local requirlevel = 1 + (uplevel - 1) * 1;
	if(partnerlevel < requirlevel) then
		Msg2Player("<color=yellow>你当前同伴的<color=blue>“潮起月盈”<color>技能修炼度已达100%，但需要同伴<color=blue>"..requirlevel.."<color>级才能升级");
		return	
	end
	PARTNER_AddSkill(nPartnerIdx,1,566,uplevel);
	Msg2Player("<color=yellow>你当前同伴的<color=blue>“潮起月盈”<color>技能修炼度已达100%，升华为<color=blue>"..uplevel.."<color>级");
end