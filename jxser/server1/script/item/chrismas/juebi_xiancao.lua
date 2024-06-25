-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com 
	-- script viet hoa By http://tranhba.com FileName:	juebi_xiancao.lua
	-- script viet hoa By http://tranhba.com Creater:	firefox
	-- script viet hoa By http://tranhba.com Date:		2005-12-19
	-- script viet hoa By http://tranhba.com Comment:	£####ó###¯#±µ#######±ó#Ð²ý
	-- script viet hoa By http://tranhba.com 			##Ä##º·¿××¿Ð£#ã·10´###·¿£#ã·ß#´#±·Ä####·ß####Ð²ýß#####ã·¿Ð###·10###ã###Ð##±###
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -
Uworld0001 = 2002
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
		Talk(1, "", "##±ó#Ð²ý#Äß##ã##±#Ä·â##©¸#####º·#Ì·#××¸###")
	else
		-- script viet hoa By http://tranhba.com AddItem()#Ð²ýß#
		SetTask(Uworld0001, SetByte(GetTask(Uworld0001), 1, use_time + 1))
		Msg2Player("Äó###·¸#ß####Ð²ýß#")
	end
	return 1
end
