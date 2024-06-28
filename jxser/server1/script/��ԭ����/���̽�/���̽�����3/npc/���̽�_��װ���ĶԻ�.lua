-- script viet hoa By http://tranhba.com  Trung Nguyªn b¾c khu ngµy nhÉn d¹y b¸n trang bŞ ®İch ®Ö tö ®èi tho¹i 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-21) gia nhËp b¸n ®¹o cô chØ b¸n cho bæn bang 

function main(sel) 
Uworld30 = GetByte(GetTask(30),1) 
if (GetFaction() == "tianren") or (Uworld30 == 127) then 
Say("Vò ®Şch # nh÷ng thø nµy ®Òu lµ trong cung ®İch bän/c¸c cung n÷ tù tay may ®İch , nh×n mét chót , thñ c«ng nhiÒu tinh tÕ ——", 2,"Giao dŞch /yes","Kh«ng giao dŞch /no") 
else 
Talk(1,"","Gi¸o chñ cã lÖnh , bæn gi¸o trang bŞ chØ cã thÓ b¸n cho trung thµnh ®Ö tö .") 
end 
end; 

function yes() 
Sale(61) 
end; 

function no() 
end; 
