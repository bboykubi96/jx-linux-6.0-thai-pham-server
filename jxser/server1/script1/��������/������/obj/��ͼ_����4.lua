-- script viet hoa By http://tranhba.com  long m«n trÊn - cæ d­¬ng ®éng - c¬ quan 4( thÕ giíi nhiÖm vô “ cøu tiÓu ®Ñp ”) 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2004-03-03) 

function main(sel) 
Uworld41 = GetTask(41) 
if (GetByte(Uworld41,1) == 30) and (HaveItem(352) == 1) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung , cã “ c¬ quan c¸i ch×a khãa ” , ng­êi kh«ng cøu ra 
if (GetBit(Uworld41,12) == 0) then -- script viet hoa By http://tranhba.com  c¬ quan tr­íc mÆt v× t¾t 
Say("C¬ quan b©y giê lµ t¾t ®Ých tr¹ng th¸i , ng­¬i muèn ®em nã më ra sao ?",2,"Më ra /Turn_On","TiÕp tôc gi÷ v÷ng t¾t /Turn_Off") 
else 
Say("C¬ quan b©y giê lµ më ra ®Ých tr¹ng th¸i , ng­¬i muèn ®em nã t¾t sao ? ",2,"TiÕp tôc gi÷ v÷ng më ra /Turn_On","T¾t /Turn_Off") 
end 
end 
end 

function Turn_On() 
-- script viet hoa By http://tranhba.com  Talk(1,"","C¬ quan më ra . ") 
Msg2Player("C¬ quan më ra ") 
Cur_Switchs = SetBit(GetTask(41),12,1) 
SetTask(41,Cur_Switchs) 
Check_Switch() 
end 

function Turn_Off() 
-- script viet hoa By http://tranhba.com  Talk(1,"","C¬ quan ®ãng cöa . ") 
Msg2Player("C¬ quan ®ãng cöa ") 
Cur_Switchs = SetBit(GetTask(41),12,0) 
SetTask(41,Cur_Switchs) 
Check_Switch() 
end 

function Check_Switch() 
Cur_Switchs = GetByte(GetTask(41),2) 
Set_Switchs = GetByte(GetTask(41),3) 
if (Cur_Switchs == Set_Switchs) then -- script viet hoa By http://tranhba.com  cã thÓ nhÊt trÝ , cøu ra tiÓu ®Ñp 
Uworld41 = SetByte(GetTask(41),1,100) 
SetTask(41,Uworld41) 
DelItem(352) -- script viet hoa By http://tranhba.com  sau khi thµnh c«ng lµ thñ tiªu c¸i ch×a khãa 
Talk(1,"","Gi¶i trõ c¬ quan , ng­¬i thµnh c«ng cøu ra liÔu tiÓu ®Ñp ") 
Msg2Player("Ng­¬i ®· gi¶i trõ c¬ quan , cøu ra tiÓu ®Ñp ") 
else 
Msg2Player("Nh­ng lµ ng­¬i trë l¹i ngôc tèi thö ®Èy mét c¸i cöa , l¹i vÉn kh«ng nhóc nhÝch ") 
end 
end 
