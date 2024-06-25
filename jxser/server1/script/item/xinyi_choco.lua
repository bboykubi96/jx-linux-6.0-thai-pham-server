IL("SETTING") 
IL("LEAGUE") 
Include("\\script\\lib\\gb_modulefuncs.lua")

TSK_VALENTINE = 1553 
function main(nItemIdx) 
if (gb_GetModule(" lÔ t×nh nh©n hép quµ ") == 1) then 
if (GetSex() == 0) then 
if (GetTask(TSK_VALENTINE) >= 99) then 
Say("<#> ngµi ®· ¨n hÕt <color=yellow>99 khèi t©m ı X¶o Kh¾c Lùc <color> , tiÕp tôc ¨n vµo cÈn thËn sÏ chó nha #", 0) 
return 1 
end 
AddOwnExp(1000000) 
AddSkillState(440, 20, 1,32400)-- script viet hoa By http://tranhba.com 30 phót bªn trong ®¹t ®­îc gÊp ®«i kinh nghiÖm thêi gian . 
AddSkillState(450, 20, 1,32400)-- script viet hoa By http://tranhba.com  may m¾n trŞ gi¸ 30 phót bªn trong gia t¨ng 20 ®iÓm . 
		SetTask(TSK_VALENTINE, GetTask(TSK_VALENTINE) + 1)
if (GetTask(TSK_VALENTINE) == 99) then 
Msg2Player("<#> ngµi sö dông mét ®ãa t×nh nång hoa hång ®¹t ®­îc 100W chót kinh nghiÖm trŞ gi¸ , kinh nghiÖm gÊp ®«i cïng may m¾n gia t¨ng 20 giê r­ìi giê . ") 
else 
Msg2Player("<#> ngµi sö dông mét khèi t©m ı X¶o Kh¾c Lùc ®¹t ®­îc 100W chót kinh nghiÖm trŞ gi¸ , kinh nghiÖm gÊp ®«i cïng may m¾n gia t¨ng 20 giê r­ìi giê . ngµi cßn cã thÓ sö dông "..(99 - GetTask(TSK_VALENTINE)).." khèi t©m ı X¶o Kh¾c Lùc . ") 
end 
return 
else 
Msg2Player("<#> t©m ı X¶o Kh¾c Lùc chØ cã thÓ hiÖp sÜ sö dông yªu #") 
return 1 
end 
end 
end
