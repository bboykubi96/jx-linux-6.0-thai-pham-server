if (not _H_DIALOG_FESTIVAL2006_H_) then 
_H_DIALOG_FESTIVAL2006_H_ = 1; 
Include([[\script\missions\springfestival\head.lua]]); 
Include([[\script\missions\springfestival\award.lua]]); 
Include([[\script\missions\springfestival\signin.lua]]); 

-- script viet hoa By http://tranhba.com  ��i v�i ��i h�m s� ch� nh�p kh�u 
function sf06_mainentrance() 
local tab_Content = { 
" kh�ng th�nh v�n �� !/signin_temp", 
" ta �� �em �30 tu�i ng��i � �u�i �i !/sf07_getaward", 
" quan h� ��n �u�i �i �30 tu�i ng��i � ho�t ��ng /sf07_detail", 
" g�n nh�t ta qu� b�n r�n , t�m ng��i kh�c �i !/no" 
} 
Describe("Ch� c�n xu�n tr� v� <color=yellow>30 tu�i ng��i <color> c�ng t�i b�ch h�i th�n d�n . v� tr� gi�p th�n d�n gi�i quy�t c�i n�y gieo h�a , minh ch� v� l�m t�p h�p c�c v� v� l�m nh�n s� tr� gi�p th�n d�n xua �u�i <color=yellow>30 tu�i ng��i <color>, tr� gi�p b�n h� c� m�t b�nh an n�m m�i . v� b�o ��p minh ch� v� l�m cao th��ng ��ch h�nh ��ng , quan ph� d�n ra kh�i xua �u�i 30 tu�i ng��i nhi�m v� t��ng th��ng <color=yellow> <color>. � n�n nhi�m v� trung , nh� ch�i �em mu�n s� d�ng ng�y l� roi ph�o ��o c� t�i xua �u�i 30 tu�i ng��i . 30 tu�i ng��i c�ng c� th� s� d�ng ��o c� ti�n c�ng nh� ch�i . c�c v� nh�n s� c� th� t�i ��y ghi danh <color=yellow># xua �u�i 30 tu�i ng��i <color>. ng��i ngh� tham gia sao ?", getn(tab_Content), tab_Content); 
end; 

function signin_temp() 
Say("# xua �u�i 30 tu�i ng��i c�u tr� th�n d�n l� m�t cao qu� h�nh ��ng , th� hi�n li�u y�u m�n ��ng v�t tinh th�n .", 2,"Ha ha , mau d�n ta �� c� '30 tu�i ng��i ' ��ch ��a ph��ng �i ./signin","Ch� m�t ch�t , ta mu�n chu�n b� . /no"); 
end; 

-- script viet hoa By http://tranhba.com  gi�i thi�u h�m s� 
function sf07_detail() 
Describe("M�i l�n ' xua �u�i 30 tu�i ng��i ' ho�t ��ng �em � <color=yellow> 15 ph�t b�n trong c� h�nh <color>, trong �� , c� <color=yellow>5 ph�t <color> t�i chu�n b� . ghi danh sau , ng��i s� b� ��a ��n chu�n b� khu v�c , khi ho�t ��ng l�c b�t ��u , ng��i s� b� mang t�i ho�t ��ng khu v�c . <color=yellow>15 gi�y <color> ho�t ��ng b�t ��u sau , � tham gia ng��i trong , s� c� 1 ��n 2 ng��i s� h�a th�n l�m ' 30 tu�i ng��i '. nh� ch�i bi�n th�nh '30 tu�i ng��i ' c�n ph�c b�t <color=yellow> heo r�ng <color> xu�t hi�n � khu v�c b�n trong ��ch . c�n th�a l�i nh� ch�i �em mu�n d�ng <color=yellow> ph�o tr��ng <color> t�i ' xua �u�i ' 30 tu�i ng��i , ng�n tr� '30 tu�i ng��i ' b�t heo r�ng . ho�t ��ng sau khi k�t th�c , <color=yellow> nha m�n sai d�ch <color> �em c�n c� s� d�ng <color=yellow> ph�o tr��ng <color> ��ch s� l��ng t�i n�m '30 tu�i ng��i ' d�n t��ng . .", 1,"Ta bi�t ./sf06_mainentrance"); 
end; 

-- script viet hoa By http://tranhba.com  cho t��ng th��ng ch� h�m s� 
function sf07_getaward() 
local nCount = GetTask(TK_CO_COUNT_ONETIME); 
local nRank = GetTask(TK_CO_RANK); 

if (nCount == 0 or nRank == 0) then 
Say("Gi�ng nh� ng��i c�n ch�a �i ' xua �u�i 30 tu�i ng��i '. mu�n d�n t��ng , nhanh �i xu�t l�c �i ."..CO_ANIMALNAME.." ch�y �i .", 0); 
return 
end; 

if (CalcFreeItemCellCount() < 2) then 
Say("Kh�ng �� ��a ph��ng �� , xin/m�i s�a sang l�i trang b� .", 0); 
return 
end; 
SetTask(TK_CO_COUNT_ONETIME, 0); 
SetTask(TK_CO_RANK, 0); 
nRank1 = festival_award_rank(nRank); 
festival_expaward(nRank1); 
festival_goodsaward(nRank1); 
if (GetTask(TK_CO_GROUPID) > CO_SMALLMAPCOUNT) then 
Say("Ha ha , r�t t�t . ! m�i v�a ng��i t�m ���c <color=yellow>"..nCount.." c� <color>"..CO_MOUSENAME..", ��ng h�ng th� <color=yellow>"..nRank.."<color>, ��y l� ng��i ��ch t��ng th��ng , c�m �i �i !", 0) 
else 
Say("Ha ha , l�m h�o . ng��i ��nh tr�ng t�ng c�ng <color=yellow>"..nCount.." l�n <color>"..CO_ANIMALNAME..", ��ng h�ng th� <color=yellow>"..nRank.."<color>, ��y l� ng��i ��ch t��ng th��ng , c�m �i �i !", 0) 
end; 
end; 

end; -- script viet hoa By http://tranhba.com  end of _H_DIALOG_FESTIVAL2006_H_
