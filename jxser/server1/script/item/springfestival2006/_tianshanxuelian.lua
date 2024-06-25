IncludeLib("SETTING");
Include("\\script\\task\\task_addplayerexp.lua")  --¸øÍæ¼ÒÀÛ¼Ó¾­ÑéµÄ¹«¹²º¯Êý
Include("\\script\\lib\\pay.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main( nItemIndex )
    
	--dofile("script/item/tianshanxuelian.lua"
	--dofile("script/global/g7vn/g7configall.lua")
	
	if DangDuaTop == 1 then
		Say("§ang trong qu¸ tr×nh ®ua top, kh«ng thÓ thùc hiÖn thao t¸c nµy")
		return 1
	end

	local nTransLife = ST_GetTransLifeCount()	
	if (nTransLife >= 1) then
		Say("Nh©n vËt ®· trïng sinh kh«ng thÓ sö dông", 0)
		return 1
	end

    local nPLev = GetLevel()
    if nPLev >= 80  or nPLev < 1 or IsCharged() < 1 then
        Say("ChØ cã nh©n vËt cÊp ®é tõ 1 ®Õn 79 cã thÓ sö dông.", 0)
        return 1
    end
    local nAddLevel = 80 - nPLev
    ST_LevelUp(nAddLevel)

    --tl_addPlayerExp(1433042000)
	nPLev = GetLevel()
	--Msg2Player(format("Chóc mõng b¹n, ®¼ng cÊp hiÖn t¹i cña b¹n lµ %d.",nPLev))
	WriteLog(format("[Sö dông Thiªn S¬n TuyÕt Liªn]\t%s\tName:%s\tAccount:%s\t võa ¨n ®­îc 1 Thiªn S¬n TuyÕt Liªn.",
			GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount()));
	Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông <color=yellow>Thiªn S¬n TuyÕt Liªn<color> t¹i npc TiÓu Ph­¬ng (T­¬ng D­¬ng 195/201)")
end
--
