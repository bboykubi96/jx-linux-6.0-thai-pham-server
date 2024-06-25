-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  FileName : ng­êi ®i ®­êng _ ly thu thñy .lua 
-- script viet hoa By http://tranhba.com  Author : xiaoyang 
-- script viet hoa By http://tranhba.com  CreateTime : 2004-12-27 14:40:10 
-- script viet hoa By http://tranhba.com  Desc : thóy khãi 90 cÊp nhiÖm vô ? ? 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

Include("\\script\\task\\newtask\\master\\zhongli\\zhonglitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")

function main() 
Uworld126 = nt_getTask(126) 
Uworld1002 = nt_getTask(1002) 
Say("Cuéc sèng trªn ®êi , cÇn hiÓu quý träng h¹nh phóc .",3,"§Ó ta lµm ®ang tuyÕn nhiÖm vô /branch_branchliqiushui","§Ó ta lµm 90 cÊp nhiÖm vô /tasknpc_nity","Kh«ng hái !/no") 
end 

function tasknpc_nity() 
Uworld126 = nt_getTask(126) 
if (Uworld126 == 10) and (HaveItem(391) == 1) then 
Talk(4,"Uworld126_lose"," ly tiÓu th­ , ng­¬i cã tin/th¬ ","# ®o¹n t­ thµnh còng cã hèi hËn mét ngµy ? qu¸ muén , ta kh«ng hÒ n÷a tin t­ëng nam nh©n .","C« n­¬ng cÇn g× ph¶i cè chÊp , tôc ng÷ nãi , sÜ biÖt ba ngµy qu¸t môc t­¬ng ®·i , ch¼ng lÏ kh«ng cã thÓ cho §oµn c«ng tö mét c¸i c¬ héi sao ? ","Cho h¾n c¬ héi ? h¾n rêi ®i ta thêi ®iÓm , cã cho ta c¬ héi sao ? ta kh«ng muèn nãi liÔu , ng­¬i kh«ng cã sao ®i ngay t×m ch­ëng m«n , nµng thÝch nãi nh÷ng thø nµy .") 
elseif (Uworld126 == 10) then -- script viet hoa By http://tranhba.com  kh«ng cã th­ 
Talk(3,""," ly tiÓu th­ , ng­¬i cã tin/th¬ ","C¸i g× tin/th¬ ?","A , ta ë l¹i ®o¹n t­ thµnh n¬i ®ã .") 
elseif (Uworld126 == 30)then 
Talk(3,"Uworld126_cant"," ly tiÓu th­ ",".....","Xem ra ph¶i ®i vÒ thÊy §oµn c«ng tö t×m biÖn ph¸p míi ®­îc .") 
elseif (Uworld126 == 60)then 
Talk(12,"Uworld126_beleive"," ly tiÓu th­ , kh«ng xong ! ","GÊp c¸i g× , cã chuyÖn g× tõ tõ nãi .","§oµn c«ng tö .","H¾n nh­ thÕ nµo ?","§oµn c«ng tö bëi v× b¶o vÖ nµng bÞ ®Þch nh©n ®¸nh cho thµnh träng th­¬ng , nguy hiÓm t¸nh m¹ng !","Ng­¬i kh«ng cÇn h­ cÊu liÔu , ta tuyÖt ®èi sÏ kh«ng tin/th¬ ng­¬i !","T¹i h¹ lÊy m×nh ë giang hå ®Ých danh tiÕng b¶o ®¶m , ta kh«ng lõa g¹t c« n­¬ng ..","Ch¼ng lÏ ?.... t­ thµnh . nhiÒu n¨m nh­ vËy , ng­¬i cÇn g× ph¶i thay ng­êi kh¸c chÞu téi , nh÷ng n¨m nµy , ta tÝnh t×nh còng thay ®æi liÔu , cã rÊt nhiÒu cõu hËn , ng­¬i kh«ng cã vâ c«ng , thËt lµ khæ m×nh .","NÕu nh­ ngµy ®ã nµng tha thø h¾n còng sÏ kh«ng nh­ vËy .","MÊy ngµy nay ta kh«ng ngñ ®­îc , trong lßng l·o suy nghÜ h¾n , b©y giê h¾n ë ®©u ?","§¹i Lý ","Ta sÏ lËp tøc ®Õn n¬i ®ã , tÊt c¶ cõu hËn ®Òu ®· kÕt thóc !") 
elseif (Uworld126 > 10) and (Uworld126 < 60) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung ®Ých thiÕu tØnh ®èi tho¹i 
Talk(1,"","Ta cïng t­ thµnh kh«ng cã bÊt kú kiÒn ngay c¶ , ng­¬i kh«ng cÇn nhiÒu lêi ! ") 
else 
Talk(1,"","M«n chñ kh«ng thÓ cïng ®­êng mét thÇn thµnh th©n , nh­ vËy ®em kh«ng tu©n theo m«n quy .....") 
end 
end 

function Uworld126_lose() 
DelItem(391) 
nt_setTask(126,20) 
Msg2Player("Nh×n tin/th¬ sau , ly thu thñy kh«ng cã mét chót c¶m ®éng , ng­¬i quyÕt ®Þnh ®i t×m duÉn ngËm nh©n trî gióp #.") 
AddNote("Nh×n tin/th¬ sau , ly thu thñy kh«ng cã mét chót c¶m ®éng , ng­¬i quyÕt ®Þnh ®i t×m duÉn ngËm nh©n trî gióp #.") 
end 

function Uworld126_cant() 
nt_setTask(126,40) 
Msg2Player(" ly thu thñy kh«ng nghe khuyÕn c¸o , ng­¬i quyÕt ®Þnh trë vÒ t×m ®o¹n t­ thµnh .") 
AddNote(" ly thu thñy kh«ng nghe khuyÕn c¸o , ng­¬i quyÕt ®Þnh trë vÒ t×m ®o¹n t­ thµnh .") 
end 

function Uworld126_beleive() 
nt_setTask(126,70) 
Msg2Player(" ly thu thñy trong lßng cßn cã ®o¹n t­ thµnh , quyÕt ®Þnh ®i gÆp h¾n mét lÇn cuèi , kÕ ho¹ch thµnh c«ng .") 
AddNote(" ly thu thñy trong lßng cßn cã ®o¹n t­ thµnh , quyÕt ®Þnh ®i gÆp h¾n mét lÇn cuèi , kÕ ho¹ch thµnh c«ng .") 
end 

function branch_branchliqiushui() 
Uworld1002 = nt_getTask(1002) 
liqiushui() 
end 

function no() 
end
