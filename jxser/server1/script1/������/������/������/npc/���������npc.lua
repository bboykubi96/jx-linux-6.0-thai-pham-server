-- script viet hoa By http://tranhba.com  Thi�n v��ng gi�p m�t tay gi�p NPC 

Include("\\script\\global\\map_helper.lua")
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
npc_name = " v�n th� " 

function main(sel) 

UTask_tw = GetTask(3) 

if (UTask_tw < 10*256) then -- script viet hoa By http://tranhba.com  kh�ng nh�n Thi�n v��ng gi�p nh�p m�n nhi�m v� , kh�ng/ch�a v�o Thi�n v��ng gi�p 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i �� thu�c v� kh�c m�t m�n ph�i 
Say("V�n th� # c� v�n �� g� kh�ng hi�u , h�i ta ��y ch�nh x�c kh�ng sai #", 3,"Hi�u r� ��t gi�p /org","Hi�u r� c�c v� h�o h�n /member","Hi�u r� n�i ��y b� c�c /config") 
return 
else 
Say("V�n th� # c� v�n �� g� kh�ng hi�u , h�i ta ��y ch�nh x�c kh�ng sai #", 4,"Hi�u r� ��t gi�p /org","Hi�u r� c�c v� h�o h�n /member","Hi�u r� n�i ��y b� c�c /config","Nh� th� n�o nh�p m�n /task1") 
return 
end 
end; 

if (UTask_tw == 70*256) then -- script viet hoa By http://tranhba.com  Thi�n v��ng gi�p �� xu�t s� 
Say("V�n th� # nguy�n lai l� tr��c kia huynh �� trong bang , c� chuy�n g� kh�ng ? ", 4, " l�n n�a hi�u r� Thi�n v��ng gi�p /org", " l�n n�a hi�u r� tr��c kia huynh �� trong bang /member", " l�n n�a tr� v� c� n�i ��y b� c�c /config","C�n c� c�i g� nhi�m v� c� th� l�m /task2") 
return 
end; 

Say("V�n th� # c� v�n �� g� kh�ng hi�u , h�i ta ��y ch�nh x�c kh�ng sai #", 4,"Hi�u r� b�n bang /org","Hi�u r� ��ng m�n /member","Hi�u r� n�i ��y b� c�c /config","Hi�u r� nhi�m v� /task3") 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function org() 
Say("V�n th� # mu�n bi�t ph��ng di�n n�o ? ", 4,"M�n ph�i kh�i nguy�n /o1","V� tr� ��a l� /o2","Giang h� ��a v� /o3","M�n ph�i ��c s�c /o4") 
end; 


function member() 
Say("V�n th� # mu�n bi�t ng��i n�o ? ", 14,"Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 


function config() 
Say("V�n th� # mu�n bi�t ph��ng di�n n�o ? ", 6,"�i th�ng ch� n�o /c1","��o trung ��ng /c2","��o ��ng /c3","��o nam /c4","��o t�y /c5","��o b�c /c6") 
end; 


function task1() 
Say("V�n th� # b�n m�n ch� l�y kim h� nam �� t� . mu�n nh�p m�n h�c ngh� , c� th� th�ng qua c�ng ba l�ng huy�n ��ch Thi�n v��ng t��ng l�nh ��i tho�i ho�n th�nh nh�p m�n . ") 
end; 


function task2() 
Say("V�n th� # ng��i �� xu�t s� , kh�ng c�n l�m ti�p b�n bang nhi�m v� . ", 0) 
end; 


function task3() 

UTask_tw = GetTask(3) 

if (UTask_tw < 10*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"Nh�p m�n nhi�m v� /v1") 
end; 

if (UTask_tw == 10*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �� nh�p m�n , k� ti�p c� th� l�m l� #", 1,"M�u g� th�ch nhi�m v� /v2") 
end; 

if (UTask_tw > 10*256) and (UTask_tw < 20*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"M�u g� th�ch nhi�m v� /v2") 
end; 

if (UTask_tw == 20*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i k� ti�p c� th� l�m l� #", 1,"B�ch n��c ��ng nhi�m v� /v3") 
end; 

if (UTask_tw > 20*256) and (UTask_tw < 30*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"B�ch n��c ��ng nhi�m v� /v3") 
end; 

if (UTask_tw == 30*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i k� ti�p c� th� l�m l� #", 1,"Thi�n v��ng l�m nhi�m v� /v4") 
end; 

if (UTask_tw > 30*256) and (UTask_tw < 40*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"Thi�n v��ng l�m nhi�m v� /v4") 
end; 

if (UTask_tw == 40*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i k� ti�p c� th� l�m l� #", 1,"Thu�c gi�i ��c nhi�m v� /v5") 
end; 

if (UTask_tw > 40*256) and (UTask_tw < 50*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"Thu�c gi�i ��c nhi�m v� /v5") 
end; 

if (UTask_tw == 50*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i k� ti�p c� th� l�m l� #", 1,"N��c tr�ch nhi�m v� /v6") 
end; 

if (UTask_tw > 50*256) and (UTask_tw < 60*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"N��c tr�ch nhi�m v� /v6") 
end; 

if (UTask_tw == 60*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i k� ti�p c� th� l�m l� #", 1,"Xu�t s� nhi�m v� /v7") 
end; 

if (UTask_tw > 60*256) and (UTask_tw < 70*256) then 
Say("V�n th� # mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� #", 1,"Xu�t s� nhi�m v� /v7") 
end; 

if (UTask_tw >= 70*256) and (UTask_tw < 80*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , c� th� th�ng qua ho�n th�nh nh�p m�n nhi�m v� th�c hi�n . sau khi nh�p m�n , theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� , c� th� h�c ���c v� c�ng , ��t ���c ��u h�m . ho�n th�nh xu�t s� nhi�m v� sau , li�n c� th� th�nh t�i xu�t s� . ng��i tr��c m�t �ang ti�n h�nh trung ��ch nhi�m v� l� tr� l�i s� m�n , hi�n �� "..UTask_tw.."<#>.", 1,"Tr� l�i s� m�n v8") 
end; 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function o1() 
Say("V�n th� # ng�y x�a S� v��ng chu�ng / ��ng h� t��ng � ��ng ��nh h� kh�i binh , nam kh�ng tri�u t�ng , b�c �� qu�n Kim . sau �� S� v��ng b� gi�t , ngh�a qu�n �� c� d��ng y�u v� l�nh t� , t�c ��i th�nh thi�n v��ng . ngh�a qu�n ph�t tri�n t�n m�nh , tri�u ��nh ph�i binh tr�n �p , ngh�a qu�n h�i b�i , Thi�n v��ng b� b�t sau th�m tao s�t h�i . Thi�n v��ng chi n� d��ng anh tr� l�i ��ng ��nh h� sau , l�n n�a t� t�p t�n l�c chung quanh ��ch huynh �� , t� ch�c Thi�n v��ng gi�p . ", 4,"Bi�t /ok","V� tr� ��a l� /o2","Giang h� ��a v� /o3","M�n ph�i ��c s�c /o4") 
end; 

function o2() 
Say("V�n th� # Thi�n v��ng ��o ch�nh l� � v�o ��ng ��nh h� t�m ��ch m�t c� ��o , v�a l� n�m �� ngh�a qu�n ��ch c�n c� , c�ng l� h�m nay b�n bang ��ch t�ng ��n ch� � . ", 4,"Bi�t /ok","M�n ph�i kh�i nguy�n /o1","Giang h� ��a v� /o3","M�n ph�i ��c s�c /o4") 
end; 

function o3() 
Say("V�n th� # b�n bang � hai h� m�t d�y uy danh c�c th�nh , ng��i ��ng th� m�nh , ch�nh t� hai ph�i c�ng kh�ng d�m ��i v�i b�n bang khinh th��ng , b�i v� b�n bang v�a ph�n qu�n Kim # l�i ph�n t�ng ��nh , cho n�n t�ng kim hai ��nh ��i v�i b�n bang l� l�i s� v�a h�n . ", 4,"Bi�t /ok","M�n ph�i kh�i nguy�n /o1","V� tr� ��a l� /o2","M�n ph�i ��c s�c /o4") 
end; 

function o4() 
Say("V�n th� # b�n bang l� m�t h�t s�c �o�n k�t ��ch giang h� ��i bang , huynh �� trong bang h�o kh� ng�t tr�i , r�t n�ng ngh�a kh� , ng��i ng��i ��u l� h�o h�n . ", 4,"Bi�t /ok","M�n ph�i kh�i nguy�n /o1","V� tr� ��a l� /o2","Giang h� ��a v� /o3") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function m1() 
Say("V� tr� #<color=blue> t�m cung <color> t�a �� #<color=blue>201,199<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> m�c d� th�n l� c� g�i , nh�ng l� t�nh c�ch h�o s�ng , v� ngh� cao c��ng , qu� c�m ki�n ngh� , ��m th�c h�n ng��i , c�n qu�c kh�ng �� cho b�c m�y r�u , Thi�n v��ng gi�p � n�ng d��i s� h��ng d�n c�a , ng�y c�ng h�ng th�nh . ", 14,"Bi�t /ok","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m2() 
Say("V� tr� #<color=blue> Thi�n v��ng ��i �i�n <color> t�a �� #<color=blue>200,199<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> m�t v� hi�n l�nh d� th�n c�n ��ch tr��ng gi� , ��i v�i bang ch� d��ng anh t�a nh� ��i v�i n� nhi ru�t th�t m�t d�ng �au / th��ng y�u t�ch , ��i v�i huynh �� trong bang c�ng h�t s�c y�u m�n , � ngh�a trong qu�n ph�i cao ng�m n�ng . ", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m3() 
Say("V� tr� #<color=blue> hi�u l�nh thai c�nh ��ng <color> t�a �� #<color=blue>209,196<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> l�o th�nh c�m n�ng , l�m ng��i c�n th�n , trung h�u �t n�i . ", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m4() 
Say("V� tr� #<color=blue> ti�n �i�n <color> t�a �� #<color=blue>200,199<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> ng��i ta g�i l� � ngh�a c�ng minh � , l�m ng��i t�nh t�nh ngay th�ng , gh�t �c nh� th� , r�t n�ng ngh�a kh� , quang minh l�i l�c , y�u t�ng r� r�ng , ��i v�i d��ng anh trung th�nh c�nh c�nh . ", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m5() 
Say("V� tr� #<color=blue> t�y thi�n c�a �i�n <color> t�a �� #<color=blue>202,193<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> ng��i ta g�i l� � t�m m�t th�n � , l�m ng��i tranh c��ng h�o th�ng , x� s� t�m m�t l� l��t . ", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m6() 
Say("V� tr� #<color=blue> ��ng thi�n c�a �i�n <color> t�a �� #<color=blue>218,198<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> ng��i ta g�i l� � c�u khi�u linh h� � , nh�n ph�m ti�u s�i tu�n d�t , m�u tr� h�n ng��i , th�m minh ��i ngh�a . ", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m7() 
Say("V� tr� #<color=blue> n��c tr�i nh�p kh�u <color> t�a �� #<color=blue>191,210<color> t�c d�ng #<color=blue> nhi�m v� <color><enter> th� h�o h�n t� , t�nh t�nh ng��i trong . ", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m8() 
Say("V� tr� #<color=blue> hi�u l�nh thai qu�ng tr��ng <color> t�a �� #<color=blue>207,193<color> t�c d�ng #<color=blue> binh kh� giao d�ch <color>", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m9() 
Say("V� tr� #<color=blue> hi�u l�nh thai qu�ng tr��ng <color> t�a �� #<color=blue>205,194<color> t�c d�ng #<color=blue> trang b� giao d�ch <color>", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m10() 
Say("V� tr� #<color=blue> hi�u l�nh thai qu�ng tr��ng <color> t�a �� #<color=blue>212,195<color> t�c d�ng #<color=blue> thu�c men giao d�ch <color>", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m11() 
Say("V� tr� #<color=blue> ph�a ��ng b�n t�u <color> t�a �� #<color=blue>218,210<color> t�c d�ng #<color=blue> giao th�ng <color>", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m12() 
Say("V� tr� #<color=blue> ph�a nam b�n t�u <color> t�a �� #<color=blue>176,216<color> t�c d�ng #<color=blue> giao th�ng <color>", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a t�y b�n t�u ��ch thuy�n phu /m13","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m13() 
Say("V� tr� #<color=blue> ph�a t�y b�n t�u <color> t�a �� #<color=blue>183,189<color> t�c d�ng #<color=blue> giao th�ng <color>", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a b�c b�n t�u ��ch thuy�n phu /m14") 
end; 

function m14() 
Say("V� tr� #<color=blue> ph�a b�c b�n t�u <color> t�a �� #<color=blue>241,181<color> t�c d�ng #<color=blue> giao th�ng <color>", 14,"Bi�t /ok","Bang ch� d��ng anh /m1","Thi�n h� ph�p ���ng v�n xa /m2","��a h� ph�p h� th�nh /m3","Tr��c khi�n cho v��ng t� /m4","B�n tr�i khi�n cho c� b�ch /m5","B�n ph�i khi�n cho d��ng h� /m6","T�n ��o d�n /m7","B�n binh kh� bang ch�ng /m8","B�n trang b� ��ch bang ch�ng /m9","B�n thu�c ��ch bang ch�ng /m10","Ph�a ��ng b�n t�u ��ch thuy�n phu /m11","Ph�a nam b�n t�u ��ch thuy�n phu /m12","Ph�a t�y b�n t�u ��ch thuy�n phu /m13") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function c1() 
Say("V�n th� # kh�ng c� ���ng b� xu�t kh�u , � b�n t�u ng�i thuy�n c� th� t�i ba l�ng huy�n . ", 6,"Bi�t /ok","��o trung ��ng /c2","��o ��ng /c3","��o nam /c4","��o t�y /c5","��o b�c /c6") 
end; 

function c2() 
Say("V�n th� # Thi�n v��ng gi�p t�ng ��n theo th� t� c� ti�n �i�n # hi�u l�nh thai # Thi�n v��ng ��i �i�n # t�m cung ch� ki�n tr�c . ", 6,"Bi�t /ok","�i th�ng ch� n�o /c1","��o ��ng /c3","��o nam /c4","��o t�y /c5","��o b�c /c6") 
end; 

function c3() 
Say("V�n th� # c� b�n t�u c�ng ��ng ��nh h� �� s�n ��ng . ", 6,"Bi�t /ok","�i th�ng ch� n�o /c1","��o trung ��ng /c2","��o nam /c4","��o t�y /c5","��o b�c /c6") 
end; 

function c4() 
Say("V�n th� # c� b�n t�u c�ng n��c tr�i . ", 6,"Bi�t /ok","�i th�ng ch� n�o /c1","��o trung ��ng /c2","��o ��ng /c3","��o t�y /c5","��o b�c /c6") 
end; 

function c5() 
Say("V�n th� # c� b�n t�u . ", 6,"Bi�t /ok","�i th�ng ch� n�o /c1","��o trung ��ng /c2","��o ��ng /c3","��o nam /c4","��o b�c /c6") 
end; 

function c6() 
Say("V�n th� # c� b�n t�u c�ng Thi�n v��ng ��o s�n ��ng . ", 6,"Bi�t /ok","�i th�ng ch� n�o /c1","��o trung ��ng /c2","��o ��ng /c3","��o nam /c4","��o t�y /c5") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function v1() 
Talk(6, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i c� th� gia nh�p Thi�n v��ng gi�p , tr� th�nh <color=blue> th� v� <color> , h�c ���c v� c�ng <color=blue> ch�m long quy�t <color> . <enter> b��c ��u ti�n # � <color=blue> ph�a nam n��c tr�i nh�p kh�u <color> g�p ph�i <color=blue> t�n ��o d�n <color> , nh�n ���c nhi�m v� , �i <color=blue> ba l�ng huy�n <color> mua r��u ngon <color=red>� o�nh lai xu�n �<color> . ","B��c th� hai # � <color=blue> ba l�ng huy�n t�u qu�n <color> nh�n ���c nhi�m v� , t�m ki�m ch�ng c�t r��u c�n ��ch ba lo�i nguy�n li�u #<color=red> linh chi # huy�n t� # h� th� � <color> . ","B��c th� ba # ��n <color=blue> v� l�ng s�n ��ch ��ng b�c b� <color> nh�t th�p <color=red> linh chi # huy�n t� # h� th� � <color> . ","B��c th� t� # tr� l�i <color=blue> ba l�ng huy�n t�u qu�n <color> , bi�t ���c c�n ch� ��i <color=blue> m�t canh gi� <color> . m�t canh gi� sau n�y , tr� l�i t�u qu�n l�y ���c <color=red>� o�nh lai xu�n �<color> . ","Th� n�m b��c # tr� l�i <color=blue> Thi�n v��ng ��o <color> , �em <color=red>� o�nh lai xu�n �<color> giao cho <color=blue> t�n ��o d�n <color> , nhi�m v� ho�n th�nh . n�u nh� � o�nh lai xu�n � m�t , c�n l�n n�a l�m nhi�m v� . ") 
end; 


function v2() 
Talk(4, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> th� v� tr��ng <color> , h�c ���c v� c�ng <color=blue> Thi�n v��ng th��ng ph�p # Thi�n v��ng �ao ph�p # Thi�n v��ng ch�y ph�p # tr� v� phong r�i nh�n <color> . <enter> b��c ��u ti�n # � <color=blue> ti�n �i�n <color> g�p ph�i <color=blue> v��ng t� <color> , nh�n ���c nhi�m v� , �i ��o ph�a b�c ��ch <color=blue> Thi�n v��ng ��o s�n ��ng <color> l�y ���c <color=red> ba kh�i m�u g� th�ch <color> . ","B��c th� hai # � ph�a b�c ��ch <color=blue> Thi�n v��ng ��o s�n ��ng <color> , ��nh b�i <color=blue> kim Mi�u v��ng # x� l� tinh # ��i ho�n h�ng <color> , c�ng s� l�y ���c <color=red> m�u g� th�ch <color> . ","B��c th� ba # tr� l�i <color=blue> ti�n �i�n <color> , �em <color=red> ba kh�i m�u g� th�ch <color> giao cho <color=blue> v��ng t� <color> , nhi�m v� ho�n th�nh . ") 
end; 


function v3() 
Talk(4, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> th� tr�i h�n �em <color> , h�c ���c v� c�ng <color=blue> ���c v�n quy�t # kh�ng l�ng d� n�o ch�m # t�nh t�m quy�t <color> . <enter> b��c ��u ti�n # � <color=blue> ��ng thi�n c�a �i�n <color> g�p ph�i <color=blue> d��ng h� <color> , nh�n ���c nhi�m v� , �i <color=blue> v� l�ng s�n b�ch n��c ��ng <color> di�t ph� . ","B��c th� hai # � <color=blue> v� l�ng s�n b�ch n��c ��ng <color> , theo th� t� ��nh b�i ba ","B��c th� ba #") 
end; 


function v4() 
Talk(4, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> c�p tr��c h� v� <color> , h�c ���c v� c�ng <color=blue> �u�i t�m ti�n # thanh m�c c�ng <color> . <enter> b��c ��u ti�n # � <color=blue> gi� t� th�nh <color> g�p ph�i <color=blue> ���ng b�t nhi�m <color> , nh�n ���c nhi�m v� , �o�t l�i <color=red># h�a kh� ph� #<color> . ","B��c th� hai # � <color=blue> n�i Thanh Th�nh ��ng m�y tr�ng ��ng <color> , ��nh b�i tr�i ph� <color=blue> ��i ��u m�c cu�ng sa <color> , nh�n ���c nhi�m v� , � trong ��ng t�m ���c m� ra b�o r��ng ��ch <color=red> c�i ch�a kh�a <color> . ","B��c th� ba # ��nh b�i tr�i ph� trung b�n <color=blue> ti�u ��u m�c ��c nh� # c�nh tay s�t # qu� �nh # l� quy�n <color> trung ��ch m�t , ph�i nh�n ���c <color=red> c�i ch�a kh�a <color> . ","B��c th� t� # m� ra <color=blue> b�o r��ng #230,199#<color> , l�y ���c <color=red># h�a kh� ph� #<color> . ","Th� n�m b��c # tr� l�i <color=blue> h�a kh� ph�ng <color> , �em <color=red># h�a kh� ph� #<color> giao cho <color=blue> ���ng v�n <color> , nhi�m v� ho�n th�nh . n�u nh� # h�a kh� ph� # m�t , nh�t ��nh ph�i l�n n�a l�m nhi�m v� . ") 
end; 


function v5() 
Talk(7, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> v�o c�c �� t� <color> , h�c ���c v� c�ng <color=blue> ��y tr�i hoa v� # th�i ��c thu�t <color> . <enter> b��c ��u ti�n # � <color=blue> y d��c ph�ng <color> g�p ph�i <color=blue> ���ng d� <color> , nh�n ���c nhi�m v� , h�a gi�i ���ng d� c�ng c�nh t� k� ��ch �n o�n . ","B��c th� hai # ��n <color=blue> n�i Thanh Th�nh t�y b� <color> t�m ���c <color=blue> c�nh t� k� #230,245#<color> , tr��c ��nh b�i h�n n�m con nh� s�c # m�t con <color=blue> b�i lang <color># m�t con <color=blue> m�nh h� <color># m�t con <color=blue> kim ti�n b�o <color># m�t con <color=blue> heo r�ng <color> c�ng m�t con <color=blue> t�ng h�ng <color> , sau �� nh�n ���c nhi�m v� , ngh� bi�n ph�p c�u tr� c�nh t� k� n� m� ��ch qu�i b�nh . ","B��c th� ba # tr� l�i ���ng m�n <color=blue> y d��c ph�ng <color> , t� <color=blue> ���ng d� <color> ch� l�y ���c tr� li�u qu�i b�nh ��ch <color=blue> ph��ng thu�c <color> . ","B��c th� t� # � <color=blue> n�i Thanh Th�nh ��ng b�c <color> ��ch <color=blue> thanh d��ng ng�n n�i <color> , ��nh b�i <color=blue> h�c �ng # hung th�u # linh �i�u <color> , ph�i nh�n ���c n�m lo�i ph��ng thu�c #<color=red> thi�m th� ��ch da , r�n ��c ��ch ��m # anh t�c ��ch x�c # con b� c�p ��ch �u�i # c��ng t�m ��ch ��u <color> . ","Th� n�m b��c # �em ph��ng thu�c giao cho c�nh t� k� , h�a gi�i h�n c�ng v�i ���ng d� s� th�c ��ch �n o�n . ","Th� s�u b��c # tr� l�i ���ng m�n y d��c ph�ng , c�ng ���ng d� ��i tho�i , nhi�m v� ho�n th�nh . ") 
end; 


function v6() 
Talk(4, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> T� l�o m�n nh�n <color> , h�c ���c v� c�ng <color=blue> b�ng ph�ch h�n quang # thi�n la ��a v�ng <color> . <enter> b��c ��u ti�n # � <color=blue> �m kh� ph�ng <color> g�p ph�i <color=blue> ���ng r�i r�nh <color> , nh�n ���c nhi�m v� , t�m ki�m <color=red># �m kh� ph� #<color> . ","B��c th� hai # � <color=blue> ngh� s� ��i th�nh <color> , c�ng <color=blue> ���ng m�t tr�n <color> ��i tho�i , bi�t ���c <color=blue> Tam s� huynh ���ng h�a <color> c�ng <color=blue> Ng� s� huynh ���ng nguy�n <color> �i qua �m kh� ph�ng , hai ng��i c� hi�m nghi . ","B��c th� ba # � <color=blue> giang t�n th�n <color> t�m ���c <color=blue> ���ng nguy�n <color> , bi�t ���c <color=blue> ���ng h�a <color> �i <color=blue> n�i Thanh Th�nh vang n��c ��ng <color> . ","B��c th� t� # ��n <color=blue> n�i Thanh Th�nh vang n��c ��ng <color> , ��nh b�i <color=blue> ���ng h�a <color> , bi�t ���c <color=red># �m kh� ph� #<color> li�n gi�u � trong s�n ��ng . ","Th� n�m b��c # ��nh b�i trong s�n ��ng ��ch <color=blue> thi�t ch�y Ma qu�n <color> ho�c <color=blue> thi�t quy�n Di�m La <color> , ph�i nh�n ���c <color=red># �m kh� ph� #<color> . ","Th� s�u b��c # tr� l�i ���ng m�n <color=blue> �m kh� ph�ng <color> , �em <color=red># �m kh� ph� #<color> giao cho <color=blue> ���ng r�i r�nh <color> , nhi�m v� ho�n th�nh . n�u nh� # �m kh� ph� # m�t , nh�t ��nh ph�i l�n n�a v�ng v� n��c ��ng ��nh nhau . ") 
end; 


function v7() 
Talk(5, "","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> thi�n th� th�n v� <color> , thu�n l�i xu�t s� . <enter> b��c ��u ti�n # � <color=blue> ti�p kh�ch ��i s�nh <color> g�p ph�i <color=blue> ch��ng m�n ���ng th� <color> , nh�n ���c nhi�m v� , �i <color=blue> tr�c ti ��ng <color> thu h�i <color=red> th�t tinh tuy�t m�nh ki�m <color> . ","B��c th� hai # � <color=blue> tr�c ti ��ng t�ng th� nh�t <color> ��nh b�i <color=blue> t�n l� m�ng ��u l�nh <color> , ph�i nh�n ���c ti�n v�o t�ng th� hai ��ch <color=red> c�i ch�a kh�a <color> . ","B��c th� ba # � <color=blue> tr�c ti ��ng t�ng th� hai <color> ��nh b�i <color=blue> t�n l� m�ng ��u l�nh <color> ho�c <color=blue> �i�m t�nh h� <color> , ph�i nh�n ���c ti�n v�o t�ng th� ba <color=red> c�i ch�a kh�a <color> . ","B��c th� t� # � <color=blue> tr�c ti ��ng t�ng th� ba <color> , c� hai <color=blue> b�o r��ng <color> , m�t ng��i trong �� b�n trong c� <color=red> th�t tinh tuy�t m�nh ki�m <color> . ","Th� n�m b��c # tr� l�i ���ng m�n <color=blue> ti�p kh�ch ��i s�nh <color> , �em <color=red> th�t tinh tuy�t m�nh ki�m <color> giao cho <color=blue> ch��ng m�n ���ng th� <color> , nhi�m v� ho�n th�nh . n�u nh� th�t tinh tuy�t m�nh ki�m m�t , nh�t ��nh ph�i l�n n�a l�m nhi�m v� . ") 
end; 

function v8() 
Talk(3,"","Th�ng qua ho�n th�nh nhi�m v� n�y , ng��i th�ng l�m <color=blue> kinh thi�n Nguy�n so�i <color>, h�c ���c tr�n ph�i tuy�t h�c <color=blue> Thi�n v��ng chi�n � , v� c�ng : kh�ng l�ng d� n�o ch�m , huy�t chi�n b�t ph��ng , ng� long quy�t <color>.","Th� 1 b��c : ��n 60 c�p sau n�y , ��n <color=blue> ��i s�nh <color> th�y <color=blue>Bang ch? D#ng A bang ch� d��ng anh <color>, th�nh c�u tr� l�i Thi�n v��ng gi�p .","Th� 2 b��c : ��a cho m�n ph�i <color=red>50000 hai <color> tr� l�i Thi�n v��ng gi�p .") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function ok() 
end; 
