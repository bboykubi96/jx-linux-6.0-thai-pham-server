-- script viet hoa By http://tranhba.com description: §­êng m«n c¶nh tö kú 40 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/12 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 
if allbrother_0801_CheckIsDialog(7) == 1 then 
allbrother_0801_FindNpcTaskDialog(7) 
return 0; 
end 
UTask_tm = GetTask(2) 
	if (UTask_tm == 40*256+20) then
if (GetTaskTemp(4) == 31) then -- script viet hoa By http://tranhba.com  ®· ®¸nh b¹i n¨m con sñng vËt 
Talk(7, "L40_step42","V·n bèi §­êng m«n ®Ö tö , ra m¾t c¶nh tö v« cïng lín hiÖp ! ","§­êng d· lµ g× cña ng­¬i ?", " lµ v·n bèi s­ thóc .","Hõ # h¾n lµ kh«ng mÆt mòi tíi gÆp ta , cßn ch­a ph¶i d¸m ®Õn thÊy ta ? ph¸i ng­¬i tªn tiÓu bèi nµy tíi lµm c¸i g× ?","TiÒn bèi hiÓu lÇm , n¨m ®ã s­ thóc kh«ng ph¶i lµ thÊy chÕt mµ kh«ng cøu , mµ lµ bëi v× bæn m«n lËp cã m«n quy , kh«ng ph¶i v× ngo¹i nh©n ch÷a bÖnh , cho nªn h¾n b©y giê t×nh kh«ng ph¶i ®· , nh÷ng n¨m nµy h¾n còng mét mùc hÕt søc ¸y n¸y !","Nh÷ng thø nµy nguyªn do h¾n t¹i sao kh«ng tù m×nh ®Õn h­íng ta gi¶i thİch ?","TiÒn bèi ®èi víi s­ thóc hiÓu lÇm qu¸ s©u , sî r»ng võa thÊy mÆt cßn chê kh«ng kŞp më miÖng , liÒn ?") 
else 
Talk(1,"","BÊt kÓ ng­¬i lµ ai , cã chuyÖn g× tr­íc ®¸nh b¹i ta <color=Red> n¨m con nhµ sóc —— bôi lang # m·nh hæ # kim tiÒn b¸o # heo rõng # t«ng hïng <color> l¹i nãi !") 
-- script viet hoa By http://tranhba.com  AddNote(" ë nói Thanh Thµnh t©y bé t×m ®­îc c¶nh tö kú , cÇn tr­íc ®¸nh b¹i h¾n n¨m con nhµ sóc míi cã thÓ bŞ c¶nh tö kú ®Ó ı tíi . ") 
end 
	elseif (UTask_tm == 40*256+60) then
if (HaveItem(43) == 1) and (HaveItem(44) == 1) and (HaveItem(45) == 1) and (HaveItem(46) == 1) and (HaveItem(47) == 1) then -- script viet hoa By http://tranhba.com  ®· lÊy ®­îc n¨m lo¹i d­îc liÖu 
Talk(2, "","TiÒn bèi , c¸i nµy n¨m lo¹i chİnh lµ trŞ liÖu qu¸i bÖnh ®İch d­îc liÖu , s­ thóc nãi chØ cÇn ¨n ba lÇn liÒn cã thÓ khái råi !","ThËt tèt qu¸ # con g¸i cña ta ®­îc cøu råi # c¸m ¬n ng­¬i # c¸m ¬n ng­¬i # ®a t¹ c¸m ¬n ng­¬i s­ thóc , lµ ta hiÓu lÇm h¾n !") 
DelItem(43) 
DelItem(44) 
DelItem(45) 
DelItem(46) 
DelItem(47) 
			SetTask(2, 40*256+80)
AddNote("§ãng ph­¬ng thuèc cho c¶nh tö kú , thµnh c«ng hãa gi¶i h¾n cïng víi ®­êng d· ®İch ©n o¸n ") 
Msg2Player("T×m ®­îc 5 lo¹i d­îc liÖu cho c¶nh tö kú , thµnh c«ng hãa gi¶i h¾n cïng víi ®­êng d· ®İch ©n o¸n ") 
else 
Talk(3, "","Ng­¬i thËt sù cã biÖn ph¸p cøu ta n÷ nhi sao ?","§­êng d· s­ thóc ®· nãi cho ta biÕt ph­¬ng thuèc , ta ®ang t×m trŞ liÖu qu¸i bÖnh cÇn ®İch n¨m lo¹i d­îc liÖu ","ThËt c¸m ¬n ng­¬i . ") 
end 
	elseif (UTask_tm >= 40*256+40) and (UTask_tm < 40*256+80) then					-- script viet hoa By http://tranhba.com ÉĞÎ´Íê³É40¼¶ÈÎÎñ
Talk(1,"","Ng­¬i thËt sù cã biÖn ph¸p cøu ta n÷ nhi sao ?") 
	elseif (UTask_tm >= 40*256+80) and (UTask_tm < 70*256) then					-- script viet hoa By http://tranhba.com ÒÑ¾­Íê³É40¼¶ÈÎÎñ£¬ÉĞÎ´³öÊ¦
Talk(1,"","Ta hiÓu lÇm ng­¬i s­ thóc , thËt lµ xÊu hæ !") 
else -- script viet hoa By http://tranhba.com  ch­a hoµn thµnh 40 cÊp nhiÖm vô # thiÕu tØnh ®èi tho¹i # 
Talk(1,"","# ta trän ®êi lín nhÊt hËn chuyÖn , chİnh lµ ta b»ng h÷u tèt nhÊt l¹i lµ mét v« t×nh v« nghÜa h¹ng ng­êi !") 
end 
end; 

function L40_step42() 
	SetTask(2, 40*256+40)
AddNote("§¸nh b¹i c¶nh tö kú ®İch 5 lo¹i nhµ sóc , biÕt n÷ nhi cña h¾n ®­îc kú qu¸i bÖnh , muèn t×m ®­êng d· s­ thóc t×m cÇu xin ch÷a bÖnh ph­¬ng thuèc ") 
Talk(4,"","ThËt ra th× ta chİnh lµ giÕt h¾n th× cã İch lîi g× ? thª tö ta còng n÷a kh«ng sèng ®­îc liÔu , vèn lµ ta ®· xong v« sanh thó , chØ lµ v× cßn tÊm bĞ ®İch n÷ nhi míi sèng t¹m ®Õn nay , kh«ng nghÜ tíi ngay c¶ ta duy nhÊt n÷ nhi còng ph¶i lªn gièng nhau qu¸i bÖnh , nÕu nh­ ngay c¶ n÷ nhi còng kh«ng cã , ta # ta sèng ®i xuèng cßn cã c¸i g× ı tø ?","TiÒn bèi , ng­¬i ®õng gÊp g¸p , con g¸i ng­¬i nhÊt ®Şnh sÏ cã cøu ®İch !","Cã thÓ cã biÖn ph¸p g× ? ng­¬i s­ thóc lµ ®Ö nhÊt thiªn h¹ ®İch thÇn y , h¾n kh«ng thÓ ra tay cøu gióp , cßn cã ai cã thÓ cøu ®­îc con g¸i cña ta !","Ta tù cã biÖn ph¸p , ta ®©y ®i ngay t×m s­ thóc !") 
end; 
