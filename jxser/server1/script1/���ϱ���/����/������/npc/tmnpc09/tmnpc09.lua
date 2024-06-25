-- script viet hoa By http://tranhba.com description: §­êng m«n ®­êng v©n 30 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_tm = GetTask(2); 
if (GetFaction() == "tangmen") and (GetSeries() == 1) then 
		if ((UTask_tm >= 30*256+50) and (UTask_tm <= 30*256+60) and (HaveItem(42) == 1)) then		-- script viet hoa By http://tranhba.com 30¼¶ÈÎÎñ
L30_prise() 
elseif (UTask_tm >= 40*256) and (GetFaction() == "tangmen") then -- script viet hoa By http://tranhba.com  ®· hoµn thµnh 30 cÊp nhiÖm vô , ch­a xuÊt s­ 
Talk(1,"","Ng­¬i gióp ta b¸o nµy ®¹i thï , ng­¬i nãi , ng­¬i muèn c¸i g× , ta tÊt c¶ ®Òu cho ng­¬i !") 
else -- script viet hoa By http://tranhba.com  ch­a hoµn thµnh 30 cÊp nhiÖm vô # thiÕu tØnh ®èi tho¹i # 
Talk(1,"","TiÓu xuyªn , ta hµi tö ®¸ng th­¬ng …… thï nµy hËn nµy , mét ngµy kh«ng b¸o , ta chÕt kh«ng nh¾m m¾t !") 
end 
elseif (UTask_tm >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Giang hå hiÓm g¹t , ng­¬i mét th©n mét m×nh hµnh tÈu giang hå , ph¶i nhiÒu thªm cÈn thËn ! ") 
else 
Talk(1,"","Ta b×nh th©n hËn nhÊt giÕt ng­êi c­íp bãc ®İch thæ phØ !") 
end 
end; 

function L30_prise() 
Talk(2, "","§­êng v©n s­ thóc , ta ®· t×m ®­îc nh÷ng thø kia trãi phØ , thay ng­¬i b¸o thï , ®©y lµ ®o¹t l¹i ®İch # háa khİ phæ # , chØ cÇn ng­¬i giao nã cho ch­ëng m«n , còng sÏ kh«ng n÷a bŞ tr¸ch ph¹t liÔu !","Ta cuèi cïng coi lµ ®îi ®Õn c¸i ngµy nµy , ng­¬i nãi , ng­¬i muèn c¸i g× , ta tÊt c¶ ®Òu cho ng­¬i !") 
DelItem(42) 
SetRank(28) 
SetTask(2, 40*256) 
-- script viet hoa By http://tranhba.com  AddMagic(50) 
-- script viet hoa By http://tranhba.com  AddMagic(54) 
-- script viet hoa By http://tranhba.com  AddMagic(47) 
-- script viet hoa By http://tranhba.com  AddMagic(343) 
add_tm(40) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
Msg2Player("Chóc mõng ng­¬i th¨ng lµm §­êng m«n cÊp tr­íc hé vÖ , häc ®­îc ®uæi t©m tiÕn , ®Çy trêi hoa ng÷ , xuyªn tim ®©m . ") 
AddNote("Trë l¹i háa khİ phßng , giao háa khİ phæ cho ®­êng v©n , hoµn thµnh háa khİ phæ nhiÖm vô , th¨ng lµm cÊp tr­íc hé vÖ ") 
end; 
