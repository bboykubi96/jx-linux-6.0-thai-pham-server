-- script viet hoa By http://tranhba.com  thóy khãi cöa ng­êi ®i ®­êng NPC xu©n h­¬ng bµ bµ # thóy khãi cöa xuÊt s­ nhiÖm vô # 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-27) 

function main() 
UTask_cy = GetTask(6) 
if (GetFaction() == "cuiyan") then 
		if (UTask_cy == 60*256+20) then				-- script viet hoa By http://tranhba.com ³öÊ¦ÈÎÎñ½øĞĞÖĞ
Talk(2,"","Bµ bµ , c¸i ®ã l·o b¸ nãi cho ta biÕt ch©n t­íng cña chuyÖn liÔu , ta ®em mang l¸ th­ nÇy cho ch­ëng m«n , mäi ng­êi xem hoµn còng biÕt s­ tæ ®İch khæ t©m liÔu ","S­ tû lßng cña nguyÖn , ta ®· gióp nµng hoµn thµnh , vËy còng may m¾n ! ") 
			SetTask(6,60*256+30)
elseif (UTask_cy == 60*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com  xuÊt s­ nhiÖm vô 
Talk(3,"L60_get","Ng­êi bªn ngoµi ®èi víi chóng ta thóy khãi cöa mét mùc cßn cã thµnh kiÕn , m«n h¹ ®Ö tö trong còng mét mùc cã mét lo¹i lêi ®ån ®·i , nãi bæn m«n ®İch chÕ ph¸i tæ s­ bëi v× n¨m ®ã tao ng­êi yªu di khİ , tİnh t×nh ®¹i biÕn , hËn tÉn thiªn h¹ nam tö , cho nªn quyÕt ®Şnh m«n quy , muèn cho ®Ö tö bæn m«n ®êi ®êi ®¹i ®¹i còng thèng hËn nam tö , nh÷ng thø nµy m«n quy tùa nh­ gi©y thõng , mét mùc trãi buéc mäi ng­êi , thËt ra th× sù thËt c¨n b¶n kh«ng ph¶i nh­ vËy # trong nµy ®İch nguyªn do ngo¹i nh©n kh«ng râ còng liÒn th«i , chóng ta ng­êi m×nh còng nghÜ nh­ vËy , sÏ ®Ó cho ng­êi qu¸ th­¬ng t©m .","Nh­ thÕ nµo míi cã thÓ lµm cho mäi ng­êi hiÓu ch©n t­íng cña chuyÖn ®©y ?") 
else 
Talk(1,"","Tõ nhá l­u l¹c giang hå , trong nh¸y m¾t lµ h¬n n¨m tr«i qua ") 
end 
else 
Talk(1,"","Nhí ngµy ®ã cßn «m duÉn ch­ëng m«n , b©y giê ®· lín nh­ vËy , thêi gian cùc nhanh ! ") 
end 
end; 

function L60_get() 
Say("Ch©n t­íng sù thËt cïng mét ë cÊm ®Şa dÆm ng­êi cã liªn quan , chØ dïng t×m ®­îc h¾n liÒn ch©n t­íng cña sù t×nh râ rµng liÔu ",2,"TiÕp tôc mæ /L60_get_yes","Kh«ng cÇn lo l¾ng /L60_get_no") 
end; 

function L60_get_yes() 
Talk(4,"","Th©n lµ ®Ö tö bæn m«n , cã tr¸ch nhiÖm t×m ra ch©n t­íng ?","Ra cöa h­íng ®«ng b¾c ph­¬ng h­íng ®i lµ cã thÓ ®Õn ngäc n÷ hå , cÊm ®Şa ë ngäc n÷ hå phô cËn ! ","Cã thÓ , ta ®i liÔu ! ","Kh«ng cÇn ph¶i gÊp g¸p , ng­êi tuæi trÎ , v× b¶o vÖ ng­¬i t¸nh m¹ng , ë thÊy ng­êi kia tr­íc , cÇn mét sîi t¬ m¹t , c¸i nµy ti m¹t s¾p xuÊt hiÖn b©y giê cÊm cung s¬n ®éng ." ) 
	SetTask(6,60*256+10)
AddNote("NhËn thóy khãi cöa xuÊt s­ nhiÖm vô , ®iÒu tra thóy khãi cöa cÊm ®Şa ch©n t­íng ") 
Msg2Player("NhËn thóy khãi cöa xuÊt s­ nhiÖm vô , ®iÒu tra thóy khãi cöa cÊm ®Şa ch©n t­íng ") 
end; 

function L60_get_no() 
end; 
