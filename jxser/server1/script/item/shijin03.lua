-- script viet hoa By http://tranhba.com Create by GGH 
-- script viet hoa By http://tranhba.com  t¸m b¶o thËp cÈm tèng tö 

-- script viet hoa By http://tranhba.com Ê²½õôÕ×Ó=ºìÔæ2+Àõ×Ó2+ôÕÒ¶2+µ¾Ã×2+ÖíÈâ2+Å£Èâ2(Ôö¼Ó1,000µÄ¾­Ñé,³É¹¦ÂÊ50£¥)
-- script viet hoa By http://tranhba.com ÃÛ½¤Ê²½õôÕ×Ó£½Ê²½õôÕ×Ó+ÈÎÒâôÕ×ÓÔ­ÁÏ1(Ôö¼Ó5,000µÄ¾­Ñé,³É¹¦ÂÊ50£¥)
-- script viet hoa By http://tranhba.com °Ë±¦Ê²½õôÕ×Ó£½ÃÛ½¤Ê²½õôÕ×Ó+ÈÎÒâôÕ×ÓÔ­ÁÏ1(Ôö¼Ó30,000µã¾­Ñé,³É¹¦ÂÊ30£¥)
-- script viet hoa By http://tranhba.com °Ù¹ûÊ²½õôÕ×Ó£½°Ë±¦Ê²½õôÕ×Ó+ÈÎÒâôÕ×ÓÔ­ÁÏ1(Ôö¼Ó100,000µã¾­Ñé,³É¹¦ÂÊ20£¥)
-- script viet hoa By http://tranhba.com Ë®¾§Ê²½õôÕ×Ó£½°Ù¹ûÊ²½õôÕ×Ó+ÈÎÒâôÕ×ÓÔ­ÁÏ1(Ôö¼Ó500,000µãµÄ¾­Ñé,³É¹¦ÂÊ10£¥)
-- script viet hoa By http://tranhba.com ÇüÔ­Ê²½õôÕ×Ó£½Ë®¾§Ê²½õôÕ×Ó+ÈÎÒâôÕ×ÓÔ­ÁÏ1(Ôö¼Ó1£¬000,000,000µã¾­Ñé,³É¹¦ÂÊ3£¥)
-- script viet hoa By http://tranhba.com  ®¹t ®­îc ®iÒu kiÖn # 
-- script viet hoa By http://tranhba.com 1# tµi liÖu ®Çy ®ñ hÕt 
-- script viet hoa By http://tranhba.com 2#1000 l­îng b¹c 
-- script viet hoa By http://tranhba.com  gia c«ng ®iÒu kiÖn # kh«ng ph¶i lµ khuÊt nguyªn thËp cÈm tèng tö ra ®İch c¸c lo¹i thËp cÈm tèng tö cïng ®¶m nhiÖm mét tèng tö nguyªn liÖu #1000 l­îng b¹c 
-- script viet hoa By http://tranhba.com  thÊt b¹i kÕt qu¶ # ®¹t ®­îc thËp cÈm tèng tö # v« luËn ng­¬i gia c«ng tr­íc lµ c¸i g× thËp cÈm tèng tö # , gia c«ng dïng tèng tö tµi liÖu biÕn mÊt , kh«ng hoµn tr¶ 1000 l­îng b¹c . 
-- script viet hoa By http://tranhba.com  h¹n chÕ nãi râ # ho¹t ®éng kÕt thóc lóc c«ng hiÖu biÕn mÊt # tøc thay ®æi chÊt # , mçi ë tuyÕn mét giê chØ cã thÓ ¨n mét , mét vai trß ¨n v­ît qua 20,000,000 chót kinh nghiÖm ®İch c¸c lo¹i thËp cÈm tèng tö sau th× kh«ng thÓ ¨n n÷a bÊt kú thËp cÈm tèng tö . 


function main(sel) 
firsttime = GetTask(139) 
num = GetTask(138) 
msg={ " ng­¬i ¨n råi qu¸ nhiÒu thËp cÈm tèng tö , ®· kh«ng thÓ tiÕp tôc ¨n råi #", 
" ng­¬i ®¹t ®­îc 30000 chót kinh nghiÖm trŞ gi¸ #", 
" ng­¬i c¶m thÊy rÊt b·o , ph¶i ®îi mét ®o¹n thêi gian míi cã thÓ ¨n thËp cÈm tèng tö #", 
" ng­¬i ¨n råi nhiÒu ®ñ ®İch tèng tö , ®©y ®· lµ ng­êi cuèi cïng #" 
} 



if(num > 20000000) then -- script viet hoa By http://tranhba.com  sö dông kinh nghiÖm lín h¬n 20,000,000 , kh«ng thÓ ¨n n÷a 
Msg2Player(msg[1]) 
return 1 
else 
		if (GetGameTime() > firsttime + 60 * 60) then
AddOwnExp(30000) -- script viet hoa By http://tranhba.com  kinh nghiÖm trŞ gi¸ gia t¨ng 30000 
Msg2Player(msg[2]) 
			SetTask(138,num+30000)
SetTask(139, GetGameTime()) -- script viet hoa By http://tranhba.com  ghi chĞp tr­íc mÆt ë tuyÕn thêi gian 
if(GetTask(138)>20000000) then 
Msg2Player(msg[4]) 
end 
return 0 
elseif (firsttime == 0) then 
AddOwnExp(30000) -- script viet hoa By http://tranhba.com  kinh nghiÖm trŞ gi¸ gia t¨ng 30000 
Msg2Player(msg[2]) 
			SetTask(138,num+30000)
SetTask(139, GetGameTime()) -- script viet hoa By http://tranhba.com  ghi chĞp tr­íc mÆt ë tuyÕn thêi gian 
if(GetTask(138)>20000000) then 
Msg2Player(msg[4]) 
end 
return 0 
else 
Msg2Player(msg[3]) 
return 1 
end 

end 
end
