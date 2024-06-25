Include("\\script\\item\\heart_head.lua")
function main()
if GetTask(5859)==1 then
return Say("§ang VËn Tiªu Kh«ng Sö Dông §­îc")
end
	if check_faction()==1 then
		Say("Ng­êi ch¬i ph¶i gia nhËp m«n ph¸i míi cã thÓ sö dông.", 0);
		return 1
	end;

	return use_heart(0)
end
function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end