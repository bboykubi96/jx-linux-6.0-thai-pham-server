-- script viet hoa By http://tranhba.com  t�y s�n th�n b�t t�nh nh�n s� ��i tho�i ch�n v�n 
-- script viet hoa By http://tranhba.com  l� h�n 2005-01-25 

Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\xishancun\\xishancun_head.lua")

COUNT_SHENMI_JUANZHOU = 100; 

function main() 
-- script viet hoa By http://tranhba.com  Uworld1064 = nt_getTask(1064) -- script viet hoa By http://tranhba.com  t�y s�n th�n t�y s�n t� nhi�m v� 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if ( GetLevel() >= 100) then 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  if ( Uworld1064 == 0 ) then -- script viet hoa By http://tranhba.com  ti�p nh�n v� tr��c ��i tho�i 
-- script viet hoa By http://tranhba.com  Describe(DescLink_BuXingRenShi.."<#># ���ng h� l� , �n ngon ���ng h� l� n�a/r�i # ti�n nghi l�i �n ngon ���ng h� l� n�a/r�i , v� kh�ch quan kia , xem ng��i r�t l� m�t , kh�ng ph�i ch�ng ta t�y s�n th�n ng��i c�a �i # t�i chu�i ���ng h� l� �i ? <enter>", 
-- script viet hoa By http://tranhba.com  2,"H��ng h�n d� x�t t�y s�n t� ��ch b� m�t /task002","C�n l� t�i chu�i ���ng h� l� �i /task001"); 
-- script viet hoa By http://tranhba.com  elseif ( Uworld1064 == 1 ) then -- script viet hoa By http://tranhba.com  ti�p nh�n v� sau ��i tho�i 
-- script viet hoa By http://tranhba.com  Describe(DescLink_BuXingRenShi..format("<#>#%d c� th�n b� quy�n tr�c ng��i �� thu t�p �� sao ? <enter>", COUNT_SHENMI_JUANZHOU), 
-- script viet hoa By http://tranhba.com  2,"�em th�n b� quy�n tr�c giao cho b�t t�nh nh�n s� /task004","Ta c�n l� qu� tr�n t� l�i t�i t�m ng��i /no") 
-- script viet hoa By http://tranhba.com  elseif ( Uworld1064 >= 2 ) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh nhi�m v� 
-- script viet hoa By http://tranhba.com  Say("B�t t�nh nh�n s� # ng��i �i t�y s�n t� sau , nh�t ��nh ph�i kh�p n�i �� � nha . ",0) 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  else 
Describe(DescLink_BuXingRenShi.."<#>: ���ng h� l� ti�n nghi b�n ! v� kh�ch quan kia nh�n m�t sinh , kh�ng ph�i ch�ng ta t�y s�n th�n ng��i c�a �i # t�i chu�i ���ng h� l� �i #<enter>", 
1,"Mua ���ng h� l� /task001"); 
-- script viet hoa By http://tranhba.com  end 

end; 

function task001() 
local name = GetName() 
Talk(1,"",name..": c�i n�y ���ng h� l� �n ngon th�t !") 
end; 
function task002() 
local name = GetName() 
Describe(DescLink_BuXingRenShi.."<#>: ng��i t�m ��n ta c� chuy�n g� kh�ng <enter>" 
..name..format("<#>: ta nghe n�i chung quanh ��y c� ng��i bi�t t�y s�n ��o ��ch v� tr� . c� th� ch� cho ta �i vi s�n ��o ��ch ph��ng ph�p sao <enter> b�t t�nh nh�n s� # c�i n�y h� c� th� l� trong th�n r�t nhi�u ng��i c�ng bi�t ��ch , xem ra chuy�n n�y �� truy�n ra giang h� . ��y l� m�y tr�m n�m tr��c chuy�n , ��i hi�p mu�n thu t�p �� % th�n b� m�t �� cho ta ta �o�n ngh� ��n kh�i <enter>", COUNT_SHENMI_JUANZHOU), 
2,"T�t , ta l�p t�c �i t�m /task003","Ta kh�ng c� h�ng th� /no") 
end; 

function task003() 
Uworld1064 = nt_getTask(1064) 
nt_setTask(1064,1) 
end; 

-- script viet hoa By http://tranhba.com  th�n b� quy�n tr�c giao ph� gi�i m�t 
function task004() 
GiveItemUI("��ng m�t �� ti�p gi�p ", format("B�t t�nh nh�n s� # ng��i �� %d th�n b� m�t �� t�i h� m�t ��ch v� �ch c�ch . ch� � # n�u nh� �� h�n v�i ho�c l� �t h�n so v�i %d th�n b� m�t �� ta �em kh�ng ch�p nh�n .", COUNT_SHENMI_JUANZHOU,COUNT_SHENMI_JUANZHOU), "juanzhou", "no" ); 
end; 

-- script viet hoa By http://tranhba.com  x�c ��nh th�n b� quy�n tr�c s� l��ng h�m s� 
function juanzhou(ncount) 
Uworld1064 = nt_getTask(1064) 
local scrollarray = {} 
local scrollcount = 0 
local scrollidx = {} 
local y = 0 
for i=1, ncount do 
local nItemIdx = GetGiveItemUnit(i); 
itemgenre, detailtype, parttype = GetItemProp(nItemIdx) 
if (itemgenre == 6 and detailtype == 1 and parttype ==196) then 
			y = y + 1
scrollidx[y] = nItemIdx; 
scrollarray[i] = GetItemStackCount(nItemIdx) 
			scrollcount = scrollcount + scrollarray[i]
end 
end 
if (y ~= ncount) then 
Say("Th�n b� m�t �� kh�ng �� , ng��i n�a ki�m tra xem m�t ch�t !", 2,"A # nguy�n lai l� �� sai l�m r�i , ta l�n n�a �� ./task004","Ta ki�m tra nh�n th� n�o /no") 
return 
end 
if (scrollcount > COUNT_SHENMI_JUANZHOU) then 
Say(format("Ta ch� c�n %d th�n b� m�t �� , ng��i kh�ng c�n cho ta nh� v�y .", COUNT_SHENMI_JUANZHOU), 2,"Nga , nguy�n lai l� �� sai l�m r�i , ta th� l�i l�n n�a ./task004","Ta ki�m tra xem m�t ch�t l� th� n�o /no") 
return 
end 
if (scrollcount < COUNT_SHENMI_JUANZHOU) then 
Say("Ng��i cho ta th�n b� m�t �� kh�ng �� , n�a ki�m tra xem m�t ch�t !", 2,"Nga , nguy�n lai l� �� sai l�m r�i , ta th� l�i l�n n�a ./task004","Ta ki�m tra xem m�t ch�t l� th� n�o /no") 
return 
end 
if (scrollcount == COUNT_SHENMI_JUANZHOU) then 
for i = 1, y do 
RemoveItemByIndex(scrollidx[i]) 
end 
nt_setTask(1064,2) 
task005() 
end; 
end; 

function task005() 
local name = GetName() 
Describe(DescLink_BuXingRenShi..format("<#>: th�t kh�ng ngh� t�i ng��i �� g�p nh�t %d th�n b� m�t �� , ta m�t m�c �inh ninh ng��i c�m gi�c kh� kh�n �� l�i kh� . t�y s�n ��o h�t s�c nguy hi�m , ng��i kh�ng �i t��ng ��i kh� <enter>",COUNT_SHENMI_JUANZHOU) 
..name..format("<#>: kh�ng mu�n lo l�ng cho ta , ta �� t�m ���c %d th�n b� m�t �� li�u , ta ���ng ���ng ��i tr��ng phu l�m sao s� s� h�i ch�nh l� m�t vi s�n ��o . ng��i ch� c�n n�i cho ta bi�t th� n�o �i .<enter> b�t t�nh nh�n s� # ng��i c� th� � th�n ch�ng ta ��ch t�y s�n t�m ti�u nh� (214, 195) sau �� n�i cho h�n bi�t l� ta cho ng��i bi�t �i , h�n th� s� bi�t l�m g� li�u . nh� mu�n ng�n v�n c�n th�n <enter>",COUNT_SHENMI_JUANZHOU), 
1,"K�t th�c ��i tho�i /no") 
end; 

function no() 
end; 
