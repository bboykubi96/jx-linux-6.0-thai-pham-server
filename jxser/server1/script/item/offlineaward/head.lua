-- script viet hoa By http://tranhba.com  phong v©n lÖnh bµi - ®èi víi c¸c tay míi ®iÒu chØnh sèng l¹i thêi gian - Modified By DinhHQ - 20110926 
Include("\\script\\activitysys\\config\\1005\\check_func.lua")
BOX_SIHAIXIAOYAO = { 
ID = {6, 1, 2398, 1}, 
Name = " tø h¶i tiªu dao ®an hép quµ ", 
Pill = { 
Name = " tø h¶i tiªu dao ®an ", 
ID = {6, 1, 2378, 1}, 
Count = 10, 
}, 
} 

BOX_WUZHOULINGKONG = { 
ID = {6, 1, 2399, 1}, 
Name = " n¨m ch©u l¨ng kh«ng ®an hép quµ ", 
Pill = { 
Name = " n¨m ch©u l¨ng kh«ng ®an ", 
ID = {6, 1, 2397, 1}, 
Count = 10, 
}, 
} 

BOX_JIUTIANYUNYOU = { 
ID = {6, 1, 2400, 1}, 
Name = " cöu thiªn d¹o ch¬i ®an hép quµ ", 
Pill = { 
Name = " cöu thiªn d¹o ch¬i ®an ", 
ID = {6, 1, 2379, 1}, 
Count = 10, 
}, 
} 

function use(box) 
if (not box) then 
return 1 
end 
local pill = box.Pill 
if (CalcFreeItemCellCount() < 10) then 
Say(format(" Ýt nhÊt cÇn 10 c¸ chç trèng tíi chøa ®ùng <color=red>%s<color>.", pill.Name)) 
return 1 
end 
-- script viet hoa By http://tranhba.com  phong v©n lÖnh bµi - tay míi sö dông ra vËt phÈm khãa - Modified By DinhHQ - 20110926 
if tbPVLB_Check:IsNewPlayer() == 1 and tbPVLB_Check:CheckTime() == 1 then 
for i = 1, pill.Count do 
local nidx = AddItem(pill.ID[1], pill.ID[2], pill.ID[3], pill.ID[4], 0, 0) 
SetItemBindState(nidx, -2) 
end 
else 
for i = 1, pill.Count do 
AddItem(pill.ID[1], pill.ID[2], pill.ID[3], pill.ID[4], 0, 0) 
end 
end 

Msg2Player(format("Ngµi ®¹t ®­îc %d %s", pill.Count, pill.Name)) 
return 0 
end 
