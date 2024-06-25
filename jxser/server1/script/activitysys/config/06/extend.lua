Include("\\script\\activitysys\\config\\06\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
---------------------------------------------------------------------------------------------------------------------------
function pActivity:NhiemVuViSonDao()
	if GetTask(5955) == 1 then
		if GetTask(5954) < 500 then
			SetTask(5954,GetTask(5954)+1)
			Msg2Player("Ng­¬i §· Tiªu §iÖt §­îc <color=yellow>"..GetTask(5954).."/10<color> Con Qu¸i Trªn §¶o")
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------
function pActivity:Use500Box()
	if GetTask(5976) == 1 then
		if GetTask(5975) < 500 then
			SetTask(5975,GetTask(5975)+1)
			Msg2Player("Ng­¬i §· Tiªu §iÖt §­îc <color=yellow>"..GetTask(5975).."/500<color> Con Qu¸i CÊp 90")
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------
function pActivity:Use500Box()
	if GetTask(5976) == 1 then
		if GetTask(5975) < 500 then
			SetTask(5975,GetTask(5975)+1)
			Msg2Player("Ng­¬i §· Tiªu §iÖt §­îc <color=yellow>"..GetTask(5975).."/500<color> Con Qu¸i CÊp 90")
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function pActivity:Use1000Box()
	if GetTask(5976) == 2 then
		if GetTask(5975) < 1000 then
			SetTask(5975,GetTask(5975)+1)
			Msg2Player("Ng­¬i §· Tiªu §iÖt §­îc <color=yellow>"..GetTask(5975).."/1000<color> Con Qu¸i CÊp 90")
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function pActivity:Use1500Box()
	if GetTask(5976) == 3 then
		if GetTask(5975) < 1500 then
			SetTask(5975,GetTask(5975)+1)
			Msg2Player("Ng­¬i §· Tiªu §iÖt §­îc <color=yellow>"..GetTask(5975).."/1500<color> Con Qu¸i CÊp 90")
		end
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function pActivity:Use2000Box()
	if GetTask(5976) == 4 then
		if GetTask(5975) < 2000 then
			SetTask(5975,GetTask(5975)+1)
			Msg2Player("Ng­¬i §· Tiªu §iÖt §­îc <color=yellow>"..GetTask(5975).."/2000<color> Con Qu¸i CÊp 90")
		end
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function pActivity:Use2500Box()
	if GetTask(5976) == 5 then
		if GetTask(5975) < 2500 then
			SetTask(5975,GetTask(5975)+1)
			Msg2Player("Ng­¬i §· Tiªu §iÖt §­îc <color=yellow>"..GetTask(5975).."/2500<color> Con Qu¸i CÊp 90")
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function pActivity:Use3000Box()
	if GetTask(5976) == 6 then
		if GetTask(5975) < 3000 then
			SetTask(5975,GetTask(5975)+1)
			Msg2Player("Ng­¬i §· Tiªu §iÖt §­îc <color=yellow>"..GetTask(5975).."/3000<color> Con Qu¸i CÊp 90")
		end
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
