TB_NEWYEAR_DOGGIFT = { 
{"Nh� � t�p ", {6,1,1016,1,0,0,0}, 0.3 }, 
{"��nh qu�c chi � sa ph�t quan ", {0,160}, 0.001 }, 
{"��nh qu�c chi l�a m�ng xanh tr��ng sam ", {0,159}, 0.0012 }, 
{"��nh qu�c chi x�ch quy�n m�m ngoa ", {0,161}, 0.0015 }, 
{"��nh qu�c chi t� ��ng h� c� tay ", {0,162}, 0.0015 }, 
{"��nh qu�c chi ng�n t�m �ai l�ng ", {0,163}, 0.0015 }, 
{"An bang chi b�ng tinh th�ch gi�y chuy�n ", {0,164}, 0.0005 }, 
{"An bang chi hoa c�c th�ch chi�c nh�n ", {0,165}, 0.001 }, 
{"An bang chi �i�n ho�ng th�ch ng�c b�i ", {0,166}, 0.001 }, 
{"An bang chi m�u g� th�ch chi�c nh�n ", {0,167}, 0.001 }, 
{"Hi�p c�t chi thi�t huy�t sam ", {0,186}, 0.001 }, 
{"Hi�p c�t nhi�u t�nh ho�n ", {0,187}, 0.001 }, 
{"Hi�p c�t chi �an t�m gi�i ", {0,188}, 0.001 }, 
{"Hi�p c�t t�nh � k�t ", {0,189}, 0.0005 }, 
{"Nhu t�nh chi c�n qu�c ngh� th��ng ", {0,190}, 0.0001 }, 
{"Nhu t�nh chi th�c n� gi�y chuy�n ", {0,191}, 0.001 }, 
{"Nhu t�nh chi ph��ng nghi chi�c nh�n ", {0,192}, 0.001 }, 
{"Nhu t�nh chi tu� t�m ng�c b�i ", {0,193}, 0.001 }, 
{"Ph�c duy�n l� # ��i #", {6,1,124,1,0,0,0}, 0.2 }, 
{"V� l�m b� t�ch ", {6,1,26,1,0,0,0}, 0.005 }, 
{"T�y T�y Kinh ", {6,1,22,1,0,0,0}, 0.005 }, 
{"6 l� thi�n t�m ngoa ( n��c thu�c t�nh )", {2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"6 l� thi�n t�m ngoa ( h�a thu�c t�nh )", {2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"6 l� thi�n t�m ngoa ( ��t thu�c t�nh )", {2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"6 l� bay ph��ng ngoa ( n��c thu�c t�nh )", {2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"6 l� bay ph��ng ngoa ( h�a thu�c t�nh )", {2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"6 l� bay ph��ng ngoa ( ��t thu�c t�nh )", {2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1}, 0.01 }, 
{"T� th�y tinh ", {239}, 0.03 }, 
{" lan th�y tinh ", {238}, 0.03 }, 
{"N��c bi�c tinh ", {240}, 0.03 }, 
{"�� th�m b�o th�ch ", {353}, 0.03 }, 
{"C�p t�m huy�n tinh qu�ng th�ch ", {6,1,147,8,0,0,0}, 0.001 }, 
{"C�p b�y huy�n tinh qu�ng th�ch ", {6,1,147,7,0,0,0}, 0.005 }, 
{"C�p s�u huy�n tinh qu�ng th�ch ", {6,1,147,6,0,0,0}, 0.01 }, 
{"C�p n�m huy�n tinh qu�ng th�ch ", {6,1,147,5,0,0,0}, 0.2722 }, 
{"Th�n b� qu�ng th�ch ", {6,1,398,1,0,0,0}, 0.005 }, 
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
Msg2Player("<#> ng�i ��t ���c m�t <color=yellow>"..TB_NEWYEAR_DOGGIFT[itemidx][1].." . ") 
WriteLog(date().." account:"..GetAccount().." name="..GetName().." s� d�ng ch� n�m c�t t��ng v��ng v��ng t�i ��t ���c m�t <color=yellow>"..TB_NEWYEAR_DOGGIFT[itemidx][1].." . ") 
end