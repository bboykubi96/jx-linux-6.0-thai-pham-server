TB_NEWYEAR_DOGGIFT = { 
{"Nh­ ý t¹p ", {6,1,1016,1,0,0,0}, 0.3 }, 
{"§Þnh quèc chi « sa ph¸t quan ", {0,160}, 0.001 }, 
{"§Þnh quèc chi lôa máng xanh tr­êng sam ", {0,159}, 0.0012 }, 
{"§Þnh quèc chi xÝch quyªn mÒm ngoa ", {0,161}, 0.0015 }, 
{"§Þnh quèc chi tö ®»ng hé cæ tay ", {0,162}, 0.0015 }, 
{"§Þnh quèc chi ng©n tµm ®ai l­ng ", {0,163}, 0.0015 }, 
{"An bang chi b¨ng tinh th¹ch gi©y chuyÒn ", {0,164}, 0.0005 }, 
{"An bang chi hoa cóc th¹ch chiÕc nhÉn ", {0,165}, 0.001 }, 
{"An bang chi ®iÒn hoµng th¹ch ngäc béi ", {0,166}, 0.001 }, 
{"An bang chi m¸u gµ th¹ch chiÕc nhÉn ", {0,167}, 0.001 }, 
{"HiÖp cèt chi thiÕt huyÕt sam ", {0,186}, 0.001 }, 
{"HiÖp cèt nhiÒu t×nh hoµn ", {0,187}, 0.001 }, 
{"HiÖp cèt chi ®an t©m giíi ", {0,188}, 0.001 }, 
{"HiÖp cèt t×nh ý kÕt ", {0,189}, 0.0005 }, 
{"Nhu t×nh chi c©n qu¾c nghª th­êng ", {0,190}, 0.0001 }, 
{"Nhu t×nh chi thôc n÷ gi©y chuyÒn ", {0,191}, 0.001 }, 
{"Nhu t×nh chi ph­îng nghi chiÕc nhÉn ", {0,192}, 0.001 }, 
{"Nhu t×nh chi tuÖ t©m ngäc béi ", {0,193}, 0.001 }, 
{"Phóc duyªn lé # ®¹i #", {6,1,124,1,0,0,0}, 0.2 }, 
{"Vâ l©m bÝ tÞch ", {6,1,26,1,0,0,0}, 0.005 }, 
{"TÈy Tñy Kinh ", {6,1,22,1,0,0,0}, 0.005 }, 
{"6 lç thiªn tµm ngoa ( n­íc thuéc tÝnh )", {2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"6 lç thiªn tµm ngoa ( háa thuéc tÝnh )", {2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"6 lç thiªn tµm ngoa ( ®Êt thuéc tÝnh )", {2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"6 lç bay ph­îng ngoa ( n­íc thuéc tÝnh )", {2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"6 lç bay ph­îng ngoa ( háa thuéc tÝnh )", {2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"6 lç bay ph­îng ngoa ( ®Êt thuéc tÝnh )", {2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"Tö thñy tinh ", {239}, 0.03 }, 
{" lan thñy tinh ", {238}, 0.03 }, 
{"N­íc biÕc tinh ", {240}, 0.03 }, 
{"§á th¾m b¶o th¹ch ", {353}, 0.03 }, 
{"CÊp t¸m huyÒn tinh qu¸ng th¹ch ", {6,1,147,8,0,0,0}, 0.001 }, 
{"CÊp b¶y huyÒn tinh qu¸ng th¹ch ", {6,1,147,7,0,0,0}, 0.005 }, 
{"CÊp s¸u huyÒn tinh qu¸ng th¹ch ", {6,1,147,6,0,0,0}, 0.01 }, 
{"CÊp n¨m huyÒn tinh qu¸ng th¹ch ", {6,1,147,5,0,0,0}, 0.2722 }, 
{"ThÇn bÝ qu¸ng th¹ch ", {6,1,398,1,0,0,0}, 0.005 }, 
} 


DOG_BASEVALUE = 10000 

function main() 
local sum = 0 
for i = 1, getn(TB_NEWYEAR_DOGGIFT) do 
		sum = sum + TB_NEWYEAR_DOGGIFT[i][3] * DOG_BASEVALUE
end 
local ranvalue = random(sum) 
local addnum = 0 
local itemidx = 0 
for i = 1, getn(TB_NEWYEAR_DOGGIFT) do 
		addnum = addnum + TB_NEWYEAR_DOGGIFT[i][3] * DOG_BASEVALUE
if (addnum >= ranvalue) then 
itemidx = i 
break 
end 
end 
local gift = TB_NEWYEAR_DOGGIFT[itemidx][2] 
if (getn(gift) == 1) then 
AddEventItem(gift[1]) 
elseif (getn(gift) == 2) then 
AddGoldItem(gift[1],gift[2]) 
elseif (getn(gift) == 7) then 
AddItem(gift[1],gift[2],gift[3],gift[4],gift[5],gift[6],gift[7]) 
elseif (getn(gift) == 13) then 
AddQualityItem(gift[1],gift[2],gift[3],gift[4],gift[5],gift[6],gift[7],gift[8],gift[9],gift[10],gift[11],gift[12],gift[13]) 
else 
return 
end 
Msg2Player("<#> ngµi ®¹t ®­îc mét <color=yellow>"..TB_NEWYEAR_DOGGIFT[itemidx][1].." . ") 
WriteLog(date().." account:"..GetAccount().." name="..GetName().." sö dông chã n¨m c¸t t­êng v­îng v­îng tói ®¹t ®­îc mét <color=yellow>"..TB_NEWYEAR_DOGGIFT[itemidx][1].." . ") 
end