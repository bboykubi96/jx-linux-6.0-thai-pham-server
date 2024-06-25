-- script viet hoa By http://tranhba.com description: §­êng m«n b×nh th­êng ®Ö tö tróc h¶i ba nhèt vµo miÖng 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/7 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nhËp m«n ph¸i nhiÖm vô cÊp bËc yªu cÇu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(8) == 1 then 
allbrother_0801_FindNpcTaskDialog(8) 
return 0; 
end 
UTask_tm = GetTask(2) 
UTask_wu = GetTask(10) 
Uworld37 = GetByte(GetTask(37),1) 
if (Uworld37 == 0) and (GetLevel() >=10) and (GetFaction() ~= "tangmen") then -- script viet hoa By http://tranhba.com  nhËp m«n nhiÖm vô khëi ®éng 
Say("NÕu muèn gia nhËp bæn m«n , nhÊt ®Şnh ph¶i x«ng qua <color=Red> tróc h¶i ba quan <color> , ng­¬i muèn x«ng quan sao ?", 2,"X«ng quan /enroll_get_yes","Kh«ng x«ng /no") 
elseif (Uworld37 > 0) and (Uworld37 < 20) then -- script viet hoa By http://tranhba.com  nhiÖm vô trung 
Talk(1,"","Muèn b¾t ®­îc <color=Red> mµu xanh tróc tr­îng <color> cÇn ®¸nh b¹i <color=Red> cöa thø nhÊt dÆm ®¹i m· hÇu <color> .") 
-- script viet hoa By http://tranhba.com  , muèn lÊy ®­îc <color=Red> mµu tr¾ng tróc tr­îng <color> ng­¬i ph¶i ®i cöa thø hai t×m mét <color=Red> trang ®inh <color> , cuèi cïng mét chu«i <color=Red> mµu tİm tróc tr­îng <color> ë cöa thø ba ®İch <color=Red> trang ®inh <color> trªn tay . lÊy ®­îc ba chu«i tróc tr­îng sau giao cho <color=Red> cöa ra trang ®inh <color> , míi cã thÓ coi nh­ lµ v­ît qua kiÓm tra . 
-- script viet hoa By http://tranhba.com  elseif (GetFaction() == "tangmen") then -- script viet hoa By http://tranhba.com  ®· nhËp m«n , ch­a xuÊt s­ 
-- script viet hoa By http://tranhba.com  Talk(1,"","§­êng m«n trang ®inh # mäi ng­êi ®Òu lµ ®ång m«n huynh ®Ö , ng­¬i kh«ng cÇn n÷a x«ng trong nµy ®İch tróc h¶i ba ®ãng #") 
elseif (UTask_tm >= 70*256) then -- script viet hoa By http://tranhba.com  ®· xuÊt s­ 
Talk(1,"","Bæn m«n lÊy ¸m khİ cïng bÉy rËp ®éc bé thiªn h¹ , ng­êi giang hå ai còng kh«ng d¸m khinh th­êng liÔu chóng ta # ngµy sau hµnh tÈu giang hå , còng kh«ng nªn ®äa liÔu bæn m«n ®İch uy phong ! ") 
else 
Talk(1,"","Bæn m«n kh«ng hoan nghªnh ng­êi xa l¹ tïy ı ra vµo .") 
end 
end; 

function enroll_get_yes() 
Talk(2, "","B¾t ®­îc <color=Red> thanh b¹ch tö ba chu«i tróc tr­îng <color> ë <color=Red><color> tróc h¶i ba quan , sau ®ã giao cho ng­êi ®i ra cöa , míi cã thÓ coi nh­ lµ v­ît qua kiÓm tra .","Muèn b¾t ®­îc <color=Red> mµu xanh tróc tr­îng <color> cÇn ®¸nh b¹i <color=Red> cöa thø nhÊt dÆm ®¹i m· hÇu <color> , <color=Red> mµu tr¾ng tróc tr­îng <color> ph¶i ®i cöa thø hai t×m mét <color=Red> trang ®inh <color>, <color=Red> mµu tİm tróc tr­îng <color> ë cöa thø ba ®İch <color=Red> trang ®inh <color> trªn tay .") 
Uworld37 = SetByte(GetTask(37),1,20) 
SetTask(37,Uworld37) 
AddNote("§Õn tróc h¶i ba quan thÊy §­êng m«n tr¸ng ®inh , tiÕp nhËn vô <color=red> ®Ö tö kı danh <color>, qu¸ tróc h¶i ba quan b¾t ®­îc thanh b¹ch tö ba chu«i tróc tr­îng . ") 
-- script viet hoa By http://tranhba.com  AddNote("§Õn §­êng m«n ®Ö tö kı danh nhiÖm vô # x«ng qua tróc h¶i ba quan còng lÊy ®­îc thanh # b¹ch # tö ba chu«i tróc tr­îng . ") 
end; 

function no() 
end; 
