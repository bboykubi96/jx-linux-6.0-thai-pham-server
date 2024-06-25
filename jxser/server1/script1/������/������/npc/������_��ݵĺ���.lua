-- script viet hoa By http://tranhba.com  kÕt b¸i ®İch hßa th­îng 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-08-22) 

function main(sel) 
if (GetTeamSize() > 1) and (IsCaptain() == 1) then -- script viet hoa By http://tranhba.com  chØ cã ®éi tr­ëng míi cã thÓ khëi ®éng kÕt b¸i 
Talk(1,"Wswear_select", 11374) 
else 
Talk(1,"", 11375) 
end 
end; 

function Wswear_select() 
if (GetSex() == 0) then 
P_sex = " thiÕu hiÖp " 
else 
P_sex = " n÷ hiÖp " 
end 
Say("TÜnh ®èc thiÒn s­ # nãi thËt hay # chØ cÇn "..P_sex.." 3000 hai söa phËt t­îng , chuyÖn g× ®Òu tèt nãi .",2,"Quyªn 3000 hai . /Wswear_yes","Kh«ng cÇn !/Wswear_no") 
end; 

function Wswear_yes() 
if (GetCash() >= 3000) then 
if(SwearBrother(GetTeam()) == 1)then 
Pay(3000) 
Msg2Team("Chóc mõng hai vŞ kÕt nghÜa kim lan . ") 
else 
Msg2Team("§éi trung cã vî chång quan hÖ , kÕt b¸i thÊt b¹i . ") 
end 
else 
Talk(1,"", 11376) 
end 
end; 

function Wswear_no() 
end; 
