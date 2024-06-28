-- script viet hoa By http://tranhba.com  thóy khãi cöa chiÕn ®Êu NPC thóy khãi cöa ®Ö tö nhËp m«n nhiÖm vô # t×nh hoa # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-25) 

function OnDeath() 
Uworld36 = GetByte(GetTask(36),2) 
if (Uworld36 == 10) and (random(0,100) < 66) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung , cã 66% ®Ých ky tû sè 
AddEventItem(106) 
Msg2Player("§¹t ®­îc t×nh hoa ") 
AddNote(" ë hoa kh«i trËn ®¹t ®­îc t×nh hoa ") 
end 
end; 
