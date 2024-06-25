-- script viet hoa By http://tranhba.com description: Trung Nguyªn b¾c khu ngµy nhÉn d¹y th¸nh ®éng 1to ngµy nhÉn d¹y th¸nh ®éng 2 ngµy nhÉn d¹y ra s­ nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/20 
-- script viet hoa By http://tranhba.com Trap ID# Trung Nguyªn b¾c khu 7 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 

function main(sel) 
UTask_tr = GetTask(4) 
UTask_tr60tmp = GetTask(28) 
	if (UTask_tr60tmp == 15) then		-- script viet hoa By http://tranhba.com  bin: 1000 + 0100 + 0010 + 0001
SetFightState(1) 
NewWorld(52, 1729, 3225) 
		SetTask(4, 60*256+70)
SetTask(28,0) -- script viet hoa By http://tranhba.com  ®em tö thay ®æi l­îng phôc vÞ bu«ng th¶ 
-- script viet hoa By http://tranhba.com  AddNote(" lÊy ®­îc bèn c©u khÈu quyÕt , tiÕn vµo th¸nh ®éng tÇng thø hai . ") 
	elseif (UTask_tr >= 60*256+70) and (GetFaction() == "tianren") then
SetFightState(1) 
NewWorld(52, 1729, 3225) 
else 
Talk(1,"","Ch# l# ## <color=Red>b l¹p c# kh# quy#<color>, kh tÇn g th?v kú t#g hai c# Th#h #ng.") 
SetPos(1767, 3186) -- script viet hoa By http://tranhba.com  thiÕt trÝ ®i ra Trap ®iÓm 
AddNote("Mu l¹p v kú t#g hai, ph tiªn l# ## b l¹p c# kh# quy#. ") 
end 
end; 
