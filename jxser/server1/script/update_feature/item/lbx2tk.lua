IncludeLib("ITEM")
Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
-------------------------------------------------
function main()
local nMap,_,_ = GetWorldPos()
local listmapband = {380,381,383}
	for i = 1,getn(listmapband) do 
		if nMap == listmapband[i] then 
			if (GetTask(TASKID_RECIEVE_BONUS_TK) == 0) then
				SetTask(TASKID_RECIEVE_BONUS_TK, 1) Msg2Player("Chóc Mõng Ng­¬i §· NhËn §­îc HiÖu Qu¶ Nh©n 8 §iÓm TÝch Lòy Tèng Kim")
			else
				Talk(1,"","Ng­¬i §ang Trong Tr¹ng Th¸i Nh©n §«i Tèng Kim Råi...!") return 1
			end
		else
			Talk(1,"","ChØ Cã ThÓ Sö Dông Trong B¶n §å Tèng Kim Cao CÊp...!") return 1
		end
		return
	end
end