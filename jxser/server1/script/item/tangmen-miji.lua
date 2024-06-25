-- script viet hoa By http://tranhba.com Create by yfeng 2004-3-9 
-- script viet hoa By http://tranhba.com Modified by fangjieying 2003-5-16 
-- script viet hoa By http://tranhba.com  §­êng m«n bİ tŞch , t¸c dông 80 cÊp trë lªn §­êng m«n ®Ö tö sö dông sau , cã thÓ thªm 1 ®iÓm kü n¨ng ®iÓm 
-- script viet hoa By http://tranhba.com  bao gåm xuÊt s­ , kh«ng bao gåm chuyÓn m«n ph¸i tr­íc kia 
-- script viet hoa By http://tranhba.com  nªn vËt phÈm nhiÒu nhÊt chØ cã thÓ sö dông 15 lÇn 
-- script viet hoa By http://tranhba.com  nhiÖm vô thay ®æi l­îng 80 thÊp 4 vŞ bµy tá sö dông nªn vËt phÈm ®İch sè lÇn 
function main(sel) 
times = mod(GetTask(80),16) 
party = GetLastAddFaction() 
str={ 
" ng­¬i cÇm # §­êng m«n bİ tŞch # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ c¸i g× còng kh«ng cã lÜnh ngé ®Õn . ", 
" ng­¬i cÇm # §­êng m«n bİ tŞch # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ lÜnh ngé rÊt İt , kh«ng hiÖu qu¶ g× . ", 
" ng­¬i cÇm # §­êng m«n bİ tŞch # ®iÒu nghiªn liÔu nöa ngµy , kÕt qu¶ thu ®­îc mét İt liªn quan tíi vâ c«ng lßng cña ph¶i . ", 
" ng­¬i ®· ®em # §­êng m«n bİ tŞch # ®iÒu nghiªn thÊu triÖt , tõ trong còng n÷a kh«ng chiÕm ®­îc bÊt kú t©m ®¾c . " 
} 
if(party ~= "tangmen") then -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ §­êng m«n 
Msg2Player(str[1]) 
return 1 
elseif (GetLevel()<80) then -- script viet hoa By http://tranhba.com  lµ §­êng m«n , nh­ng cÊp bËc İt h¬n 80 
Msg2Player(str[2]) 
return 1 
elseif(times > 14) then -- script viet hoa By http://tranhba.com  sö dông sè lÇn ®· ®¹t tíi th­îng h¹n 
Msg2Player(str[4]) 
return 1 
else 
AddMagicPoint(1) -- script viet hoa By http://tranhba.com  thªm kü n¨ng ®iÓm 1 
		SetTask(80,times+1)
Msg2Player(str[3]) 
return 0 
end 
end
