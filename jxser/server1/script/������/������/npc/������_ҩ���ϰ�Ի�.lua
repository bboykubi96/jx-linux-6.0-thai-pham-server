-- script viet hoa By http://tranhba.com description: hai hå khu ba l¨ng huyÒn tiÖm thuèc l·o b¶n ®èi tho¹i # Thiªn v­¬ng gióp 40 cÊp nhiÖm vô # tay míi nhiÖm vô tiÓu c¸ phô th©n ®İch bÖnh # 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/26 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-10) 
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main(sel) 
dofile("script/Á½ºşÇø/°ÍÁêÏØ/npc/°ÍÁêÏØ_Ò©µêÀÏ°å¶Ô»°.lua");

UTask_tw = GetTask(3) 
UTask_world18 = GetTask(46) 
	if (UTask_tw == 40*256+20) then						-- script viet hoa By http://tranhba.com  ÌìÍõ40¼¶ÈÎÎñ
Talk(5, "L40_tw_talk2","T¹i h¹ lµ Thiªn v­¬ng gióp ®İch ®Ö tö , ta cã mét ®ång m«n trung liÔu xİch luyÖn xµ ®İch ®éc , xin/mêi thÇn y cho ta gi¶i d­îc !","Xİch luyÖn xµ ? thËt sù lµ qu¸ nguy hiÓm .. ta cã thÓ cøu , muèn t×m tµi liÖu tíi chÕ thuèc !","Kh«ng biÕt muèn c¸i g× tµi liÖu ®©y ? ","§©y lµ gia truyÒn bİ quyÕt , nh­ng ng­¬i lµ Thiªn v­¬ng ®Ö tö ta liÒn nãi cho ng­¬i nghe ! ph¶i cã <color=Red> löa con th»n l»n ®İch v¶y <color> cïng <color=Red> l«ng xanh con rïa vá rïa th­îng ®İch mao <color>. t×m ®­îc hai thø ®å nµy , ng­¬i ®ång m«n th× cã cøu ","Kh«ng biÕt cã thÓ t×m ®­îc hai thø ®å nµy sao ? ") 
elseif(UTask_world18 == 1) then -- script viet hoa By http://tranhba.com  tay míi th«n tiÓu c¸ nhiÖm vô 
Talk(1,"","Ng« thÇn y: oh ? tiÓu c¸ ®İch phô th©n ng· bÖnh ? ng­¬i tíi thËt lµ kh«ng khĞo , míi võa vµo ®İch mét nhãm tú ba hoµn b¸n hÕt cho Thiªn v­¬ng gióp . nÕu kh«ng , ng­¬i ®i hái mét chót trong th«n Thiªn v­¬ng gióp ®İch ®Ö tö ? ") 
Msg2Player("TiÖm thuèc l·o b¶n nãi cho ng­¬i biÕt tú ba hoµn ®· b¸n xong , cÇn ®i t×m Thiªn v­¬ng gióp ®Ö tö ") 
AddNote("TiÖm thuèc l·o b¶n nãi cho ng­¬i biÕt tú ba hoµn ®· b¸n xong , cÇn ®i t×m Thiªn v­¬ng gióp ®Ö tö ") 
	elseif (UTask_tw == 40*256+50) then
Say("Nghe nãi ë <color=Red> phôc l­u ®éng <color> cã <olor=Red> löa con th»n l»n <color> cïng <color=Red> l«ng xanh con rïa <color>, cã ng­êi ë <color=Red> Thiªn v­¬ng ®¶o <color> gÆp ®­îc . chØ cÇn t×m ®­îc ng­¬i ®ång m«n th× cã cøu ", 2,"Ta ®i tr­íc mua mét chót thuèc /yes","Ta muèn lËp tøc ®i mua thuèc dÉn /no") 
else -- script viet hoa By http://tranhba.com  kh«ng ph¶i lµ nhiÖm vô tr¹ng th¸i 
Say("Bæn tiÖm lµ thÇn d­îc! Cã bÖnh sÏ khái bÖnh, kh«ng bÖnh sÏ kháe, gi¸ c¶ ph¶i ch¨ng. Mua mét İt chø? ", 4,"Giao dŞch /yes","Mua m¸u nhanh/buymaunhanh","Ta ®Õn nhËn nhiÖm vô s¬ nhËp /yboss","Kh«ng giao dŞch /no"); 
end 
end; 

function L40_tw_talk2() 
Talk(2,"","Nghe nãi ë <color=Red> phôc l­u ®éng <color> cã <color=Red> löa con th»n l»n <color> cïng <color=Red> l«ng xanh con rïa <color>, cã ng­êi ë <color=Red> Thiªn v­¬ng ®¶o <color> gÆp ®­îc ","§a t¹ thÇn y !") 
	SetTask(3, 40*256+50)								-- script viet hoa By http://tranhba.com  ÌìÍõ40¼¶ÈÎÎñ
AddNote("Nghe ba l¨ng huyÒn ®İch thÇn y nãi : muèn mæ r¾n ®éc ph¶i cã löa con th»n l»n da cïng l«ng xanh con rïa ") 
Msg2Player("Muèn mæ r¾n ®éc ph¶i cã löa con th»n l»n da cïng l«ng xanh con rïa .") 
end; 

function yes() 
Sale(12); -- script viet hoa By http://tranhba.com  b¾n ra giao dŞch khu«ng 
end; 

function no() 
end; 



function buymaunhanh()
	local pri = 3000
	local totalcount =CalcFreeItemCellCount();
	local money = GetCash()
	local moneymin = (money - mod(money,pri)) / pri
	if totalcount == 0 then 
                       Say("<color=yellow>§¹i hiÖp ®· cã ®Çy r­¬ng m¸u.",0)
	return
	end
	if moneymin >= totalcount then
		tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= totalcount }}, format("Get %s", "Than pham 1"))
		Pay(totalcount * pri)
	else
	tbAwardTemplet:GiveAwardByList({{szName = "Ngò hoa ngäc lé hoµn", tbProp ={ 1,2,0,5,0,0,0,0}, nRate = 100, nCount= moneymin }}, format("Get %s", "Than pham 1"))
		Pay(moneymin * pri)
end
end