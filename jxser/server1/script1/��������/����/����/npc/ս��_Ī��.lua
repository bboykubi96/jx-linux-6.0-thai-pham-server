-- script viet hoa By http://tranhba.com �#�#�#
-- script viet hoa By http://tranhba.com by xiaoyang (2004\12\15)
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")

function OnDeath()
Uworld1001 = nt_getTask(1001)
	if (Uworld1001 == 30) then
		Talk(1,"Uworld1001_give","�#�#ߤ##ķ�#�ߤ##�##�####߲#######ķ�ĵ#�##��#####�#��##!")
	end
end

function newtask1()
	AddOwnExp(20000)
	Msg2Player("�#�#̷ķ##�#��##")

end

function Uworld1001_give()

	SetMemberTask(1001,30,40,newtask1) -- script viet hoa By http://tranhba.com ###�3end
	
end
		
