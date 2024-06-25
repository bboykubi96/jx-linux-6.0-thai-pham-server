-- script viet hoa By http://tranhba.com  hai hå khu nam nh¹c trÊn ngµy nhÉn gi¸o ®å ®èi tho¹i 

function main(sel) 
Talk(2, "select","Ngµy nhÉn gi¸o ®å # bæn gi¸o tin phông ®¹i kim quèc ®İch n­íc d¹y t¸t m·n d¹y , gi¸o chñ chİnh lµ quèc s­ hoµn nhan hoµnh liÖt , h¾n tİnh t×nh cuång ng¹o , m­u trİ h¬n ng­êi , ngay c¶ ®¹i kim hoµng ®Õ ®èi víi h¾n còng lÔ nh­îng ba ph©n . ","Bæn gi¸o v« sè cao thñ , chiªu mé liÔu nhãm lín kim tèng hai n­íc ®İch cao thñ , cã thÓ nãi ®Çm rång hang hæ . "); 
end; 

function select() 
Say("Ngµy nhÉn gi¸o ®å # muèn gia nhËp bæn gi¸o sao ? ", 2,"Gia nhËp /yes","Kh«ng gia nhËp /no"); 
end; 


function yes() 
if (GetSeries() ~= 3) then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i kh«ng thuéc vÒ háa hÖ 
Say("Ngµy nhÉn gi¸o ®å # ng­¬i kh«ng thuéc vÒ háa hÖ , kh«ng thÓ gia nhËp bæn m«n . ", 0) 
else 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  nÕu nh­ nhµ ch¬i ®· thuéc vÒ háa hÖ ®İch mét m«n ph¸i 
Say("Ngµy nhÉn gi¸o ®å # chØ cã kh«ng thuéc vÒ bÊt kú m«n ph¸i nµo ng­êi cña , míi cã thÓ gia nhËp bæn gi¸o . ", 0) 
else 
if (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com  cÊp bËc ®¹t tíi cÊp m­êi 
SetFaction("Ngµy nhÉn d¹y ") -- script viet hoa By http://tranhba.com  nhµ ch¬i gia nhËp ngµy nhÉn d¹y 
-- script viet hoa By http://tranhba.com NewWorld(45, x, y) -- script viet hoa By http://tranhba.com  ®em nhµ ch¬i truyÒn tèng ®Õn m«n ph¸i nhËp khÈu 
-- script viet hoa By http://tranhba.com SetFightState(1) -- script viet hoa By http://tranhba.com  nhµ ch¬i chuyÓn ®æi thµnh tr¹ng th¸i chiÕn ®Êu 
-- script viet hoa By http://tranhba.com SetRevPos(ID) -- script viet hoa By http://tranhba.com  thiÕt trİ sèng l¹i ®iÓm 
-- script viet hoa By http://tranhba.com SetTask(4, 10) 
Say("Hoan nghªnh ng­¬i gia nhËp ngµy nhÉn d¹y #",0) 
else 
Say("Ngµy nhÉn gi¸o ®å # bæn gi¸o ®Ö tö ®Òu lµ tinh anh h¹ng ng­êi , gièng nh­ ng­¬i vËy ®İch tay míi , bæn gi¸o ph¶i kh«ng thu ®İch . ", 0) 
end 
end 
end 
end; 

function no() 
end; 
