-- script viet hoa By http://tranhba.com  ThiÕu L©m ng­êi ®i ®­êng NPC huyÒn tõ 50 cÊp nhiÖm vô 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_sl = GetTask(7) 
if (GetSeries() == 0) and (GetFaction() == "shaolin") then 
		if ((UTask_sl == 50*256+30) and (HaveItem(28) == 1)) then		-- script viet hoa By http://tranhba.com  50¼¶ÈÎÎñ½øĞĞÖĞ
L50_prise() 
elseif ((UTask_sl == 50*256) and (GetLevel() >= 50)) then -- script viet hoa By http://tranhba.com 50 cÊp nhiÖm vô khëi ®éng 
Talk(2,"L50_get","#“# dŞch cèt tr¶i qua ### DŞch c©n kinh # cïng # TÈy Tñy Kinh # còng x­ng “ ThiÕu L©m tam kinh ” , t­¬ng truyÒn v× §¹t Ma tæ s­ së trø , ghi l¹i bæn ph¸i ®İch vâ häc tinh tóy . n¨m ®ã qu©n Kim xu«i nam , ®Ó tr¸nh ThiÕu L©m b¶o cÊp r¬i vµo tay ®Şch , hèt ho¶ng trong , bæn täa ®İch ®Ö tö rõng xa ®em tam kinh giÊu ë tù sau ®İch tïng l©m trong , chiÕn háa trung , rõng xa v× b¶o vÖ tµng kinh c¸c mµ chÕt , chuyÖn sau chóng ®Ö tö ë tïng trong rõng chØ t×m ®­îc # DŞch c©n kinh # cïng # TÈy Tñy Kinh # , mµ # dŞch cèt tr¶i qua # lµm thÕ nµo còng t×m kh«ng ®­îc .") 
-- script viet hoa By http://tranhba.com 		elseif (UTask_sl == 70*256+10) then			-- script viet hoa By http://tranhba.com  ÖØ·µÃÅÅÉÈÎÎñÍê³É
-- script viet hoa By http://tranhba.com  Say("HuyÒn tõ # m­êi ®İnh t¨ng m¹o ng­¬i thu tËp ®ñ sao ? ",2,"§· chuÈn bŞ xong /return_completed","Xin/mêi ®îi thªm mét ®o¹n thêi gian /return_sele_no") 
-- script viet hoa By http://tranhba.com  elseif (UTask_sl == 70) then -- script viet hoa By http://tranhba.com  trë l¹i m«n ph¸i nhiÖm vô 
-- script viet hoa By http://tranhba.com  Talk(1,"return_sele","Nhµ ch¬i # s­ phô , ta xuÊt s­ cßn cã thÓ m­în xem trong tµng kinh c¸c ®İch bé s¸ch sao ? ") 
else -- script viet hoa By http://tranhba.com  th­êng quy ®èi tho¹i 
Talk(1,"","Vèn tù b¶o ®iÓn cæ tŞch rÊt nhiÒu , kim quèc dßm ngã ®· l©u .") 
end 
else 
Talk(1,"","Tµng kinh c¸c cßn lµ ph¸p ®­êng , lµ cao t¨ng nãi tr¶i qua nãi ph¸p ®İch ®Şa ph­¬ng , tµng kinh c¸c cã rÊt nhiÒu kinh phËt , rÊt nhiÒu tuyÖt b¶n tr©n phÈm .") 
end 
end; 

function L50_get() 
Say("NÕu nh­ dŞch cèt tr¶i qua thËt bŞ chóng ta ®Ö tö lÊy nĞm , thËt lµ mÊt thÓ diÖn ",2,"Trî gióp /L50_get_yes","Ta kh«ng quan t©m !/L50_get_no") 
end 

function L50_get_yes() 
	SetTask(7,50*256+10)
AddNote("NhËn ThiÕu L©m t×m tr¶i qua nhiÖm vô # t×m ®­îc bŞ tån phong ®İch dŞch cèt tr¶i qua . ") 
Msg2Player("NhËn ThiÕu L©m t×m tr¶i qua nhiÖm vô # t×m ®­îc bŞ tån phong ®İch dŞch cèt tr¶i qua . ") 
end; 

function L50_get_no() 
end; 

function L50_prise() 
Talk(1,"","C¸i nµy thËt lµ dŞch cèt tr¶i qua , thËt lµ thËt tèt qu¸ ....") 
SetTask(7,60*256) 
DelItem(28) 
SetRank(6) 
-- script viet hoa By http://tranhba.com  AddMagic(271) 
-- script viet hoa By http://tranhba.com  AddMagic(11) 
-- script viet hoa By http://tranhba.com  AddMagic(19) 
add_sl(60) -- script viet hoa By http://tranhba.com  ®iÒu dông skills_table.lua trung ®İch hµm sè , tham sæ v× häc ®­îc bao nhiªu cÊp kü n¨ng . 
AddNote("T×m ®­îc dŞch cèt tr¶i qua , hoµn thµnh nhiÖm vô , th¨ng cÊp lµm phôc ma Thiªn v­¬ng . ") 
Msg2Player("Chóc mõng ng­¬i th¨ng cÊp lµm phôc ma Thiªn v­¬ng , häc ®­îc long tr¶o hæ mãng con rïa xanh biÕc hîp , sê/chí h¾c v« l­îng . ") 
end; 
