-- script viet hoa By http://tranhba.com  Trung Nguyªn b¾c khu ngµy nhÉn d¹y b¸n binh khİ ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld30 = GetByte(GetTask(30),1) 
if (GetFaction() == "tianren") or (Uworld30 == 127) then 
Say("Trong th¸p h·n # nh÷ng vò khİ nµy còng lµ lín kim quèc tèt nhÊt c«ng t­îng chÕ t¹o ®İch , tuyÖt ®èi nhÊt l­u . ", 2,"Giao dŞch /yes","Kh«ng giao dŞch /no"); 
else 
Talk(1,"","Gi¸o chñ cã lÖnh , bæn gi¸o vò khİ chØ cã thÓ b¸n cho trung thµnh ®Ö tö .") 
end 
end; 

function yes() 
Sale(60) 
end; 

function no() 
end; 
