-- script viet hoa By http://tranhba.com Ä#³#Å#
-- script viet hoa By http://tranhba.com by xiaoyang (2004\12\15)
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\master\\lib_setmembertask.lua")

function OnDeath()
Uworld1001 = nt_getTask(1001)
	if (Uworld1001 == 30) then
		Talk(1,"Uworld1001_give","²#ß#ß¤##Ä·Ä#´ß¤##ß##Ì####ß²#######Ä·ÄÄµ#£##¤£#####³#¤ï##!")
	end
end

function newtask1()
	AddOwnExp(20000)
	Msg2Player("Ä#³#Ì·Ä·##³#¤ï##")

end

function Uworld1001_give()

	SetMemberTask(1001,30,40,newtask1) -- script viet hoa By http://tranhba.com ###ó3end
	
end
		
