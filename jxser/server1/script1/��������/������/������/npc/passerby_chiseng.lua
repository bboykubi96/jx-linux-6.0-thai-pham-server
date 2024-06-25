-- script viet hoa By http://tranhba.com  thiªn long tù si t¨ng ®èi tho¹i ch©n vèn 

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main() 
Uworld1050 = nt_getTask(1050) 
if ( Uworld1050 ~= 0 ) then 
branch_chiseng() 
else 
Talk(1,"","Nh÷ng n¨m gÇn ®©y nhÊt , nh÷ng ®Þa ph­¬ng kh¸c tíi ®Ö tö cµng ngµy cµng Ýt , ph­¬ng tr­îng kh«ng lo l¾ng trong chïa chuyÖn cña , chØ tÜnh tu . ®Ö tö ng­êi ng­êi còng cuèng quÝt , tr­íc m¾t ®· xuèng nói chiªu mé míi ®Ö tö . thÝ chñ chê sau mét thêi gian ng¾n trë l¹i ®i !"); 
end 
end 
