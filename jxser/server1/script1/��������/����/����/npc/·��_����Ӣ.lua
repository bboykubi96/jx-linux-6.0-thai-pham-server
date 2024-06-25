-- script viet hoa By http://tranhba.com  §¹i Lý # ng­êi ®i ®­êng # ®ao liªn anh 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-09-16) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(187) == 1 then 
allbrother_0801_FindNpcTaskDialog(187) 
return 0; 
end 
Talk(3,"","Trong nhµ cã kh¸ch nh©n , ta ®i mua mÊy con c¸ trë l¹i lµm mét ®¹o §¹i Lý c¸ .","BÊt kÓ chuyÖn nµy nh­ thÕ nµo còng cã thÓ tíi nhµ ta ¨n c¬m , th­êng mét c¸i ta lµm c¸ , ®©y lµ §¹i Lý cho kh¸ch nh©n lµm mãn ¨n , ng­¬i kh«ng cÇn kh¸ch khÝ . #") 
end; 
