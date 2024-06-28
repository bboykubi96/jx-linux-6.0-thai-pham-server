-- script viet hoa By http://tranhba.com  t©y nam nam khu §iÓm th­¬ng s¬n to th­¬ng l·ng kh¸ch chç ë 
-- script viet hoa By http://tranhba.com Trap ID# th­¬ng l·ng kh¸ch 1 

function main(sel) 
Uworld42 = GetTask(42) 
-- script viet hoa By http://tranhba.com  Msg2Player("Th­¬ng l·ng kh¸ch chç ë ") 
if (Uworld42 == 60) then 
SetTask(42,70) 
Talk(15,"U42_go","Ha ha ! ","Ha ha ha ! ","§øa bĞ ngoan , tíi n¬i nµy , gia gia câng ng­¬i ... ai nha , nÆng nÒ a #","Gia gia , ta muèn ¨n ®­êng .","Ta còng muèn .","Gia gia , bän hä cã , ta ®©y ?","Cã thÓ , ai còng cã ph©n .","Xin hái th­¬ng l·ng kh¸ch ë c¨n phßng sao ?","Bªn ngoµi lµ ng­êi nµo ?","V·n bèi b¸i kiÕn !","Ta ®ang cïng c¸c ch¸u ®ang ®ïa ®ïa bìn , kh«ng cã thêi gian tiÕp ®·i , trë vÒ ®i th«i !","Thùc kh«ng d¸m giÊu giÕm , mÊy c¸i nµy ®øa trÎ ®İch mÉu th©n còng rÊt lo l¾ng , ¨n ngñ bÊt an , xin/mêi tiÒn bèi th¶ bän hä .","Bän hä ®Òu lµ ch¸u cña ta , ng­¬i nãi c¸i g× mÑ cña bän h¾n ? tiÓu tö ng­¬i d¸m ®Õn c¸i nµy trªu ta a ? ","TiÒn bèi , kh«ng nªn cïng ta nãi giìn , tha thø mét chót !","Tha thø ? lín mËt tiÓu tö , tiÕp chiªu !") 
elseif (Uworld42 == 70) then 
Talk(1,"U42_go","TiÓu tö kh«ng biÕt sèng chÕt , cßn kh«ng mau ®i ! ") 
end 
end; 

function U42_go() 
NewWorld(231,1611,3193) 
end 
