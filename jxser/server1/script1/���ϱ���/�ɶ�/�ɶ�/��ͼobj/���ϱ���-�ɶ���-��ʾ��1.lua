-- script viet hoa By http://tranhba.com  t©y nam b¾c khu thµnh ®« phñ nha m«n cöa c¸o kú bµi 1 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-02-27) lÇn n÷a thiÕt kÕ nhiÖm vô ( thµnh ®« giÕt heo rõng ) 
-- script viet hoa By http://tranhba.com  nh­ng t¸i diÔn nhiÖm vô # t¸i diÔn chu kú # thùc tÕ thêi gian 1 ngµy # 

function main(sel) 
Uworld11 = GetTask(11) 
Udate = tonumber(date("%Y%m%d")) -- script viet hoa By http://tranhba.com  cÇn chuyÓn ®æi thµnh trÞ sè míi cã thÓ trùc tiÕp tiÕn hµnh t­¬ng ®èi 
if (GetSex() == 0) then -- script viet hoa By http://tranhba.com  nam n÷ néi dung bÊt ®ång 
sexstr = " tr¸ng sÜ " 
else 
sexstr = " n÷ hiÖp " 
end 

if (Uworld11 == 0) or ((Uworld11 > 255) and (Uworld11 < Udate)) then -- script viet hoa By http://tranhba.com  cã thÓ tiÕp nhËn vô 
Say("Th«ng b¸o # gÇn nhÊt ë ngoµi thµnh cã heo rõng nhiÔu lo¹n , ph¸ h­ trang gi¸ , thËt lµ phiÒn to¸i , ®· treo gi¶i th­ëng 500 l­îng b¹c tr¾ng , t×m dòng sÜ tiªu diÖt nh÷ng thø nµy heo rõng . giÕt chÕt heo rõng ®Ých , cã thÓ tíi nha m«n dÉn t­ëng .",2,"Treo gi¶i th­ëng b¶ng /W11_get","Kh«ng cã trang gi¸ /no") 
elseif (Uworld11 <= 255) then -- script viet hoa By http://tranhba.com  nhiÖm vô tiÕn hµnh trung 
Talk(1,"","Thµnh ®« phñ nha dÞch : "..sexstr..GetName().." rÊt nhiÒu hiÖp sÜ vui lßng v× d©n trõ h¹i , cho ng­êi ta d©n mang ®Õn b×nh an , chuÈn bÞ nghªnh ®ãn chiÕn th¾ng trë vÒ tr¸ng sÜ . ") 
else -- script viet hoa By http://tranhba.com  ch­a tíi t¸i diÔn thêi gian 
Talk(1,"","Thµnh ®« phñ nha dÞch : "..sexstr..GetName().." v× d©n trõ h¹i , ng­êi nµo giÕt ®­îc 4 c¸i khu vùc ®Ých heo rõng , vèn phñ liÒn t­ëng th­ëng 500 hai , lµm khen ngîi hiÖp nghÜa ®Ých hµnh ®éng . ") 
end 
end; 

function W11_get() 
Talk(1,"","Thµnh ®« phñ nha lµm # ngµy gÇn ®©y bèn giao bÞ heo rõng quÊy rÇy , khiÕn cho trang gi¸ hñy ­¬ng tè nöa , thËt lµ ghª tëm , hiÖn treo gi¶i th­ëng b¹c tr¾ng n¨m tr¨m l­îng , t×m kiÕm cã thÓ diÖt trõ ®¸m nµy heo rõng ®Ých dòng sÜ . phµm lµ giÕt chÕt heo rõng m­êi ®Çu ng­êi , lµ ®­îc ®Õn nha m«n chç nhËn lÊy th­ëng ng©n . ") 
SetTask(11,1) 
end 

function no() 
end 
