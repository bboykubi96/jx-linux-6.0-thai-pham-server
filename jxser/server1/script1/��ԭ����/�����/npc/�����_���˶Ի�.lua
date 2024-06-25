-- script viet hoa By http://tranhba.com description: tay míi th«n _ thî s¨n 
-- script viet hoa By http://tranhba.com author: wangzg 
-- script viet hoa By http://tranhba.com date: 2003/7/21 
-- script viet hoa By http://tranhba.com update 2003/7/28 yuanlan 

function main() 
UTask_world38=GetTask(66) 
if (UTask_world38==2) then 
Say("Ta ra lÖnh kh«ng tÖ , gÇn nhÊt lªn nói ®¸nh tíi mét con m·nh hæ , hæ cèt lµ quı träng d­îc liÖu , ta muèn mua 150 hai .", 2 ,"Mua /yes","Kh«ng mua /no") 
else 
Say(" ë chç nµy s¨n thó ng­êi cña , ta lµ thø hai , liÒn kh«ng ai thø nhÊt ! ",0) 
end 
end; 

function yes() 
if (GetCash() < 150) then 
Talk(1,"","Chê cã tiÒn , ng­¬i t×m ®Õn ta !") 
else 
Pay(150) 
AddEventItem(185) 
Msg2Player("Tõ thî s¨n chç mua hæ cèt ") 
AddNote("Tõ thî s¨n chç mua hæ cèt ") 
end 
end; 

function no() 
end 
