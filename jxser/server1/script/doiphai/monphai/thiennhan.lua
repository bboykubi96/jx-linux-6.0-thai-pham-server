-- script viet hoa By http://tranhba.com description: §­êng m«n ®­êng thï 20 cÊp nhiÖm vô # xuÊt s­ nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nhËp trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) lÇn n÷a thiÕt kÕ trë l¹i m«n ph¸i cïng trÊn ph¸i tuyÖt häc t­¬ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) lµm träng ph¶n s­ m«n nhiÖm vô gia nhËp hñy bá nhiÖm vô chøc n¨ng , cïng víi cïng míi m«n ph¸i ®èi øng 

Include("\\script\\global\\skills_table.lua")
Include([[\script\event\teachersday06_v\prize_qingyika.lua]]); 
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ´øÒÕÍ¶Ê¦
-- script viet hoa By http://tranhba.com dinhhq: new lunar year 2011 
Include("\\script\\vng_event\\LunarYear2011\\npc\\mastergift.lua")

function main() 


oldentencetn() 
end; 

function oldentencetn() 
-- script viet hoa By http://tranhba.com  if (check_skill() == 0) then 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 
local UTask_tr = GetTask(4); 
local nFactID = GetLastFactionNumber(); 



local tbDes = {"Ta muèn chuyÓn ®æi vÒ m«n ph¸i Thiªn NhÉn/#daiyitoushi_main(7)","Muèn mêi d¹y nh÷ng chuyÖn kh¸c /common_talk"}; 

Say("GÇn nhÊt ta bÒ bén nhiÒu viÖc , ng­¬i cã chuyÖn g× ?", getn(tbDes), tbDes); 
end 


function no() 
end 
