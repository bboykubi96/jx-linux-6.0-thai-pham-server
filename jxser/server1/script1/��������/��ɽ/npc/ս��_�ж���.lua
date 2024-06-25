-- script viet hoa By http://tranhba.com  \script\ t©y b¾c nam khu \ Hoa S¬n \npc\ chiÕn ®Êu _ kim quèc t­íng l·nh bµy ng­¬i h¸n .lua 
-- script viet hoa By http://tranhba.com  by xiaoyang (2004\4\15) ThiÕu L©m 90 cÊp nhiÖm vô 

function OnDeath() 
Uworld122 = GetTask(122) 
if (Uworld122 == 55) then -- script viet hoa By http://tranhba.com  tr¹ng th¸i trung , n¬i nµy kh«ng kiÓm tra lÖnh bµi 
Talk(1,"","Ng­¬i l¹i h­ kim quèc ®İch ®¹i sù , kim chñ nhÊt ®Şnh sÏ kh«ng bá qua ng­¬i !") 
SetTask(122,60) -- script viet hoa By http://tranhba.com  thiÕt trİ nhiÖm vô thay ®æi l­îng v× 60 
Msg2Player("GiÕt kim quèc t­íng l·nh bµy ng­¬i h¸n , trùc tiÕp ®Õn doanh tr¹i cøu th­êng tr¨m dÆm cïng quı ®Şch phong ") 
AddNote("GiÕt kim quèc t­íng l·nh bµy ng­¬i h¸n , trùc tiÕp ®Õn doanh tr¹i cøu th­êng tr¨m dÆm cïng quı ®Şch phong . ") 
end 
end 
