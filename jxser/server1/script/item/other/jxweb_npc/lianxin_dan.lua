Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");

function main(nItemIndex) 
if GetItemParam(nItemIndex, 1) == 0 or GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","N™n vÀt ph»m Æ∑ qua k˙ ") 
return 0 
end 

if IsCharged() ~= 1 then 
Talk(1,"","ß∑ sung trﬁ gi∏ nh©n vÀt mÌi c„ th” sˆ dÙng n™n vÀt ph»m .") 
return 1 
end 

if GetLevel() < 50 then 
Talk(1,"","C p bÀc ch≠a ÆÒ 50 , luy÷n n˜a tÀp Æi ") 
return 1 
end 

IpResetTask(); 

if GetTask(TASKID_USE_TIMES) >= 6 then 
Talk(1,"","MÁi ng≠Íi chÿ c„ th” sˆ dÙng n™n vÀt ph»m nhi“u nh t v◊ 6 l«n ") 
return 1 
end 

if CalcFreeItemCellCount() < 2 then 
Talk(1,"", format("Trang bﬁ chÁ trËng ch≠a ÆÒ %d c∏ , xin/mÍi l«n n˜a an bµi .", 2)) 
return 1 
end 

if GetTask(TASKID_CUR_EXP) >= MAX_EXP then 
Talk(1,"","Ng≠¨i Æ∑ Æπt tÌi th≠Óng hπn 1500000000 kinh nghi÷m trﬁ gi∏ , kh´ng th” sœ ti’p tÙc sˆ dÙng .") 
return 1 
end 

local nAddExp = ITEM_EXP 
	if GetTask(TASKID_CUR_EXP) + ITEM_EXP > MAX_EXP then
nAddExp = MAX_EXP - GetTask(TASKID_CUR_EXP) 
end 

	SetTask(TASKID_CUR_EXP, GetTask(TASKID_CUR_EXP) + nAddExp)
	SetTask(TASKID_USE_TIMES, GetTask(TASKID_USE_TIMES) + 1)
AddOwnExp(nAddExp) 
Msg2Player("Ngµi Æπt Æ≠Óc "..nAddExp.." kinh nghi÷m trﬁ gi∏ .") 
end