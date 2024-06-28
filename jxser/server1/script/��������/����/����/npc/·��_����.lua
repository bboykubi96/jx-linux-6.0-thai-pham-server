-- script viet hoa By http://tranhba.com  nhŞ h¶i ng­êi ®i ®­êng NPC thuyÒn nhµ # thóy khãi cöa 30 cÊp nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-26) 

function main() 
UTask_cy = GetTask(6) 
	if ((UTask_cy == 30*256+40) and (HaveItem(2) == 0)) then		-- script viet hoa By http://tranhba.com 30¼¶ÈÎÎñ½øĞĞÖĞ
Talk(5,"L30_pay","H«m nay c¸ thËt ®óng lµ ®¹i phong thu a , bé liÔu mét m·n th­¬ng ®İch c¸ t«m ","Ngµi cã ng©n tuyÕt c¸ sao ?","Ng©n tuyÕt c¸ ? ta h«m nay ng­îc l¹i bé ®Õn mÊy c¸i .","Ngµi cã thÓ b¸n cho mét İt ta sao ?","NÕu ng­¬i muèn , vËy th× b¸n ng­¬i mét İt ®i . nh¹ , nh÷ng thø nµy coi nh­ ng­¬i 1000 l­îng b¹c tèt l¾m .") 
else 
Talk(1,"","ThuyÒn nhµ : §¹i Lı ®İch n­íc cong ®Şa ch¶y xu«i , c¸c huynh ®Ö c¸ch s¬n c¸ch n­íc , s¬n thñy v¹n nÆng , muèn gÆp còng khã .") 
-- script viet hoa By http://tranhba.com  Talk(1,"","ThuyÒn nhµ # ra biÓn bé c¸ c¸i ®ã ®em thuyÒn hµng a , phong thu trë vÒ c¸i ®ã ®em nhµ ph¶n a #") 
end 
end; 

function L30_pay() 
if (GetCash() >= 1000) then 
Pay(1000) 
AddEventItem(2) 
AddNote("Mua ®­îc ng©n tuyÕt c¸ ") 
Msg2Player(" ë nhŞ h¶i thuyÒn nhµ chç mua ®­îc ng©n tuyÕt c¸ ") 
else 
Talk(1,"","Kh«ng cã tiÒn , vËy lµm sao mua ") 
end 
end; 
