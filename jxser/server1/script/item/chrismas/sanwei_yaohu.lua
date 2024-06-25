-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com 
	-- script viet hoa By http://tranhba.com FileName:	sanwei_yaohu.lua
	-- script viet hoa By http://tranhba.com Creater:	firefox
	-- script viet hoa By http://tranhba.com Date:		2005-12-19
	-- script viet hoa By http://tranhba.com Comment:	£####ó###¯#±µ#####Ìý##ß#º#
	-- script viet hoa By http://tranhba.com 			##Ä##º·¿××¿Ð£#ã·10´###·¿£#ã·ß#´#±·Ä####·ß#¿ÅÌý###Ð######ã·¿Ðâ#2Ýß###Ð##
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -
Uworld0001 = 2000
MAX_USETIME = 10
-- script viet hoa By http://tranhba.com #óß####ó##±#Ìâ£#ã·´#£ý
-- script viet hoa By http://tranhba.com #ó#####ó####ºã£#ã·#ÄÌâ#ó
function main()
	use_day = GetByte(GetTask(Uworld0001), 2)
	
	nDay = tonumber(date("%d"))
	if (use_day ~= nDay) then
		SetTask(Uworld0001, SetByte(GetTask(Uworld0001), 1, 0))
	end
	use_time = GetByte(GetTask(Uworld0001), 1)
	if (use_time >= MAX_USETIME) then
		Talk(1, "", "Ìý##ß#º#·¿××##Ä#¸###"..MAX_USETIME.."¿Å##ß###")
	else
		-- script viet hoa By http://tranhba.com AddItem()Ìý###Ð##
		SetTask(Uworld0001, SetByte(GetTask(Uworld0001), 1, use_time + 1))
		Msg2Player("Äó###·¸#ß#¿ÅÌý###Ð##")
	end
	return 1
end
