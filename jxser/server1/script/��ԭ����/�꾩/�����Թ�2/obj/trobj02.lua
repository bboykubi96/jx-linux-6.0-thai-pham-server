-- script viet hoa By http://tranhba.com description: biÖn kinh phñ thiÕt th¸p tÇng hai b¶o r­¬ng ngµy nhÉn d¹y 50 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main() 
UTask_tr = GetTask(4); 
UTask_trsub01 = GetTask(21) 
	if (UTask_tr == 50*256+20) and (HaveItem(161) == 1) then
DelItem(161) 
if (GetBit(UTask_trsub01,2) == 0) then 
UTask_trsub01 = SetBit(UTask_trsub01,2,1) 
SetTask(21, UTask_trsub01) 
AddNote("Më ra thø hai c¬ quan ") 
Msg2Player("Më ra tÇng thø hai dÆm b¶o r­¬ng , më ra thø hai c¬ quan ") 
			if (UTask_trsub01 == 7) then 			-- script viet hoa By http://tranhba.com  bin: 100 + 010 + 001
Talk(1,"","Ng­¬i ®· më ra tÇng thø ba c¬ quan , cøu ra nhèt ë trong th¸p ®İch ph­îng hÊp nh­ ") 
Msg2Player("Ng­¬i ®· më ra tÇng thø ba c¬ quan , cøu ra nhèt ë trong th¸p ®İch ph­îng hÊp nh­ ") 
				SetTask(4, 50*256+50)
AddNote("TÇng ba c¬ quan ®· toµn bé më ra , cøu ra nhèt ë trong th¸p ®İch ph­îng hÊp nh­ ") 
end 
else 
Talk(1,"","C¬ quan bŞ më ra ") 
end 
	elseif (UTask_tr == 50*256+20) and (GetBit(UTask_trsub01,2) == 1) then
Talk(1,"","C¬ quan bŞ më ra ") 
	elseif (UTask_tr == 50*256+50)  then
Talk(1,"","C¬ quan bŞ më ra ") 
else 
Talk(1,"","Kh«ng cã c¸i ch×a khãa th× kh«ng thÓ më ra nµy c¬ quan ") 
end 
end; 
