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
				SetTask(TASKID_RECIEVE_BONUS_TK, 1) Msg2Player("Ch�c M�ng Ng��i �� Nh�n ���c Hi�u Qu� Nh�n 8 �i�m T�ch L�y T�ng Kim")
			else
				Talk(1,"","Ng��i �ang Trong Tr�ng Th�i Nh�n ��i T�ng Kim R�i...!") return 1
			end
		else
			Talk(1,"","Ch� C� Th� S� D�ng Trong B�n �� T�ng Kim Cao C�p...!") return 1
		end
		return
	end
end