-- script viet hoa By http://tranhba.com ##�#��## ###�#�##��to###�#�����
-- script viet hoa By http://tranhba.com Trap ID#�##�#��## 9
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13)

function main(sel)
	UTask_tm = GetTask(2)
	if (UTask_tm >= 60*256+60) and (GetFaction() == "tangmen") then		-- script viet hoa By http://tranhba.com  #��#��#�##ı#��###��ߤ#��и###
		SetFightState(1)
		NewWorld(28, 1551, 3192)
	elseif ((UTask_tm == 60*256+40) and (HaveItem(100) == 1)) then			-- script viet hoa By http://tranhba.com �#####�##��#���#
		DelItem(100)
		SetFightState(1)
		NewWorld(28, 1551, 3192)
		SetTask(2, 60*256+60)
	else
		Talk(1,"","Kh#ng c� ch#a kh�a, b#n kh#ng th� v#o T#ng 3 Tr�c T# #�ng.")
	end
end;
