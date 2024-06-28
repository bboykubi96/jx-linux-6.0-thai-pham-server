-- script viet hoa By http://tranhba.com  Ngò ®éc gi¸o b¸n binh khİ ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld37 = GetByte(GetTask(37),2) 
if (GetFaction() == "wudu") or (Uworld37 == 127) then 
Say("Bæn ph¸i vèn lµ kh«ng cÇn sinh mÖnh lùc thñ th¾ng , bëi v× khi biÕt vËn dông lo¹i vò khİ nµy liÒn tuyÖt thÕ v« song ", 2,"Giao dŞch /yes","Kh«ng giao dŞch /no") 
else 
Talk(1,"","Gi¸o chñ cã lÖnh : m«n ph¸i binh khİ kh«ng thÓ b¸n cho ngo¹i nh©n ") 
end 
end; 

function yes() 
Sale(78) 
end; 

function no() 
end; 
