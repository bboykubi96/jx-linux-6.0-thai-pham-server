-- script viet hoa By http://tranhba.com  ThiÕu L©m ng­êi ®i ®­êng NPC huyÒn gi¸c 30 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_sl = GetTask(7) 
if (GetSeries() == 0) and (GetFaction() == "shaolin") then 
		if (UTask_sl == 30*256+20) and (HaveItem(27) == 1) then		-- script viet hoa By http://tranhba.com 30¼¶ÈÎÎñÍê³É
Talk(2,"L30_prise","S­ thóc , th¸p l©m ®İch nh÷ng ®Şch nh©n kia nguyªn lai lµ kim quèc ®İch tr¶o nha , bän hä len lĞn ®¸nh c¾p bæn m«n ®İch # Bµn nh­îc ba la mËt nghi ngê tr¶i qua # , bÊt qu¸ ®Ö tö ®· ®em kinh th­ ®o¹t l¹i tíi , xin/mêi s­ thóc xem qua .","A di ®µ phËt , may nhê ng­¬i kŞp thêi ph¸t hiÖn ©m m­u cña bän hä , ®o¹t l¹i kinh th­ , nÕu kh«ng hËu qu¶ thiÕt t­ëng kh«ng chŞu næi , lÇn nµy ng­¬i lËp c«ng lín , bæn täa liÒn th¨ng ng­¬i v× ba m­¬i cÊp ®Ö tö ®i !") 
elseif ((UTask_sl == 30*256) and (GetLevel() >= 30)) then -- script viet hoa By http://tranhba.com 30 cÊp nhiÖm vô 
Say("Míi võa råi cã tù t¨ng b¸o l¹i c¸o , nãi lµ ë th¸p l©m phô cËn ph¸t hiÖn mét İt hµnh tung quû bİ ng­êi cña , kh«ng biÕt cã g× bÊt chİnh ı ®å , ng­¬i nguyÖn ı ®i th¸p l©m xem mét chót sao ?",2,"NguyÖn ı /L30_get_yes","Ta cßn cã nh÷ng chuyÖn kh¸c . /L30_get_no") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Talk(1,"","Kim quèc ®em chóng ta chóng ta nh×n thµnh c¸i ®inh trong m¾t , mÊy lÇn ph¸i ng­êi tíi ThiÕu L©m quÊy rèi .") 
end 
else 
Talk(1,"","Chóng ta ThiÕu L©m vâ c«ng tõ x­a liÒn ®­êng ®­êng ch¸nh ch¸nh , tõ bi vi hoµi .") 
end 
end; 

function L30_get_yes() 
Talk(1,"","Qu¸ cùc khæ ng­¬i , ph¶i cÈn thËn !") 
	SetTask(7,30*256+10)
AddNote("# ®i th¸p l©m ®iÒu tra ng­êi kh¶ nghi . ") 
Msg2Player("# ®i th¸p l©m ®iÒu tra ng­êi kh¶ nghi . ") 
end; 

function L30_get_no() 
end; 

function L30_prise() 
Talk(1,"","§a t¹ s­ thóc !") 
DelItem(27) 
SetTask(7,40*256) 
SetRank(4) 
-- script viet hoa By http://tranhba.com  AddMagic(16) 
add_sl(40) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
AddNote("B¾t ®­îc Bµn nh­îc ba la mËt nghi ngê tr¶i qua , th¨ng lµm hé ph¸p La H¸n . ") 
Msg2Player("Chóc mõng ng­¬i th¨ng lµm hé ph¸p La H¸n , häc ®­îc La h¸n trËn . ") 
end; 
