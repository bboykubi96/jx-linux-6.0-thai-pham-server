IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t¸i nhËp SETTING ch©n vèn chØ thÞ kho 

function main() 
-- script viet hoa By http://tranhba.com Msg2Player("Nµy chøc n¨ng sau nµy më ra . ®a t¹ ñng hé !") 
-- script viet hoa By http://tranhba.com return 1 
if (GetNpcExpRate() <= 100) then 
AddSkillState(440, 1, 1, 32400); 
else 
Say("Tr­íc m¾t lµ hÖ thèng gÊp ®«i kinh nghiÖm thêi gian , t¹m thêi kh«ng c¸ch nµo sö dông bÝ chÕ tu th©n phï . ", 0) 
return 1 
end 
return 0 
end
