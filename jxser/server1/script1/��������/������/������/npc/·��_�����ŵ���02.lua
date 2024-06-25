-- script viet hoa By http://tranhba.com  thóy khãi cöa thóy khãi cöa ®Ö tö 2 nhËp m«n nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-25) 

Include("\\script\\global\\repute_head.lua")

function main() 
UTask_cy = GetTask(6) 
Uworld36 = GetByte(GetTask(36),2) 
if (Uworld36 == 10) then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô 
if (HaveItem(106) == 1) then 
enroll_prise() 
else 
Say("Kh«ng cã <color=Red> t×nh hoa <color>, kh«ng thÓ qu¸ hoa kh«i trËn . tû tû thËt nghÜ tíi trËn ?",2," lÇn nµy ta kh«ng cã chuÈn bŞ xong /U36_uncompleted","Ta tiÕp tôc x«ng trËn /no") 
end 
elseif (GetFaction() == "cuiyan") then -- script viet hoa By http://tranhba.com  ®Ö tö bæn m«n 
Say("S­ muéi ë hoa kh«i trËn luyÖn c«ng ? muèn rêi ®i hoa kh«i trËn sao ? ",2,"H¶o , ®a t¹ tû tû /U36_leave","Kh«ng cÇn , ta cßn muèn tiÕp tôc luyÖn c«ng /no") 
elseif (UTask_cy == 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Nguyªn lai lµ s­ tû , ®· l©u kh«ng gÆp !") 
else 
Talk(1,"","Hoan nghªnh tíi thóy khãi cöa .") 
end 
end; 

function enroll_prise() 
Talk(1,"U36_leave","Chóc mõng ng­¬i ®· x«ng qua bæn ph¸i khiªu chiÕn , b©y giê chóng ta lµ h¶o s­ muéi ! ") 
DelItem(106) -- script viet hoa By http://tranhba.com  t×nh hoa 
i = ReturnRepute(20,29,5) -- script viet hoa By http://tranhba.com  thiÕu tØnh danh väng , lín nhÊt kh«ng tæn hao g× hao tæn cÊp bËc , mçi cÊp ®Ö gi¶m 
AddRepute(i) 
Uworld36 = SetByte(GetTask(36),2,127) 
SetTask(36,Uworld36) 
AddNote("Hoµn thµnh hoa kh«i trËn nhiÖm vô , trë thµnh <color=Red> ®Ö tö kı danh color> ") 
Msg2Player("Hoµn thµnh hoa kh«i trËn nhiÖm vô , trë thµnh ®Ö tö kı danh ") 
end; 

function U36_uncompleted() 
Talk(1,"U36_leave","Hoan nghªnh s­ muéi ë bÊt kú thêi gian tíi x«ng trËn !") 
end 

function U36_leave() 
-- script viet hoa By http://tranhba.com  SetPos(304,1498) 
SetPos(340,1456) 
end 

function no() 
end 
