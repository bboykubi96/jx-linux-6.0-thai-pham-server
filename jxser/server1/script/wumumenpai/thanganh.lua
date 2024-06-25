Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
---------------------------------------------
function main()
dofile("script/wumumenpai/thanganh.lua")
	if (GetTask(12) == 110*256) and GetLevel() >= 30 then
		Describe("Thang Anh: Ch�ng t�i v�a ��nh ch�n c�c ��n v� c� gi�i v� c� s� c�a ��ch, ch�ng t�i c�n �� t� c�a m�nh �i thu h�i nh�ng v�t t�, C�c h� c� gi�p ta ���c kh�ng?",2,"T�i s� �i ngay/nx3x1","Xin l�i, t�i c� vi�c kh�c/no")
	elseif GetTask(12) == 170*256 and GetLevel() >= 30 then 
		Talk(3,"nx3x2",""..GetName()..": T�t c� v�t t� �� ���c thu h�i, xin h�y ki�m tra l�i.","Thang Anh: M�i chuy�n th� n�o r�i?")	
	elseif GetTask(12) == 250*256 and GetLevel() >= 30 then 
		Talk(3,"nx3x4",""..GetName()..": C�c �� g� b� th��ng �� ���c ch�a tr�, v�n c�n r�t nhi�u �� t� b� th��ng v� y s� gi� y�u m�t ch�t.","Thang Anh: Haiz! L�o Th�n y �� l�n tu�i r�i, n�n ph�i t�m th�m ng��i m�i th�i. L�n n�y ng��i l�m t�t l�m, ��y l� ph�n th��ng d�nh cho ng��i.")	
	else
		Talk(1,"","Thang Anh: c� chuy�n t�t th� ��ng qu�n ta nh�!")	
	end
end

function nx3x1() 
SetTask(12,120*256)
Msg2Player("��n Th�c C��ng S�n (219/196),(221/186),(227/187),(226/194),(237/192),(237/196) �� thu h�i v�t t�.") 
end 

function nx3x2() 
SetTask(12,180*256)
ConsumeEquiproomItem(5,6,1,4329,-1)
Msg2Player("Giao v�t t� th�nh c�ng, ��n Nh�n ��ng S�n (90/181),(87/184),(82/187),(76/185) �� h�i thu�c.") 
end 

function nx3x4() 
SetTask(12,260*256)
SetRank(93)
AddMagic(1852)
AddMagic(1855)
Msg2Player("Ho�n th�nh nhi�m v� 30 Thang Anh.") 
end 