-- Tham cuu ba lang huyen edit by mcteam
-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n ng��i �i ���ng 10 tr�m ch�n ��i tho�i 
-- script viet hoa By http://tranhba.com  ba l�ng huy�n tay m�i nhi�m v� # a ph��ng ��ch g� trang 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-10) 
-- script viet hoa By http://tranhba.com  ch� � # Vi�t Nam ch� c� m�t lo�i nguy�n b�o , t��ng ���ng v�i ch�ng ta ng�n nguy�n b�o , t�n g�i kim nguy�n b�o , ng�n v�n ch� � , bi�n s� d�ng 343 
Include("\\script\\global\\g7vn\\g7configall.lua")

function main()

dofile("script/������/������/npc/������_·��10���˶Ի�.lua");

local tab_Content = {
	"Ta mu�n m� r��ng 1 gi� 30xu/MoRuong1",
	"Ta mu�n m� r��ng 2 gi� 50xu/MoRuong2",
	"Ta mu�n m� r��ng 3 gi� 100xu/MoRuong3",	
	
	"Nh�n ti�n gh� qua th�i/no"
	}
Say("<color=pink>Th�m C�u:<color>\nTa chuy�n m� r�ng t�t c� c�c lo�i r��ng h�nh trang tr�n ng��i ch�ng qua ��i hi�p c� mu�n tr�i nghi�m th�?", getn(tab_Content), tab_Content);       
end


function MoRuong1()
if CheckStoreBoxState(1) == 1 then
Talk(1, "", "Ng��i �� m� r��ng 1 r�i m� h�y mau m� r��ng 2.")
return
end
local nSilverCount = CalcEquiproomItemCount(4,417, 1, 1) ;
if(nSilverCount < 30) then -- gia xu
Talk(1,"","Mu�n m� r�ng r��ng 1 ��i hi�p c�n t�m cho ta 30xu..") 
return
end
ConsumeEquiproomItem(30,4,417,1,1)
OpenStoreBox(1)
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan>m� th�nh c�ng r��ng h�nh trang th� 1.")
SaveNow()
end


function MoRuong2()
if CheckStoreBoxState(2) == 1 then
Talk(1, "", "Ng��i �� m� r��ng 2 r�i m� c�n mu�n m� th�m �.")
return
end
local nSilverCount = CalcEquiproomItemCount(4,417, 1, 1) ;
if(nSilverCount < 50) then -- gia xu
Talk(1,"","Mu�n m� r�ng r��ng 2 ��i hi�p c�n t�m cho ta 50xu.L�u � tr��c khi m� r��ng 2 ��i hi�p c�n ph�i m� r��ng 1 tr��c..") 
return
end
if CheckStoreBoxState(1) == 1 then
ConsumeEquiproomItem(50,4,417,1,1)
OpenStoreBox(2)
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan>m� th�nh c�ng r��ng h�nh trang th� 2.")
SaveNow()
		else
Talk(1, "", "��i hi�p ch�a t�ng m� r��ng 1 sao l�i ��i m� r��ng 2.Xin h�y m� theo th� t�..")

	end
end


function MoRuong3()
if CheckStoreBoxState(3) == 1 then
Talk(1, "", "Ng��i �� m� r��ng 3 r�i m� c�n mu�n m� th�m �.")
return
end
local nSilverCount = CalcEquiproomItemCount(4,417, 1, 1) ;
if(nSilverCount < 100) then -- gia xu
Talk(1,"","Mu�n m� r�ng r��ng 3 ��i hi�p c�n t�m cho ta 100xu.L�u � tr��c khi m� r��ng 2 ��i hi�p c�n ph�i m� r��ng 2 tr��c..") 
return
end
if CheckStoreBoxState(1) == 1 and CheckStoreBoxState(2) == 1 then
ConsumeEquiproomItem(100,4,417,1,1)
OpenStoreBox(3)
Msg2SubWorld("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color=cyan>m� th�nh c�ng r��ng h�nh trang th� 3.")
SaveNow()
		else
Talk(1, "", "��i hi�p ch�a t�ng m� r��ng 2 sao l�i ��i m� r��ng 3.Xin h�y m� theo th� t�..")

	end
end