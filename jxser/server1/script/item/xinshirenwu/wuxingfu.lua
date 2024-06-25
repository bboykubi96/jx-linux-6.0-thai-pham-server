function GetDesc(nItem) 
return "" 
end 

function main(nItem) 
Say("Më ra ngò hµnh phï ®em ®¹t ®­îc 4 bïa rít xuèng phßng ngù n¨ng lùc <color=red> b¶o khè ng­êi b¶o vÖ <color> ngµy b¶o kho ", 6, 
" ®¹t ®­îc 4 c¸ rót lui kim phï get_chejinfu", 
" ®¹t ®­îc 4 c¸ rót lui méc phï get_chemufu", 
" ®¹t ®­îc 4 c¸ rót lui n­íc phï get_cheshuifu", 
" ®¹t ®­îc 4 c¸ rót lui löa phï get_chehuofu", 
" ®¹t ®­îc 4 c¸ rót lui ®Êt phï get_chetufu", 
" ®Ó cho ta tr­íc hÕt nghÜ muèn #/no"); 
return 1 
end 

function get_chejinfu() 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> thØnh an ®øng hµng mét c¸i trang bÞ , Ýt nhÊt ph¶i l­u mét chç trèng , sau ®ã sö dông ngò hµnh phï ") 
return 1 
end 
WriteLog(format("Account:%s[Name:%s] sö dông ngò hµnh phï ®¹t ®­îc 4 c¸ rót lui kim phï ", 
GetAccount(), 
GetName()) 
); 
ConsumeEquiproomItem(1, 6, 1, 2806, -1);-- script viet hoa By http://tranhba.com  khÊu trõ ngò hµnh phï 
for i = 1, 4 do 
AddItem(6,1,2807,0,0,0) 
end; 
end 

function get_chemufu() 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> thØnh an ®øng hµng mét c¸i trang bÞ , Ýt nhÊt ph¶i l­u mét chç trèng , sau ®ã sö dông ngò hµnh phï ") 
return 1 
end 
WriteLog(format("Account:%s[Name:%s] sö dông ngò hµnh phï ®¹t ®­îc 4 c¸ rót lui méc phï ", 
GetAccount(), 
GetName()) 
); 
ConsumeEquiproomItem(1, 6, 1, 2806, -1);-- script viet hoa By http://tranhba.com  khÊu trõ ngò hµnh phï 
for i = 1, 4 do 
AddItem(6,1,2808,0,0,0) 
end; 
end 

function get_cheshuifu() 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> thØnh an ®øng hµng mét c¸i trang bÞ , Ýt nhÊt ph¶i l­u mét chç trèng , sau ®ã sö dông ngò hµnh phï ") 
return 1 
end 
WriteLog(format("Account:%s[Name:%s] sö dông ngò hµnh phï ®¹t ®­îc 4 c¸ rót lui n­íc phï ", 
GetAccount(), 
GetName()) 
); 
ConsumeEquiproomItem(1, 6, 1, 2806, -1);-- script viet hoa By http://tranhba.com  khÊu trõ ngò hµnh phï 
for i = 1, 4 do 
AddItem(6,1,2809,0,0,0) 
end; 
end 

function get_chehuofu() 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> thØnh an ®øng hµng mét c¸i trang bÞ , Ýt nhÊt ph¶i l­u mét chç trèng , sau ®ã sö dông ngò hµnh phï ") 
return 1 
end 
WriteLog(format("Account:%s[Name:%s] sö dông ngò hµnh phï ®¹t ®­îc 4 c¸ rót lui löa phï ", 
GetAccount(), 
GetName()) 
); 
ConsumeEquiproomItem(1, 6, 1, 2806, -1);-- script viet hoa By http://tranhba.com  khÊu trõ ngò hµnh phï 
for i = 1, 4 do 
AddItem(6,1,2810,0,0,0) 
end; 
end 

function get_chetufu() 
if (CalcFreeItemCellCount() < 1) then 
Talk(1, "", "<#> thØnh an ®øng hµng mét c¸i trang bÞ , Ýt nhÊt ph¶i l­u mét chç trèng , sau ®ã sö dông ngò hµnh phï ") 
return 1 
end 
WriteLog(format("Account:%s[Name:%s] sö dông ngò hµnh phï ®¹t ®­îc 4 c¸ rót lui ®Êt phï ", 
GetAccount(), 
GetName()) 
); 
ConsumeEquiproomItem(1, 6, 1, 2806, -1);-- script viet hoa By http://tranhba.com  khÊu trõ ngò hµnh phï 
for i = 1, 4 do 
AddItem(6,1,2811,0,0,0) 
end; 
end 

function no() 
end 
