function GetDesc(nItem) 
return "" 
end 

function main(nItem) 
Say("M� ra ng� h�nh ph� �em ��t ���c 4 b�a r�t xu�ng ph�ng ng� n�ng l�c <color=red> b�o kh� ng��i b�o v� <color> ng�y b�o kho ", 6, 
" ��t ���c 4 c� r�t lui kim ph� get_chejinfu", 
" ��t ���c 4 c� r�t lui m�c ph� get_chemufu", 
" ��t ���c 4 c� r�t lui n��c ph� get_cheshuifu", 
" ��t ���c 4 c� r�t lui l�a ph� get_chehuofu", 
" ��t ���c 4 c� r�t lui ��t ph� get_chetufu", 
" �� cho ta tr��c h�t ngh� mu�n #/no"); 
return 1 
end 

function get_chejinfu() 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> th�nh an ��ng h�ng m�t c�i trang b� , �t nh�t ph�i l�u m�t ch� tr�ng , sau �� s� d�ng ng� h�nh ph� ") 
return 1 
end 
WriteLog(format("Account:%s[Name:%s] s� d�ng ng� h�nh ph� ��t ���c 4 c� r�t lui kim ph� ", 
GetAccount(), 
GetName()) 
); 
ConsumeEquiproomItem(1, 6, 1, 2806, -1);-- script viet hoa By http://tranhba.com  kh�u tr� ng� h�nh ph� 
for i = 1, 4 do 
AddItem(6,1,2807,0,0,0) 
end; 
end 

function get_chemufu() 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> th�nh an ��ng h�ng m�t c�i trang b� , �t nh�t ph�i l�u m�t ch� tr�ng , sau �� s� d�ng ng� h�nh ph� ") 
return 1 
end 
WriteLog(format("Account:%s[Name:%s] s� d�ng ng� h�nh ph� ��t ���c 4 c� r�t lui m�c ph� ", 
GetAccount(), 
GetName()) 
); 
ConsumeEquiproomItem(1, 6, 1, 2806, -1);-- script viet hoa By http://tranhba.com  kh�u tr� ng� h�nh ph� 
for i = 1, 4 do 
AddItem(6,1,2808,0,0,0) 
end; 
end 

function get_cheshuifu() 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> th�nh an ��ng h�ng m�t c�i trang b� , �t nh�t ph�i l�u m�t ch� tr�ng , sau �� s� d�ng ng� h�nh ph� ") 
return 1 
end 
WriteLog(format("Account:%s[Name:%s] s� d�ng ng� h�nh ph� ��t ���c 4 c� r�t lui n��c ph� ", 
GetAccount(), 
GetName()) 
); 
ConsumeEquiproomItem(1, 6, 1, 2806, -1);-- script viet hoa By http://tranhba.com  kh�u tr� ng� h�nh ph� 
for i = 1, 4 do 
AddItem(6,1,2809,0,0,0) 
end; 
end 

function get_chehuofu() 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> th�nh an ��ng h�ng m�t c�i trang b� , �t nh�t ph�i l�u m�t ch� tr�ng , sau �� s� d�ng ng� h�nh ph� ") 
return 1 
end 
WriteLog(format("Account:%s[Name:%s] s� d�ng ng� h�nh ph� ��t ���c 4 c� r�t lui l�a ph� ", 
GetAccount(), 
GetName()) 
); 
ConsumeEquiproomItem(1, 6, 1, 2806, -1);-- script viet hoa By http://tranhba.com  kh�u tr� ng� h�nh ph� 
for i = 1, 4 do 
AddItem(6,1,2810,0,0,0) 
end; 
end 

function get_chetufu() 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> th�nh an ��ng h�ng m�t c�i trang b� , �t nh�t ph�i l�u m�t ch� tr�ng , sau �� s� d�ng ng� h�nh ph� ") 
return 1 
end 
WriteLog(format("Account:%s[Name:%s] s� d�ng ng� h�nh ph� ��t ���c 4 c� r�t lui ��t ph� ", 
GetAccount(), 
GetName()) 
); 
ConsumeEquiproomItem(1, 6, 1, 2806, -1);-- script viet hoa By http://tranhba.com  kh�u tr� ng� h�nh ph� 
for i = 1, 4 do 
AddItem(6,1,2811,0,0,0) 
end; 
end 

function no() 
end 
