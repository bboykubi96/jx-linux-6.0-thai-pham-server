-- script viet hoa By http://tranhba.com  ti�n trang ch�c n�ng .lua b�n bao ti�n l� x� ��ch ti�u chu�n v�n ki�n 
-- script viet hoa By http://tranhba.com  By Dan_Deng(2003-12-31) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2004-01-06) �em ng�n phi�u ch�c n�ng d�i ra ��n tr��c khi an ti�n trang c� m�t 
Include("\\script\\global\\head_qianzhuang.lua") -- script viet hoa By http://tranhba.com  Ǯׯͷ�ļ�
IncludeForRegionVer("\\script\\global\\", "gamebank_proc.lua")

function main_proc() 
if (GetSex() == 0) then 
Say("Ti�n Trang l�o b�n # ��ng r�i v� thi�u hi�p kia mu�n c�i g� ph�c v� ? ",3,"N�i n�y c� kh�ng c� bao ti�n l� x� ? /buy_sele","Ta mu�n ��i nguy�n b�o th�nh ��ng ti�n /change_ingot_to_coin","T�y ti�n �i d�o m�t ch�t /no") 
else 
Say("Ti�n Trang l�o b�n # ��ng r�i v� c� n��ng n�y mu�n c�i g� ph�c v� ? ",3,"N�i n�y c� kh�ng c� bao ti�n l� x� ? /buy_sele","Ta mu�n ��i nguy�n b�o th�nh ��ng ti�n /change_ingot_to_coin","T�y ti�n �i d�o m�t ch�t /no") 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  mua bao ti�n l� x� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function buy_sele() 
-- script viet hoa By http://tranhba.com Say("Ti�n Trang l�o b�n # ta ch� n�y ��ch bao ti�n l� x� ph� l� ung vinh , l� tr�ng t�nh n�ng h�n , nh�t l� ��a l� th��ng ph�m , ti�u h�ng bao 10000 hai , ��i bao ti�n l� x� 100000 hai , c�ng v�i <color=green> nh� � bao ti�n l� x� c�ng h� tu�i bao ti�n l� x� . \n nh� � bao ti�n l� x� <color> l� do kh�ch quan ch�nh ng�i quy�t ��nh t�i bao nhi�u ti�n ��ch bao ti�n l� x� . \n<color=green> h� tu�i bao ti�n l� x� <color> l� c� th� t�i <color=yellow> ��ng ti�n <color> ��ch bao ti�n l� x� , d� nhi�n bao ti�n l� x� trung ��ng ti�n s� l��ng c�n l� t� ng�i ��nh . ",5,"Mu�n c� ti�u h�ng bao �i /buy1","T�i c� ��i bao ti�n l� x� /buy2","Mu�n nh� � bao ti�n l� x� /ruyi_hongbao","Mu�n h� tu�i bao ti�n l� x� /hesui_hongbao","Kh�ng c�n /no") 
Say("Ti�n Trang l�o b�n # h�o a h�o a , ta ch� n�y ��ch bao ti�n l� x� ph� l� ung vinh , l� tr�ng t�nh n�ng h�n , nh�t l� ��a l� th��ng ph�m , ti�u h�ng bao 10000 hai , ��i bao ti�n l� x� 100000 hai , kh�ng bi�t kh�ch quan ng�i mu�n lo�i n�o ? ",3,"Mu�n c� ti�u h�ng bao �i /buy1","T�i c� ��i bao ti�n l� x� /buy2","Kh�ng c�n /no") 
end 

function buy1() 
if (GetCash() >= 10000) then 
Pay(10000) 
AddItem(6,1,14,1,0,0,0) 
Talk(1,"","Ti�n Trang l�o b�n # ti�u h�ng bao nh�t c� , ng�i c�t xong li�u #") 
else 
Talk(1,"","Ti�n Trang l�o b�n # ti�n c�a ng�i d��ng nh� kh�ng qu� �� a . ") 
end 
end 

function buy2() 
if (GetCash() >= 100000) then 
Pay(100000) 
AddItem(6,1,13,1,0,0,0) 
Talk(1,"","Ti�n Trang l�o b�n # ��i bao ti�n l� x� nh�t c� , ng�i c�t xong li�u #") 
else 
Talk(1,"","Ti�n Trang l�o b�n # ti�n c�a ng�i d��ng nh� kh�ng qu� �� a . ") 
end 
end 

function no() 
end 

function hesui_hongbao() -- script viet hoa By http://tranhba.com  t� ��nh ngh�a ��ng ti�n 
AskClientForNumber("Package_Hesui", 1, 100,"Xin/m�i ��a v�o ��ng ti�n mai ��m :"); 
end 
function Package_Hesui(nMoney) 
if (CalcEquiproomItemCount(4, 417, 1, 1) < nMoney) then 
Talk(1,"","Ti�n Trang l�o b�n # ng�i mang ��ch ��ng ti�n d��ng nh� kh�ng �� "..nMoney.." mai nga . ") 
else 
ConsumeEquiproomItem(nMoney, 4, 417, 1, -1) 
local nItem = AddItem(6,1,1052,1,0,0,0) 
SetSpecItemParam(nItem, 1, nMoney) 
SyncItem(nItem) 
Talk(1,"","Ti�n Trang l�o b�n # h� tu�i bao ti�n l� x� nh�t c� , ng�i c�t xong li�u #") 
end 
end 


function ruyi_hongbao() -- script viet hoa By http://tranhba.com  t� ��nh ngh�a kim ti�n 
AskClientForNumber("Package_Ruyi", 1, 10000000,"Xin/m�i ��a v�o bao ti�n l� x� s� ti�n :"); 
end 
function Package_Ruyi(nMoney) 
if (GetCash() < nMoney) then 
Talk(1,"","Ti�n Trang l�o b�n # ti�n c�a ng�i d��ng nh� kh�ng �� "..nMoney.." hai nga . ") 
else 
Pay(nMoney) 
local nItem = AddItem(6,1,1051,1,0,0,0) 
SetSpecItemParam(nItem, 1, nMoney) 
local nM1 = floor(nMoney / 1000000) 
local nM2 = floor(mod(nMoney, 1000000) / 1000) 
local nM3 = mod(nMoney, 1000) 
SetSpecItemParam(nItem, 2, nM1) 
SetSpecItemParam(nItem, 3, nM2) 
SetSpecItemParam(nItem, 4, nM3) 
SyncItem(nItem) 
Talk(1,"","Ti�n Trang l�o b�n # nh� � bao ti�n l� x� nh�t c� , ng�i c�t xong li�u #") 
end 
end
