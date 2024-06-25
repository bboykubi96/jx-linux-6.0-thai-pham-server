-- script viet hoa By http://tranhba.com  ph¸i Hoa s¬n ®Çu mñi tªn ®èi tho¹i ch©n vèn 

Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main() 
Uworld1050 = nt_getTask(1050) 
if ( Uworld1050 ~= 0 ) then 
branch_jiantou() 
else 
Talk(1,"","Nghe nãi vâ l©m truyÒn kú cã hoµng kim nhiÖm vô , Hoa S¬n ®Ö tö ®· xuèng nói lµm nhiÖm vô , ng­¬i mét håi ph¶i vÒ tíi !"); 
end 
end 
