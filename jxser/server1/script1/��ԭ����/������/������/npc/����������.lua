-- script viet hoa By http://tranhba.com  ph¸i ThiÕu l©m b¸n binh khİ ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 
-- script viet hoa By http://tranhba.com  Update: xiaoyang(2004\4\23) gia nhËp ®µo ®­îc qu¸ng th¹ch nhiÖm vô , nh­ng t¸i diÔn thªm danh väng 

Include("\\script\\global\\repute_head.lua")

function main(sel) 
Uworld38 = GetByte(GetTask(38),2) 
Uworld131 = GetTask(131) 
if (Uworld131 == 10) and (GetItemCount(138) >= 5) and (GetItemCount(121) >= 5) and (GetItemCount(118) >=5) then 
Talk(1,"U131_prise","§¹i s­ , t¹i h¹ ®· mang vÒ c¸c lo¹i qu¸ng th¹ch , mêi xem nh×n .","C¸i nµy qu¸ng th¹ch ..... c¶m t¹ ng­¬i !") 
elseif (GetFaction() == "shaolin") or (Uworld38 == 127) then 
if (GetLevel() >= 20) and (GetReputeLevel(GetRepute()) >=4) and ((Uworld131 < 10) or ((GetGameTime() > Uworld131) and (Uworld131 > 255))) then 
Say("Vèn tù ë vµo kim quèc ph¹m vi , kho¶ng c¸ch n¬i nµy 100 dÆm thî rÌn lÊy ®­îc kim quèc ®İch ra lÖnh , kh«ng thÓ b¸n binh khİ qu¸ng th¹ch cho ThiÕu L©m . tr­íc m¾t , tù bªn trong vò khİ ®· sinh tó , nÕu nh­ kim qu©n tiÕn c«ng , sî r»ng kh«ng thÓ chèng cù . ta cÇn tõ má thiÕt , l­îng má b¹c , xİch má ®ång .",3,"§ång ı ®i thu tËp qu¸ng th¹ch . /yes1"," ë tuyÕn muèn mua mét İt binh khİ /yes","T¹i h¹ cßn cã nh÷ng chuyÖn kh¸c , lÇn sau trë l¹i . /no") 
else 
Say("ThiÕu L©m vâ c«ng næi tiÕng thiªn h¹ , nh­ng lµ , nÕu nh­ kh«ng cã vò khİ , c«ng phu g× thÕ ®Òu kh«ng h÷u dông .", 2,"Giao dŞch /yes","Kh«ng giao dŞch /no") 
end 
else 
Talk(1,"","Ch­ëng m«n cã lÖnh , bæn ph¸i vò khİ chØ b¸n cho ®ång m«n ") 
end 
end; 

function yes() 
Sale(69) 
end; 

function yes1() 
Talk(2,"","ThiÕu L©m n¾m trong tay vâ l©m sè m¹ng ®· mÊy tr¨m n¨m , t¹i h¹ nguyÖn ı toµn lùc øng phã !","PhËt tæ tõ bi , ThiÕu L©m cÇn ng­¬i trî gióp . xin gióp ta t×m tõ má thiÕt , l­îng má b¹c , xİch má ®ång , mçi lo¹i 5 khèi .") 
SetTask(131,10) 
Msg2Player("§ång ı gióp ph¸i ThiÕu l©m ®i t×m tõ má thiÕt , l­îng má b¹c , xİch má ®ång , mçi lo¹i 5 khèi . ") 
end 

function U131_prise() 
for i=1,5 do 
DelItem(138) 
DelItem(121) 
DelItem(118) 
end 
	SetTask(131,GetGameTime()+14400)
	i = GetReputeLevel(GetRepute()) + 2
AddRepute(i) 
Msg2Player("§ãng qu¸ng th¹ch cho rõng m¹t , hoµn thµnh nhiÖm vô , ng­¬i danh väng gia t¨ng "..i.." ®iÓm .") 
end 

function no() 
end; 
