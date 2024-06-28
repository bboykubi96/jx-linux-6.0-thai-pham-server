-- script viet hoa By http://tranhba.com  Trung Nguyªn nam khu ®¹o h­¬ng th«n trµ ®iÕm l·o b¶n ®èi tho¹i 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(204) == 1 then 
allbrother_0801_FindNpcTaskDialog(204) 
return 0; 
end 

Say("Uèng trµ ®Ó cho th©n thÓ kháe m¹nh , kh¸ch quan muèn uèng mét chÐn sao ?",0) 

end; 
