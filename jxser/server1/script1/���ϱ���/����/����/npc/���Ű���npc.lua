-- script viet hoa By http://tranhba.com  ���ng m�n tr� gi�p NPC 

Include("\\script\\global\\map_helper.lua")
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
npc_name = "Qu# Gia" 

function main(sel) 

UTask_tm = GetTask(2) 

if (UTask_tm < 10*256) then -- script viet hoa By http://tranhba.com  kh�ng nh�n ���ng m�n nh�p m�n nhi�m v� , kh�ng/ch�a v�o ���ng m�n 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i �� thu�c v� kh�c m�t m�n ph�i 
Say("Qu�n gia # ta � ���ng m�n m�y th�p ni�n , kh�ng c� g� l� ta kh�ng bi�t , ng�i mu�n bi�t ch�t g� ? ", 3,"Hi�u r� qu� m�n /org","Hi�u r� c�c v� ���ng m�n cao th� /member","Hi�u r� n�i ��y b� c�c /config") 
return 
else 
Say("Qu�n gia # ta � ���ng m�n m�y th�p ni�n , kh�ng c� g� l� ta kh�ng bi�t , ng�i mu�n bi�t ch�t g� ? ", 4,"Hi�u r� qu� m�n /org","Hi�u r� c�c v� ���ng m�n cao th� /member","Hi�u r� n�i ��y b� c�c /config","Nh� th� n�o nh�p m�n /task1") 
return 
end 
end; 

if (UTask_tm == 70*256) then -- script viet hoa By http://tranhba.com  ���ng m�n �� xu�t s� 
Say("Qu�n gia # nguy�n lai l� tr��c kia ��ng m�n , c� chuy�n g� kh�ng ? ", 4, " l�n n�a hi�u r� ���ng m�n /org", " l�n n�a hi�u r� tr��c kia ��ng m�n /member", " l�n n�a tr� v� c� n�i ��y b� c�c /config","C�n c� c�i g� nhi�m v� c� th� l�m /task2") 
return 
end; 

Say("Qu�n gia # ta � ���ng m�n m�y th�p ni�n , kh�ng c� g� l� ta kh�ng bi�t , ng��i ngh� bi�t ch�t �t c�i g� ? ", 4,"Hi�u r� b�n m�n /org","Hi�u r� ��ng m�n /member","Hi�u r� n�i ��y b� c�c /config","Hi�u r� nhi�m v� /task3") 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function org() 
Say("Qu�n gia # mu�n bi�t ph��ng di�n n�o ? ", 4,"M�n ph�i kh�i nguy�n /o1","V� tr� ��a l� /o2","Giang h� ��a v� /o3","M�n ph�i ��c s�c /o4") 
end; 


function member() 
Say("Qu�n gia # mu�n bi�t ng��i n�o ? ", 10,"Ch��ng m�n ���ng th� /m1","Truy h�n t�u ���ng r�i r�nh /m2","Ti�u nhi�m t�u ���ng v�n /m3","Tuy�t xu�n t�u ���ng d� /m4", " �o b�o tr�ng t�u ���ng h�c /m5","���ng m�t tr�n /m6","���ng b�t nhi�m /m7","���ng thi�u /m8","���ng nh� /m9","���ng ��c /m10") 
end; 


function config() 
Say("Qu�n gia # mu�n bi�t ph��ng di�n n�o ? ", 3,"�i th�ng ch� n�o /c1","���ng gia b�o /c2","���ng gia b�o b�n ph�a /c3") 
end; 


function task1() 
Say("Qu�n gia # b�n m�n ch� l�y m�c h� �� t� , nam n� kh�ng h�n . mu�n nh�p m�n h�c ngh� , c� th� th�ng qua c�ng ba l�ng huy�n ��ch ���ng m�n �� t� ��i tho�i ho�n th�nh nh�p m�n . ") 
end; 


function task2() 
Say("Qu�n gia # ng��i �� xu�t s� , kh�ng c�n l�m ti�p b�n m�n nhi�m v� . ", 0) 
end; 


function task3() 

UTask_tm = GetTask(2) 

if (UTask_tm < 10*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"Nh�p m�n nhi�m v� /v1") 
end; 

if (UTask_tm == 10*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �� nh�p m�n , k� ti�p c� th� l�m l� #", 1,"Ma m�a ch�m nhi�m v� /v2") 
end; 

if (UTask_tm > 10*256) and (UTask_tm < 20*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"Ma m�a ch�m nhi�m v� /v2") 
end; 

if (UTask_tm == 20*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i k� ti�p c� th� l�m l� #", 1,"���ng u nhi�m v� /v3") 
end; 

if (UTask_tm > 20*256) and (UTask_tm < 30*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"���ng u nhi�m v� /v3") 
end; 

if (UTask_tm == 30*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i k� ti�p c� th� l�m l� #", 1,"H�a kh� ph� nhi�m v� /v4") 
end; 

if (UTask_tm > 30*256) and (UTask_tm < 40*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"H�a kh� ph� nhi�m v� /v4") 
end; 

if (UTask_tm == 40*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i k� ti�p c� th� l�m l� #", 1,"C�nh t� k� nhi�m v� /v5") 
end; 

if (UTask_tm > 40*256) and (UTask_tm < 50*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"C�nh t� k� nhi�m v� /v5") 
end; 

if (UTask_tm == 50*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i k� ti�p c� th� l�m l� #", 1, " �m kh� ph� nhi�m v� /v6") 
end; 

if (UTask_tm > 50*256) and (UTask_tm < 60*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1, " �m kh� ph� nhi�m v� /v6") 
end; 

if (UTask_tm == 60*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i k� ti�p c� th� l�m l� #", 1,"Xu�t s� nhi�m v� /v7") 
end; 

if (UTask_tm > 60*256) and (UTask_tm < 70*256) then 
Say("Qu�n gia # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"Xu�t s� nhi�m v� /v7") 
end; 

if (UTask_tm >= 70*256) and (UTask_tm < 80*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , c�n ho�n th�nh nh�p m�n nhi�m v� , sau khi nh�p m�n , theo th� t� ho�n th�nh 5 nhi�m v� , �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� l� c� th� xu�t s� , tr��c m�t �� #"..UTask_tm.."<#>, ti�n h�nh ��ch nhi�m v� v� :", 1,"Tr� l�i s� m�n /v8") 
end; 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function o1() 
Say("Qu�n gia # � trong m�t ng��i ngo�i , b�n m�n l� m�t th�n b� v� l�m gia t�c , l�y �m kh� c�ng h�a kh� uy ch�n thi�n h� , h�nh t�u giang h� �� ��t m�y tr�m n�m l�u . ", 4,"Bi�t /ok","V� tr� ��a l� /o2","Giang h� ��a v� /o3","M�n ph�i ��c s�c /o4") 
end; 

function o2() 
Say("Qu�n gia # b�n m�n � v�o th�c nam tr�c h�i trong , m�t ngo�i m�c d� thanh u y�n l�ng , nh�ng th�c t� l�i c� quan n�ng n� , c� t�m kh�ng th� d� ���c ng��i s� l�m cho h�n h�u kh� v� h�i #", 4,"Bi�t /ok","M�n ph�i kh�i nguy�n /o1","Giang h� ��a v� /o3","M�n ph�i ��c s�c /o4") 
end; 

function o3() 
Say("Qu�n gia # b�n m�n c�ng V�n Nam th�y kh�i c�a c�ng x�ng � v� l�m hai c�a � , l� m�t c�ng �ang c�ng t� ��ch m�n ph�i , m�n h� �m kh� # h�a kh� # y d��c # v� c�ng b�n ���ng , �� t� ng��i ng��i c�ng phu r�t cao , ng��i trong giang h� n�i b�n m�n m� bi�n s�c . ", 4,"Bi�t /ok","M�n ph�i kh�i nguy�n /o1","V� tr� ��a l� /o2","M�n ph�i ��c s�c /o4") 
end; 

function o4() 
Say("Qu�n gia # trong b�n m�n ng��i l�m vi�c qu� b� , g�p chuy�n kh�ng theo nh� l� th��ng ra b�i , t�ng cho ng��i ta m�t lo�i c�ng �ang c�ng t� # suy ngh� kh�ng ra ��ch c�m gi�c . ", 4,"Bi�t /ok","M�n ph�i kh�i nguy�n /o1","V� tr� ��a l� /o2","Giang h� ��a v� /o3") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function m1() 
Say("V� tr� #<color=blue> ti�p kh�ch ��i s�nh <color> t�a �� #<color=blue>202,199<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> t�m cao kh� ng�o , v� ta ��c t�n . m�c d� t�nh t�nh qu�i ph�ch , h�t s�c c� ch�p , nh�ng l� l�i c� c� th�i s�n b�ng vu tr��c m� m�t kh�ng ��i s�c ��ch kh� �� . ", 10,"Bi�t /ok","Truy h�n t�u ���ng r�i r�nh /m2","Ti�u nhi�m t�u ���ng v�n /m3","Tuy�t xu�n t�u ���ng d� /m4", " �o b�o tr�ng t�u ���ng h�c /m5","���ng m�t tr�n /m6","���ng b�t nhi�m /m7","���ng thi�u /m8","���ng nh� /m9","���ng ��c /m10") 
end; 

function m2() 
Say("V� tr� #<color=blue> �m kh� ph�ng <color> t�a �� #<color=blue>199,200<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> �m kh� ph�ng tr��ng l�o , ch� luy�n �m kh� k� thu�t cao tuy�t , kh�ng th� t��ng t��ng n�i , v� v�y h�t s�c ki�u ng�o . t�nh t�nh th�m tr�m # h� gi�n kh�ng h�nh vu s�c . ", 10,"Bi�t /ok","Ch��ng m�n ���ng th� /m1","Ti�u nhi�m t�u ���ng v�n /m3","Tuy�t xu�n t�u ���ng d� /m4", " �o b�o tr�ng t�u ���ng h�c /m5","���ng m�t tr�n /m6","���ng b�t nhi�m /m7","���ng thi�u /m8","���ng nh� /m9","���ng ��c /m10") 
end; 

function m3() 
Say("V� tr� #<color=blue> h�a kh� ph�ng <color> t�a �� #<color=blue>200,200<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> h�a kh� ph�ng tr��ng l�o , ch� t�o h�a kh� uy l�c v� c�ng m�nh , l�m ng��i trong v� l�m nghe ti�ng t�ng ��m . t�nh t�nh b�c l�a , nh�ng l� l�i kh�ng m�t x�ch t� l�ng , sau b�i v� con trai ch�t th�m , t�nh t�nh ��i bi�n . ", 10,"Bi�t /ok","Ch��ng m�n ���ng th� /m1","Truy h�n t�u ���ng r�i r�nh /m2","Tuy�t xu�n t�u ���ng d� /m4", " �o b�o tr�ng t�u ���ng h�c /m5","���ng m�t tr�n /m6","���ng b�t nhi�m /m7","���ng thi�u /m8","���ng nh� /m9","���ng ��c /m10") 
end; 

function m4() 
Say("V� tr� #<color=blue> y d��c ph�ng <color> t�a �� #<color=blue>200,200<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> y d��c ph�ng tr��ng l�o , tinh v�i y thu�t # ��c thu�t . l�m ng��i t�nh t�nh tr�ch t�ch # l�i r�t c� ch�p . ", 10,"Bi�t /ok","Ch��ng m�n ���ng th� /m1","Truy h�n t�u ���ng r�i r�nh /m2","Ti�u nhi�m t�u ���ng v�n /m3", " �o b�o tr�ng t�u ���ng h�c /m5","���ng m�t tr�n /m6","���ng b�t nhi�m /m7","���ng thi�u /m8","���ng nh� /m9","���ng ��c /m10") 
end; 

function m5() 
Say("V� tr� #<color=blue> v� c�ng ph�ng <color> t�a �� #<color=blue>200,200<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> v� c�ng ph�ng tr��ng l�o , m�t v� nho nh� �n h�a ��ch tr��ng b�i , m�c d� x�p h�ng ���ng m�n T� l�o chi m�t , nh�ng l� t�ng tin t��ng ���ng m�n ��ch v� c�ng c� m�t ng�y s� c�ng �m kh� m�t d�ng n�i ti�ng giang h� . ", 10,"Bi�t /ok","Ch��ng m�n ���ng th� /m1","Truy h�n t�u ���ng r�i r�nh /m2","Ti�u nhi�m t�u ���ng v�n /m3","Tuy�t xu�n t�u ���ng d� /m4","���ng m�t tr�n /m6","���ng b�t nhi�m /m7","���ng thi�u /m8","���ng nh� /m9","���ng ��c /m10") 
end; 

function m6() 
Say("V� tr� #<color=blue> ngh� s� ��i th�nh <color> t�a �� #<color=blue>199,200<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> ���ng th� con trai l�n , th�nh th�c ch�ng ch�c , m�n h�c nhi�u t� , ng�n ng� kh�ng nhi�u l�m , trong �nh m�t t�ng h�m h�u lau m�t c�i th�n s�c �u bu�n . ", 10,"Bi�t /ok","Ch��ng m�n ���ng th� /m1","Truy h�n t�u ���ng r�i r�nh /m2","Ti�u nhi�m t�u ���ng v�n /m3","Tuy�t xu�n t�u ���ng d� /m4", " �o b�o tr�ng t�u ���ng h�c /m5","���ng b�t nhi�m /m7","���ng thi�u /m8","���ng nh� /m9","���ng ��c /m10") 
end; 

function m7() 
Say("V� tr� #<color=blue> gi� t� th�nh <color> t�a �� #<color=blue>199,199<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> ���ng th� con th� , t�nh t�nh h�o ph�ng , t�m ��a thu�n l��ng . ", 10,"Bi�t /ok","Ch��ng m�n ���ng th� /m1","Truy h�n t�u ���ng r�i r�nh /m2","Ti�u nhi�m t�u ���ng v�n /m3","Tuy�t xu�n t�u ���ng d� /m4", " �o b�o tr�ng t�u ���ng h�c /m5","���ng m�t tr�n /m6","���ng thi�u /m8","���ng nh� /m9","���ng ��c /m10") 
end; 

function m8() 
Say("V� tr� #<color=blue> qu�ng tr��ng <color> t�a �� #<color=blue>508,323<color> t�c d�ng #<color=blue> binh kh� giao d�ch <color>", 10,"Bi�t /ok","Ch��ng m�n ���ng th� /m1","Truy h�n t�u ���ng r�i r�nh /m2","Ti�u nhi�m t�u ���ng v�n /m3","Tuy�t xu�n t�u ���ng d� /m4", " �o b�o tr�ng t�u ���ng h�c /m5","���ng m�t tr�n /m6","���ng b�t nhi�m /m7","���ng nh� /m9","���ng ��c /m10") 
end; 

function m9() 
Say("V� tr� #<color=blue> qu�ng tr��ng <color> t�a �� #<color=blue>506,322<color> t�c d�ng #<color=blue> trang b� giao d�ch <color>", 10,"Bi�t /ok","Ch��ng m�n ���ng th� /m1","Truy h�n t�u ���ng r�i r�nh /m2","Ti�u nhi�m t�u ���ng v�n /m3","Tuy�t xu�n t�u ���ng d� /m4", " �o b�o tr�ng t�u ���ng h�c /m5","���ng m�t tr�n /m6","���ng b�t nhi�m /m7","���ng thi�u /m8","���ng ��c /m10") 
end; 

function m10() 
Say("V� tr� #<color=blue> qu�ng tr��ng <color> t�a �� #<color=blue>504,322<color> t�c d�ng #<color=blue> thu�c men giao d�ch <color>", 10,"Bi�t /ok","Ch��ng m�n ���ng th� /m1","Truy h�n t�u ���ng r�i r�nh /m2","Ti�u nhi�m t�u ���ng v�n /m3","Tuy�t xu�n t�u ���ng d� /m4", " �o b�o tr�ng t�u ���ng h�c /m5","���ng m�t tr�n /m6","���ng b�t nhi�m /m7","���ng thi�u /m8","���ng nh� /m9") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function c1() 
Say("Qu�n gia # ph�a nam c� m�t ��u ���ng , �i th�ng th�nh �� . ", 3,"Bi�t /ok","���ng gia b�o /c2","���ng gia b�o b�n ph�a /c3") 
end; 

function c2() 
Say("Qu�n gia # trung tr�c tuy�n # t� nam t�i b�c theo th� t� l� ti�p kh�ch ��i s�nh # ch�nh ph�ng # gi� t� th�nh , c� th� ti�n v�o . <enter> ph�a ��ng # t� nam t�i b�c theo th� t� l� h�a kh� ph�ng # y d��c ph�ng , c� th� ti�n v�o . <enter> ph�a t�y # c� ph�ng ngh� s� # �m kh� ph�ng # v� c�ng ph�ng ch� ki�n tr�c , c� th� ti�n v�o . ", 3,"Bi�t /ok","�i th�ng ch� n�o /c1","���ng gia b�o b�n ph�a /c3") 
end; 

function c3() 
Say("Qu�n gia # c�a tr��c # c�a nam # �i th�ng tr�c h�i ba quan . <enter> ��ng m�n �i th�ng tr�c ti ��ng . <enter> T�y M�n �i th�ng ph� th�y h� . <enter> c�a sau # b�c m�n # �i th�ng kh�ng l�ng d� n�o c�c . ", 3,"Bi�t /ok","�i th�ng ch� n�o /c1","���ng gia b�o /c2") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function v1() 
Talk(6, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i c� th� gia nh�p ���ng m�n , tr� th�nh <color=blue> t�p d�ch <color> , h�c ���c v� c�ng <color=blue> ph�ch l�ch ��n <color> . <enter> b��c ��u ti�n # � <color=blue> tr�c h�i ba nh�t v�o mi�ng <color> g�p ph�i m�t <color=blue> ���ng m�n trang �inh #453,358#<color> , nh�n ���c nhi�m v� , x�ng tr�c h�i ba quan . ","B��c th� hai # � c�a th� nh�t trong ��nh b�i <color=blue> ��i m� h�u <color> , l�y ���c <color=red> m�u xanh tr�c tr��ng <color> . ","B��c th� ba # � c�a th� hai trong tr� l�i <color=blue> ���ng m�n trang �inh #468,350#<color> li�n quan t�i c�u cung �� ��ch v�n �� , l�y ���c <color=red> m�u tr�ng tr�c tr��ng <color> . ��nh b�i c�a th� hai d�m <color=blue> ��i m� h�u # ��i d� h�u <color> ph�i nh�n ���c c�u tr� l�i . ","B��c th� t� # � c�a th� ba trong tr� l�i <color=blue> ���ng m�n trang �inh #473,343#<color> li�n quan t�i b�t qu�i ��ch ��i v�n �� , l�y ���c <color=red> m�u t�m tr�c tr��ng <color> . ��nh b�i c�a th� ba d�m <color=blue> ��i m� h�u # ��i d� h�u # ��i h�c l� h�u <color> ph�i nh�n ���c c�u tr� l�i . ","Th� n�m b��c # � <color=blue> tr�c h�i ba quan xu�t kh�u <color> , �em ba chu�i tr�c tr��ng giao cho <color=blue> ���ng m�n trang �inh #479,339#<color> , nhi�m v� ho�n th�nh . ") 
end; 


function v2() 
Talk(7, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> trang �inh <color> , h�c ���c v� c�ng <color=blue> ���ng m�n �m kh� # ���ng m�n �ao ph�p <color> . <enter> b��c ��u ti�n # � <color=blue> v� c�ng ph�ng <color> g�p ph�i <color=blue> ���ng h�c <color> , nh�n ���c nhi�m v� , �i <color=blue> th�nh �� <color> t�m ki�m <color=red> ma m�a ch�m <color> . ","B��c th� hai # � <color=blue> th�nh �� <color> , t� <color=blue> b�n th�c t� ��ch Mai n��ng #389,315#<color> ch� bi�t ���c th�c t� danh gia t�n uy�n ch�m ph�t tinh x�o , �� k� nh� ch�i �i t�m <color=blue> t�n uy�n <color> . ","B��c th� ba # � th�nh �� ��ng nam ph� dung tr� b� ph� c�n m�t gian d�n c� trong t�m ���c <color=blue> t�n uy�n #394,323#<color> , nh�n ���c nhi�m v� , d�ng <color=red> m� n�o chi�c nh�n <color> ��i ma m�a ch�m . ","B��c th� t� # � th�nh �� <color=blue> ti�m t�p h�a <color> mua ���c <color=red> m� n�o chi�c nh�n <color> . ","Th� n�m b��c # tr� l�i t�n uy�n nh� , �em m� n�o chi�c nh�n giao cho n�ng , l�y ���c <color=red> ma m�a ch�m <color> . ","Th� s�u b��c # tr� l�i ���ng m�n <color=blue> v� c�ng ph�ng <color> , �em <color=red> ma m�a ch�m <color> giao cho <color=blue> ���ng h�c <color> , nhi�m v� ho�n th�nh . n�u nh� ma m�a ch�m m�t , c�n l�n n�a l�m nhi�m v� . ") 
end; 


function v3() 
Talk(8, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> h� vi�n <color> , h�c ���c v� c�ng <color=blue> �o�t h�n phi�u # l�ng d� <color> . <enter> b��c ��u ti�n # � <color=blue> ngh� s� ��i th�nh <color> g�p ph�i <color=blue> ���ng m�t tr�n <color> , nh�n ���c nhi�m v� , �i <color=blue> ph�a b�c kh�ng l�ng d� n�o c�c <color> khuy�n s� c� <color=blue> ���ng u <color> . ","B��c th� hai # � <color=blue> kh�ng l�ng d� n�o c�c <color> , �i�m k�ch ���ng u ph�ng nh� <color=blue> tr��c c�a t�m b�ng g� #528,291#<color> , nh�n ���c nhi�m v� , � kh�ng l�ng d� n�o trong c�c t�m ���c <color=blue> b�n ch� kh�u quy�t <color> . ","B��c th� ba # ��nh b�i kh�ng l�ng d� n�o trong c�c ��ch b�n con <color=blue> x� l� tinh <color> c�ng <color=blue> ho�n h�ng tinh <color> , l�y ���c <color=red> b�n t� ti m�t <color> th��ng ��ch b�n c�u kh�u quy�t . ","B��c th� t� # l�n n�a �i�m k�ch ���ng u tr��c c�a t�m b�ng g� , nh�n ���c nhi�m v� , �i ph�a t�y ��ch <color=blue> ph� th�y h� <color> t�m ki�m <color=red> kim h�ng v�ng <color> . ","Th� n�m b��c # � <color=blue> ph� th�y h� <color> , ��nh b�i <color=blue> x�ch di�m ng�c <color> , l�y ���c <color=red> kim h�ng v�ng <color>","Th� s�u b��c # tr� l�i <color=blue> kh�ng l�ng d� n�o c�c <color> , �i�m k�ch ph�ng nh� tr��c c�a t�m b�ng g� , ���ng u mu�n ng��i �em <color=red> kim h�ng v�ng <color> giao cho <color=blue> ch��ng m�n ���ng th� <color> . ","Th� b�y b��c # ��n <color=blue> ti�p kh�ch ��i s�nh <color> , �em <color=red> kim h�ng v�ng <color> giao cho <color=blue> ch��ng m�n ���ng th� <color> , nhi�m v� ho�n th�nh . n�u nh� kim h�ng v�ng m�t , c�n l�n n�a l�m nhi�m v� . ") 
end; 


function v4() 
Talk(6, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> c�p tr��c h� v� <color> , h�c ���c v� c�ng <color=blue> �u�i t�m ti�n # thanh m�c c�ng <color> . <enter> b��c ��u ti�n # � <color=blue> gi� t� th�nh <color> g�p ph�i <color=blue> ���ng b�t nhi�m <color> , nh�n ���c nhi�m v� , �o�t l�i <color=red># h�a kh� ph� #<color> . ","B��c th� hai # � <color=blue> n�i Thanh Th�nh ��ng m�y tr�ng ��ng <color> , ��nh b�i tr�i ph� <color=blue> ��i ��u m�c cu�ng sa <color> , nh�n ���c nhi�m v� , � trong ��ng t�m ���c m� ra b�o r��ng ��ch <color=red> c�i ch�a kh�a <color> . ","B��c th� ba # ��nh b�i tr�i ph� trung b�n <color=blue> ti�u ��u m�c ��c nh� # c�nh tay s�t # qu� �nh # l� quy�n <color> trung ��ch m�t , ph�i nh�n ���c <color=red> c�i ch�a kh�a <color> . ","B��c th� t� # m� ra <color=blue> b�o r��ng #230,199#<color> , l�y ���c <color=red># h�a kh� ph� #<color> . ","Th� n�m b��c # tr� l�i <color=blue> h�a kh� ph�ng <color> , �em <color=red># h�a kh� ph� #<color> giao cho <color=blue> ���ng v�n <color> , nhi�m v� ho�n th�nh . n�u nh� # h�a kh� ph� # m�t , nh�t ��nh ph�i l�n n�a l�m nhi�m v� . ") 
end; 


function v5() 
Talk(7, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> v�o c�c �� t� <color> , h�c ���c v� c�ng <color=blue> ��y tr�i hoa v� # th�i ��c thu�t <color> . <enter> b��c ��u ti�n # � <color=blue> y d��c ph�ng <color> g�p ph�i <color=blue> ���ng d� <color> , nh�n ���c nhi�m v� , h�a gi�i ���ng d� c�ng c�nh t� k� ��ch �n o�n . ","B��c th� hai # ��n <color=blue> n�i Thanh Th�nh t�y b� <color> t�m ���c <color=blue> c�nh t� k� #230,245#<color> , tr��c ��nh b�i h�n n�m con nh� s�c # m�t con <color=blue> b�i lang <color># m�t con <color=blue> m�nh h� <color># m�t con <color=blue> kim ti�n b�o <color># m�t con <color=blue> heo r�ng <color> c�ng m�t con <color=blue> t�ng h�ng <color> , sau �� nh�n ���c nhi�m v� , ngh� bi�n ph�p c�u tr� c�nh t� k� n� m� ��ch qu�i b�nh . ","B��c th� ba # tr� l�i ���ng m�n <color=blue> y d��c ph�ng <color> , t� <color=blue> ���ng d� <color> ch� l�y ���c tr� li�u qu�i b�nh ��ch <color=blue> ph��ng thu�c <color> . ","B��c th� t� # � <color=blue> n�i Thanh Th�nh ��ng b�c <color> ��ch <color=blue> thanh d��ng ng�n n�i <color> , ��nh b�i <color=blue> h�c �ng # hung th�u # linh �i�u <color> , ph�i nh�n ���c n�m lo�i ph��ng thu�c #<color=red> thi�m th� ��ch da , r�n ��c ��ch ��m # anh t�c ��ch x�c # con b� c�p ��ch �u�i # c��ng t�m ��ch ��u <color> . ","Th� n�m b��c # �em ph��ng thu�c giao cho c�nh t� k� , h�a gi�i h�n c�ng v�i ���ng d� s� th�c ��ch �n o�n . ","Th� s�u b��c # tr� l�i ���ng m�n y d��c ph�ng , c�ng ���ng d� ��i tho�i , nhi�m v� ho�n th�nh . ") 
end; 


function v6() 
Talk(7, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> T� l�o m�n nh�n <color> , h�c ���c v� c�ng <color=blue> b�ng ph�ch h�n quang # thi�n la ��a v�ng <color> . <enter> b��c ��u ti�n # � <color=blue> �m kh� ph�ng <color> g�p ph�i <color=blue> ���ng r�i r�nh <color> , nh�n ���c nhi�m v� , t�m ki�m <color=red># �m kh� ph� #<color> . ","B��c th� hai # � <color=blue> ngh� s� ��i th�nh <color> , c�ng <color=blue> ���ng m�t tr�n <color> ��i tho�i , bi�t ���c <color=blue> Tam s� huynh ���ng h�a <color> c�ng <color=blue> Ng� s� huynh ���ng nguy�n <color> �i qua �m kh� ph�ng , hai ng��i c� hi�m nghi . ","B��c th� ba # � <color=blue> giang t�n th�n <color> t�m ���c <color=blue> ���ng nguy�n <color> , bi�t ���c <color=blue> ���ng h�a <color> �i <color=blue> n�i Thanh Th�nh vang n��c ��ng <color> . ","B��c th� t� # ��n <color=blue> n�i Thanh Th�nh vang n��c ��ng <color> , ��nh b�i <color=blue> ���ng h�a <color> , bi�t ���c <color=red># �m kh� ph� #<color> li�n gi�u � trong s�n ��ng . ","Th� n�m b��c # ��nh b�i trong s�n ��ng ��ch <color=blue> thi�t ch�y Ma qu�n <color> ho�c <color=blue> thi�t quy�n Di�m La <color> , ph�i nh�n ���c <color=red># �m kh� ph� #<color> . ","Th� s�u b��c # tr� l�i ���ng m�n <color=blue> �m kh� ph�ng <color> , �em <color=red># �m kh� ph� #<color> giao cho <color=blue> ���ng r�i r�nh <color> , nhi�m v� ho�n th�nh . n�u nh� # �m kh� ph� # m�t , nh�t ��nh ph�i l�n n�a v�ng v� n��c ��ng ��nh nhau . ") 
end; 


function v7() 
Talk(6, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> thi�n th� th�n v� <color> , thu�n l�i xu�t s� . <enter> b��c ��u ti�n # � <color=blue> ti�p kh�ch ��i s�nh <color> g�p ph�i <color=blue> ch��ng m�n ���ng th� <color> , nh�n ���c nhi�m v� , �i <color=blue> tr�c ti ��ng <color> thu h�i <color=red> th�t tinh tuy�t m�nh ki�m <color> . ","B��c th� hai # � <color=blue> tr�c ti ��ng t�ng th� nh�t <color> ��nh b�i <color=blue> t�n l� m�ng ��u l�nh <color> , ph�i nh�n ���c ti�n v�o t�ng th� hai ��ch <color=red> c�i ch�a kh�a <color> . ","B��c th� ba # � <color=blue> tr�c ti ��ng t�ng th� hai <color> ��nh b�i <color=blue> t�n l� m�ng ��u l�nh <color> ho�c <color=blue> �i�m t�nh h� <color> , ph�i nh�n ���c ti�n v�o t�ng th� ba <color=red> c�i ch�a kh�a <color> . ","B��c th� t� # � <color=blue> tr�c ti ��ng t�ng th� ba <color> , c� hai <color=blue> b�o r��ng <color> , m�t ng��i trong �� b�n trong c� <color=red> th�t tinh tuy�t m�nh ki�m <color> . ","Th� n�m b��c # tr� l�i ���ng m�n <color=blue> ti�p kh�ch ��i s�nh <color> , �em <color=red> th�t tinh tuy�t m�nh ki�m <color> giao cho <color=blue> ch��ng m�n ���ng th� <color> , nhi�m v� ho�n th�nh . n�u nh� th�t tinh tuy�t m�nh ki�m m�t , nh�t ��nh ph�i l�n n�a l�m nhi�m v� . ") 
end; 

function v8() 
Talk(3,"","Tr� l�i s� m�n sau , ng��i b� ��ng c�a v� <color=blue> xanh bi�c c�ch tr��ng l�o <color>, h�c ���c tuy�t h�c <color=blue> Ti�u l� phi �ao , thi�n la ��a v�ng , khen hoa t� <color>.","B��c ��u ti�n # c�p b�c ��t t�i 60 , ��n <color=blue> ph�ng kh�ch <color> th�y <color=blue> ���ng th� ch��ng m�n <color>, th�n th�nh tr� l�i ���ng m�n .","B��c th� hai # th�ng qua ��ng <color=red>50000 hai <color>, tr� l�i ���ng m�n .") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function ok() 
end; 
