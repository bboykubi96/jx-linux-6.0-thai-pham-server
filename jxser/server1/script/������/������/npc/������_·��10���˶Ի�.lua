-- Tham cuu ba lang huyen edit by mcteam
-- script viet hoa By http://tranhba.com  hai hå khu ba l¨ng huyÒn ng­êi ®i ®­êng 10 trÇm chÝn ®èi tho¹i 
-- script viet hoa By http://tranhba.com  ba l¨ng huyÒn tay míi nhiÖm vô # a ph­¬ng ®Ých g¶ trang 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-10) 
-- script viet hoa By http://tranhba.com  chó ý # ViÖt Nam chØ cã mét lo¹i nguyªn b¶o , t­¬ng ®­¬ng víi chóng ta ng©n nguyªn b¶o , tªn gäi kim nguyªn b¶o , ngµn v¹n chó ý , biªn sè dïng 343 
Include("\\script\\global\\g7vn\\g7configall.lua")

function main()

dofile("script/Á½ºþÇø/°ÍÁêÏØ/npc/°ÍÁêÏØ_Â·ÈË10ÉÌÈË¶Ô»°.lua");

local tab_Content = {
	"Ta muèn më r­¬ng 1 gi¸ 30xu/MoRuong1",
	"Ta muèn më r­¬ng 2 gi¸ 50xu/MoRuong2",
	"Ta muèn më r­¬ng 3 gi¸ 100xu/MoRuong3",	
	
	"Nh©n tiÖn ghÐ qua th«i/no"
	}
Say("<color=pink>ThÈm Cöu:<color>\nTa chuyªn më réng tÊt c¶ c¸c lo¹i r­¬ng hµnh trang trªn ng­êi ch¼ng qua ®¹i hiÖp cã muèn tr¶i nghiÖm thö?", getn(tab_Content), tab_Content);       
end


function MoRuong1()
if CheckStoreBoxState(1) == 1 then
Talk(1, "", "Ng­¬i ®· më r­¬ng 1 råi mµ h·y mau më r­¬ng 2.")
return
end
local nSilverCount = CalcEquiproomItemCount(4,417, 1, 1) ;
if(nSilverCount < 30) then -- gia xu
Talk(1,"","Muèn më réng r­¬ng 1 ®¹i hiÖp cÇn t×m cho ta 30xu..") 
return
end
ConsumeEquiproomItem(30,4,417,1,1)
OpenStoreBox(1)
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan>më thµnh c«ng r­¬ng hµnh trang thø 1.")
SaveNow()
end


function MoRuong2()
if CheckStoreBoxState(2) == 1 then
Talk(1, "", "Ng­¬i ®· më r­¬ng 2 råi mµ cßn muèn më thªm µ.")
return
end
local nSilverCount = CalcEquiproomItemCount(4,417, 1, 1) ;
if(nSilverCount < 50) then -- gia xu
Talk(1,"","Muèn më réng r­¬ng 2 ®¹i hiÖp cÇn t×m cho ta 50xu.L­u ý tr­íc khi më r­¬ng 2 ®¹i hiÖp cÇn ph¶i më r­¬ng 1 tr­íc..") 
return
end
if CheckStoreBoxState(1) == 1 then
ConsumeEquiproomItem(50,4,417,1,1)
OpenStoreBox(2)
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan>më thµnh c«ng r­¬ng hµnh trang thø 2.")
SaveNow()
		else
Talk(1, "", "§¹i hiÖp ch­a tõng më r­¬ng 1 sao l¹i ®ßi më r­¬ng 2.Xin h·y më theo thø tù..")

	end
end


function MoRuong3()
if CheckStoreBoxState(3) == 1 then
Talk(1, "", "Ng­¬i ®· më r­¬ng 3 råi mµ cßn muèn më thªm µ.")
return
end
local nSilverCount = CalcEquiproomItemCount(4,417, 1, 1) ;
if(nSilverCount < 100) then -- gia xu
Talk(1,"","Muèn më réng r­¬ng 3 ®¹i hiÖp cÇn t×m cho ta 100xu.L­u ý tr­íc khi më r­¬ng 2 ®¹i hiÖp cÇn ph¶i më r­¬ng 2 tr­íc..") 
return
end
if CheckStoreBoxState(1) == 1 and CheckStoreBoxState(2) == 1 then
ConsumeEquiproomItem(100,4,417,1,1)
OpenStoreBox(3)
Msg2SubWorld("Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color=cyan>më thµnh c«ng r­¬ng hµnh trang thø 3.")
SaveNow()
		else
Talk(1, "", "§¹i hiÖp ch­a tõng më r­¬ng 2 sao l¹i ®ßi më r­¬ng 3.Xin h·y më theo thø tù..")

	end
end