-- script viet hoa By http://tranhba.com  ng�y nh�n d�y tr� gi�p NPC 

Include("\\script\\global\\map_helper.lua")
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
npc_name = " qu�n s� " 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel) 
if allbrother_0801_CheckIsDialog(210) == 1 then 
allbrother_0801_FindNpcTaskDialog(210) 
return 0; 
end 
UTask_tr = GetTask(4) 

if (UTask_tr < 10*256) then -- script viet hoa By http://tranhba.com  kh�ng nh�n ng�y nh�n d�y nh�p m�n nhi�m v� , kh�ng/ch�a v�o ng�y nh�n d�y 
if (GetFaction() ~= "") then -- script viet hoa By http://tranhba.com  n�u nh� nh� ch�i �� thu�c v� kh�c m�t m�n ph�i 
Say("Ch� c�n kh�ng thi�p c�p b�n gi�o c� m�t , h�i c�i g� ��u ���c !", 3,"Hi�u r� qu� gi�o /org","Hi�u r� c�c v� cao th� /member","Hi�u r� b� c�c c�a n�i n�y /config") 
return 
else 
Say("Ch� c�n kh�ng thi�p c�p b�n gi�o c� m�t , h�i c�i g� ��u ���c !", 4,"Hi�u r� qu� gi�o /org","Hi�u r� c�c v� cao th� /member","Hi�u r� b� c�c c�a n�i n�y /config", " l�m sao c� th� nh�p m�n ?/task1") 
return 
end 
end; 

if (UTask_tr == 70*256) then -- script viet hoa By http://tranhba.com  ng�y nh�n d�y �� xu�t s� 
Say("Ng��i kh�ng ph�i l� xu�t s� sao , c�n c� c�i g� kh�ng hi�u ?", 6,"Ti�p t�c m� ng�y nh�n d�y /org","Hi�u r� tr��c ��ch ��ng m�n /member", " l�n n�a hi�u r� b� c�c c�a n�i n�y /config","C�n c� c�i g� ph�i l�m ��ch /task3","Hi�u r� luy�n c�ng h� h�o /map_help","Hi�u r� luy�n b�n m�n v� ngh� /skill_help") 
return 
end; 

Say("C� chuy�n g� c� h�i .", 7,"C�ng long n�m ��i tho�i /Uworld1000_word","Hi�u r� b�n gi�o /org","Hi�u r� ��ng m�n /member","Hi�u r� b� c�c c�a n�i n�y /config","Hi�u r� nhi�m v� /task3","Hi�u r� luy�n c�ng h� h�o /map_help","Hi�u r� luy�n b�n m�n v� ngh� /skill_help") 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function org() 
Say("C�n mu�n bi�t g� n�a ?", 4,"M�n ph�i kh�i nguy�n /o1","V� tr� ��a l� /o2","Giang h� ��a v� /o3","M�n ph�i ��c s�c /o4") 
end; 


function member() 
Say("Mu�n bi�t ng��i n�o ?", 10,"Gi�o ch� ho�n nhan h�ng li�t /m1","T� h� ph�p �oan m�c du� /m2","H�u h� ph�p c�ng lu�t �ch c�ch /m3","Phong ���ng ���ng ch� ho�n nhan tuy�t y /m4", " l�a ���ng ���ng ch� ng�t ngao /m5","Nh�t nguy�t ��n ch� � h�p t�t /m6","Ng�y nh�n t� s� /m7","Trong th�p m� h�i /m8","V� ��ch /m9","K� h�u /m10") 
end; 


function config() 
Say("C�n mu�n bi�t g� n�a ?", 3,"Khu v�c ph� c�n /c1","B�n ngo�i b� c�c /c2","B�n trong b� c�c /c3") 
end; 


function task1() 
Say("B�n m�n ch� l�y h�a h� �� t� , kh�ng ph�n bi�t nam n� . mu�n nh�p m�n h�c ngh� , c�n ho�n th�nh nh�p m�n nhi�m v� .", 1,"Hi�u r� nh�p m�n c� th� nhi�m v� /v1") 
end; 


function task2() 
Say("<#> ng��i �� xu�t s� , kh�ng c�n l�m ti�p b�n gi�o nhi�m v� , tr��c m�t �� # "..UTask_tr.."<#>.", 0) 
end; 


function task3() 

UTask_tr = GetTask(4) 

if (UTask_tr > 5*256) and (UTask_tr < 10*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, �ang ti�n h�nh ��ch nhi�m v� v� ", 1,"Nh�p m�n nhi�m v� /v1") 
end; 

if (UTask_tr == 10*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, b�y gi� �� nh�p m�n , k� ti�p c� th� ti�n h�nh :", 1,"Th�t s�t ��ng nhi�m v� /v2") 
end; 

if (UTask_tr > 10*256) and (UTask_tr < 20*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, �ang ti�n h�nh ��ch nhi�m v� v� ", 1,"Th�t s�t ��ng nhi�m v� /v2") 
end; 

if (UTask_tr == 20*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, k� ti�p c� th� ti�n h�nh :", 1,"Th�ng minh ��a tr� nhi�m v� /v3") 
end; 

if (UTask_tr > 20*256) and (UTask_tr < 30*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, �ang ti�n h�nh ��ch nhi�m v� v� ", 1,"Th�ng minh ��a tr� nhi�m v� /v3") 
end; 

if (UTask_tr == 30*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, k� ti�p c� th� ti�n h�nh :", 1,"B�o th�ch nhi�m v� /v4") 
end; 

if (UTask_tr > 30*256) and (UTask_tr < 40*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, �ang ti�n h�nh ��ch nhi�m v� v� ", 1,"B�o th�ch nhi�m v� /v4") 
end; 

if (UTask_tr == 40*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, k� ti�p c� th� ti�n h�nh :", 1,"H�nh th�ch nhi�m v� /v5") 
end; 

if (UTask_tr > 40*256) and (UTask_tr < 50*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, �ang ti�n h�nh ��ch nhi�m v� v� ", 1,"H�nh th�ch nhi�m v� /v5") 
end; 

if (UTask_tr == 50*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, k� ti�p c� th� ti�n h�nh :", 1,"C�u ng��i nhi�m v� /v6") 
end; 

if (UTask_tr > 50*256) and (UTask_tr < 60*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, �ang ti�n h�nh ��ch nhi�m v� v� ", 1,"C�u ng��i nhi�m v� /v6") 
end; 

if (UTask_tr == 60*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, k� ti�p c� th� ti�n h�nh :", 1,"Xu�t s� nhi�m v� /v7") 
end; 

if (UTask_tr > 60*256) and (UTask_tr < 70*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, �ang ti�n h�nh ��ch nhi�m v� v� ", 1,"Xu�t s� nhi�m v� /v7") 
end; 

if (UTask_tr >= 70*256) and (UTask_tr < 80*256) then 
Say("<#> mu�n nh�p m�n h�c ngh� , ��u ti�n c�n th�ng qua ho�n th�nh nh�p m�n nhi�m v� . sau �� theo th� t� ho�n th�nh n�m m�n ph�i nhi�m v� . �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau l� ���c ngh� xu�t s� . tr��c m�t # "..UTask_tr.."<#>, �ang ti�n h�nh ��ch nhi�m v� v� ", 1,"Tr� l�i s� m�n /v8") 
end; 

end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function o1() 
Say("B�n gi�o � ��i kim th�nh l�p , v� ��i ph� trong ch�n v� l�m nguy�n , b� tin/th� v� n��c d�y , gi�o ch� ho�n nhan h�ng li�t c�ng l� ��i kim ��ch qu�c s� .", 4,"Bi�t /ok","V� tr� ��a l� /o2","Giang h� ��a v� /o3","M�n ph�i ��c s�c /o4") 
end; 

function o2() 
Say("��y l� b�n gi�o t�ng ��n , � v�o bi�n kinh ph�a ��ng b� m�t v� tr� .", 4,"Bi�t /ok","M�n ph�i kh�i nguy�n /o1","Giang h� ��a v� /o3","M�n ph�i ��c s�c /o4") 
end; 

function o3() 
Say("B�n gi�o ��ch b�i c�nh ch�nh tr� r�t ph�c t�p , m�c ��ch l� tr� gi�p kim qu�c xu�i nam di�t t�ng , v�a th�ng su�t thi�n h� ", 4,"Bi�t /ok","M�n ph�i kh�i nguy�n /o1","V� tr� ��a l� /o2","M�n ph�i ��c s�c /o4") 
end; 

function o4() 
Say("B�n gi�o thay v� b�n h� ph�i l�n nh�t s� kh�c bi�t l� # b�n gi�o b�i v� ch�nh tr� m�c ��ch m� th�nh l�p . gia nh�p b�n gi�o ng��i c�a kh�ng ph�i l� v� h�c ngh� , m� l� b�i v� ch�nh tr� , nh�ng ng��i n�y � ��y b�n gi�o ��ch ��a v� r�t cao . b�n gi�o h�nh th�c nghi�m m�t , ��ng quy nghi�m c�n , ��i v�i ph�n �� �em nghi�m tr� kh�ng tha .", 4,"Bi�t /ok","M�n ph�i kh�i nguy�n /o1","V� tr� ��a l� /o2","Giang h� ��a v� /o3") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function m1() 
Say("V� tr� <color=blue> ng�y nh�n d�y t�ng th� ba <color> t�a �� : <color=blue>215,195<color> ph� tr�ch : <color=blue> nhi�m v� color><enter> kim qu�c qu�c s� , m�t ��i ki�u h�ng , nhi�u m�u ch�n tr� , nh�ng l� , ng�o m�n v� c�ng .", 10,"Bi�t /ok","T� h� ph�p �oan m�c du� /m2","H�u h� ph�p c�ng lu�t �ch c�ch /m3","Phong ���ng ���ng ch� ho�n nhan tuy�t y /m4", " l�a ���ng ���ng ch� ng�t ngao /m5","Nh�t nguy�t ��n ch� � h�p t�t /m6","Ng�y nh�n t� s� /m7","Trong th�p m� h�i /m8","V� ��ch /m9","K� h�u /m10") 
end; 

function m2() 
Say("V� tr� <color=blue> ng�y nh�n d�y t�ng th� ba <color> t�a �� : <color=blue>225,199<color> ph� tr�ch : <color=blue> nhi�m v� color><enter>, v�n v� song to�n , phong l�u th�ch th�ng , n�a ch�nh n�a t� ", 10,"Bi�t /ok","Gi�o ch� ho�n nhan h�ng li�t /m1","H�u h� ph�p c�ng lu�t �ch c�ch /m3","Phong ���ng ���ng ch� ho�n nhan tuy�t y /m4", " l�a ���ng ���ng ch� ng�t ngao /m5","Nh�t nguy�t ��n ch� � h�p t�t /m6","Ng�y nh�n t� s� /m7","Trong th�p m� h�i /m8","V� ��ch /m9","K� h�u /m10") 
end; 

function m3() 
Say("V� tr� <color=blue> ng�y nh�n d�y t�ng th� ba <color> t�a �� : <color=blue>207,189<color> ph� tr�ch : <color=blue> nhi�m v� color><enter>, gian tr� gi�o ho�t , kh�ng ch�a th� �o�n n�o ��t m�c ��ch ", 10,"Bi�t /ok","Gi�o ch� ho�n nhan h�ng li�t /m1","T� h� ph�p �oan m�c du� /m2","Phong ���ng ���ng ch� ho�n nhan tuy�t y /m4", " l�a ���ng ���ng ch� ng�t ngao /m5","Nh�t nguy�t ��n ch� � h�p t�t /m6","Ng�y nh�n t� s� /m7","Trong th�p m� h�i /m8","V� ��ch /m9","K� h�u /m10") 
end; 

function m4() 
Say("V� tr� <color=blue> ng�y nh�n d�y t�ng th� ba <color> t�a �� : <color=blue>213,201<color> ph� tr�ch : <color=blue> nhi�m v� color><enter>, kim qu�c Th�t c�ng ch�a , v�n v� song to�n , th�ng minh lanh l�i , gia nh�p ng�y nh�n d�y l� v� gi�m th� ho�n nhan h�ng li�t !", 10,"Bi�t /ok","Gi�o ch� ho�n nhan h�ng li�t /m1","T� h� ph�p �oan m�c du� /m2","H�u h� ph�p c�ng lu�t �ch c�ch /m3", " l�a ���ng ���ng ch� ng�t ngao /m5","Nh�t nguy�t ��n ch� � h�p t�t /m6","Ng�y nh�n t� s� /m7","Trong th�p m� h�i /m8","V� ��ch /m9","K� h�u /m10") 
end; 

function m5() 
Say("V� tr� <color=blue> ng�y nh�n d�y t�ng th� ba <color> t�a �� : <color=blue>205,197<color> ph� tr�ch : <color=blue> nhi�m v� color><enter>, t�nh t�nh n�ng n�y , tr�c t� s� !", 10,"Bi�t /ok","Gi�o ch� ho�n nhan h�ng li�t /m1","T� h� ph�p �oan m�c du� /m2","H�u h� ph�p c�ng lu�t �ch c�ch /m3","Phong ���ng ���ng ch� ho�n nhan tuy�t y /m4","Nh�t nguy�t ��n ch� � h�p t�t /m6","Ng�y nh�n t� s� /m7","Trong th�p m� h�i /m8","V� ��ch /m9","K� h�u /m10") 
end; 

function m6() 
Say("V� tr� <color=blue> qu�ng tr��ng <color> t�a �� : <color=blue>200,198<color> ph� tr�ch : <color=blue> nhi�m v� color><enter>, v� ngh� cao c��ng , c� l�c �� cho ��ng m�n d� kh�c d� c��i ", 10,"Bi�t /ok","Gi�o ch� ho�n nhan h�ng li�t /m1","T� h� ph�p �oan m�c du� /m2","H�u h� ph�p c�ng lu�t �ch c�ch /m3","Phong ���ng ���ng ch� ho�n nhan tuy�t y /m4", " l�a ���ng ���ng ch� ng�t ngao /m5","Ng�y nh�n t� s� /m7","Trong th�p m� h�i /m8","V� ��ch /m9","K� h�u /m10") 
end; 

function m7() 
Say("V� tr� <color=blue> ti�n v�o m�t th�t ���ng <color> t�a �� : <color=blue>207,195<color> ph� tr�ch : <color=blue> nhi�m v� color><enter>, m�t b�nh th��ng �� t� , kh�ng c� xu�t s�c bi�u hi�n ", 10,"Bi�t /ok","Gi�o ch� ho�n nhan h�ng li�t /m1","T� h� ph�p �oan m�c du� /m2","H�u h� ph�p c�ng lu�t �ch c�ch /m3","Phong ���ng ���ng ch� ho�n nhan tuy�t y /m4", " l�a ���ng ���ng ch� ng�t ngao /m5","Nh�t nguy�t ��n ch� � h�p t�t /m6","Trong th�p m� h�i /m8","V� ��ch /m9","K� h�u /m10") 
end; 

function m8() 
Say("V� tr� <color=blue> ng�y nh�n d�y t�ng th� ba <color> t�a �� : <color=blue>207,199<color> ph� tr�ch : <color=blue> giao d�ch binh kh� color>", 10,"Bi�t /ok","Gi�o ch� ho�n nhan h�ng li�t /m1","T� h� ph�p �oan m�c du� /m2","H�u h� ph�p c�ng lu�t �ch c�ch /m3","Phong ���ng ���ng ch� ho�n nhan tuy�t y /m4", " l�a ���ng ���ng ch� ng�t ngao /m5","Nh�t nguy�t ��n ch� � h�p t�t /m6","Ng�y nh�n t� s� /m7","V� ��ch /m9","K� h�u /m10") 
end; 

function m9() 
Say("V� tr� <color=blue> ng�y nh�n d�y t�ng th� ba <color> t�a �� : <color=blue>208,198<color> ph� tr�ch : <color=blue> giao d�ch trang b� color>", 10,"Bi�t /ok","Gi�o ch� ho�n nhan h�ng li�t /m1","T� h� ph�p �oan m�c du� /m2","H�u h� ph�p c�ng lu�t �ch c�ch /m3","Phong ���ng ���ng ch� ho�n nhan tuy�t y /m4", " l�a ���ng ���ng ch� ng�t ngao /m5","Nh�t nguy�t ��n ch� � h�p t�t /m6","Ng�y nh�n t� s� /m7","Trong th�p m� h�i /m8","K� h�u /m10") 
end; 

function m10() 
Say("V� tr� <color=blue> ng�y nh�n d�y t�ng th� ba <color> t�a �� : <color=blue>210,198<color> ph� tr�ch : <color=blue> giao d�ch thu�c men <color>", 10,"Bi�t /ok","Gi�o ch� ho�n nhan h�ng li�t /m1","T� h� ph�p �oan m�c du� /m2","H�u h� ph�p c�ng lu�t �ch c�ch /m3","Phong ���ng ���ng ch� ho�n nhan tuy�t y /m4", " l�a ���ng ���ng ch� ng�t ngao /m5","Nh�t nguy�t ��n ch� � h�p t�t /m6","Ng�y nh�n t� s� /m7","Trong th�p m� h�i /m8","V� ��ch /m9") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function c1() 
Say("H��ng nam ch�nh l� bi�n kinh ", 3,"Bi�t /ok","B�n ngo�i b� c�c /c2","B�n trong b� c�c /c3") 
end; 

function c2() 
Say("Qu�ng tr��ng c� ra v�o m�t th�t ��ch ���ng ", 3,"Bi�t /ok","Khu v�c ph� c�n /c1","B�n trong b� c�c /c3") 
end; 

function c3() 
Say("M�t th�t c� 3 t�ng , t�ng th� nh�t c� n�i ��ng , t�ng th� hai c� th�t s�t ��ng (190,190) ; t�ng th� ba c� th�nh ��ng (218,192) . t�ng ��n � v�o t�ng th� ba .", 3,"Bi�t /ok","Khu v�c ph� c�n /c1","B�n ngo�i b� c�c /c2") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function v1() 
Talk(4, "","Th�ng qua ho�n th�nh nhi�m v� , ng��i c� th� gia nh�p ng�y nh�n d�y , tr� th�nh <color=blue> s�t th� color>, h�c ���c v� c�ng <color=blue> t�n d��ng nh� m�u <color>.<enter> ti�p nh�n v� , c�n ��t t�i 10 c�p b�c : kh�ng l�m nh�ng kh�c b�t k� m�n ph�i n�o ��ch nh�p m�n nhi�m v� ","B��c ��u ti�n : ��n <color=blue> ti�n v�o m�t th�t ��ch ���ng ti�n v�o m�t th�t <color> th�y <color=blue> ng�y nh�n t� s� color>. ti�p nh�n v� , ��n <color=blue> Hoa S�n <color> � <color=red> V� v��ng ki�m <color>.","B��c th� hai : ��n <color=blue> Hoa S�n <color> ��nh b�i <color=blue> ��i ho�n h�ng , ��i heo r�ng color> ho�c l� <color=blue> ��i con nh�m color> �em ��t ���c <color=red> V� v��ng ki�m <color>.","B��c th� ba : tr� v� ng�y nh�n d�y , giao <color=red> V� v��ng ki�m <color> cho <color=blue> ng�y nh�n t� s� color>, nhi�m v� ho�n th�nh , n�u nh� h�n V� v��ng ki�m m�t , c�n b�t ��u l�i t� ��u nhi�m v� !") 
end; 


function v2() 
Talk(4, "","Ho�n th�nh nhi�m v� sau , b� ��ng c�a v� <color=blue> v� �nh s�t th� color>, h�c ���c v� c�ng <color=blue> ng�y nh�n �ao ph�p , ng�y nh�n m�u ph�p , h�a li�n ��t l�a <color>.<enter> nh�n n�n nhi�m v� c�n ��t t�i 10 c�p tr� l�n ","B��c ��u ti�n : ��n <color=blue> ng�y nh�n d�y t�ng th� ba <color> th�y <color=blue> l�a ���ng ���ng ch� ng�t ngao <color>. ti�p nh�n v� , ti�n v�o <color=blue> th�t s�t ��ng <color> c�m <color=red>3 t�m l�nh b�i <color>.","B��c th� hai : ��n t�ng th� hai , ti�n v�o <color=blue> th�t s�t ��ng <color>, ��nh b�i <color=blue>7 t� t� color> �em ��t ���c <color=red>3 t�m l�nh b�i <color>.","B��c th� ba : tr� v� <color=blue> t�ng th� ba <color> ��ng <color=red> l�nh b�i <color> cho <color=blue> l�a ���ng ���ng ch� ng�t ngao <color>, nhi�m v� ho�n th�nh . ") 
end; 


function v3() 
Talk(5, "","Ho�n th�nh nhi�m v� sau , b� ��ng c�a v� <color=blue>T?S?<color>, h�c ���c v� c�ng <color=blue> �o �nh bay h� color>.<enter> nh�n n�n nhi�m v� c�n ��t t�i 20 c�p c�ng ho�n th�nh nhi�m v� th�t s�t l�m .","B��c ��u ti�n : ��n <color=blue> qu�ng tr��ng <color> th�y <color=blue> nh�t nguy�t ��n ch� � h�p t�t <color>, ti�p nh�n v� , tr� l�i v�n �� , �i t�m <color=blue> nam h�i <color> c�m tr� v� <color=red> nh�t nguy�t song ��i phi�n <color>","B��c th� hai : ��n ph�a ��ng r�ng c�y t�m <color=blue> nam h�i (213,203)<color>, tr� l�i ch�nh x�c m� ng� , l�i ti�p nh�n v� �i t�m <color=red> ti�u Ho�ng ch� <color> v?<color=red> ti�u b�i l� color>","B��c th� ba : ��n ph�a t�y r�ng c�y t�m ���c <color=red> ti�u Ho�ng ch� (210,191)<color> c�ng <color=red> ti�u b�i l� (196,195)<color>, giao cho <color=blue> nam h�i <color> ��i l�y <color=red> nh�t nguy�t song ��i phi�n <color>.","Th� 4 b��c : tr� v� ��ng <color=red> nh�t nguy�t song ��i phi�n <color> cho <color=blue � h�p t�t <color>, nhi�m v� ho�n th�nh . n�u nh� nh�t nguy�t song ��i phi�n m�t , c�n b�t ��u l�i t� ��u nhi�m v� !") 
end; 


function v4() 
Talk(5, "","Ho�n th�nh nhi�m v� sau , b� ��ng c�a v� <color=blue> u minh t� s� color>, h�c ���c v� c�ng <color=blue> li�t h�a t�nh thi�n , ��y s�n �i�n h�i , bay h�ng v� c�c <color>.<enter> nh�n n�n nhi�m v� c�n ��t t�i 30 c�p c�ng ho�n th�nh th�ng minh ��a tr� nhi�m v� .","B��c ��u ti�n : ��n <color=blue> ng�y nh�n d�y t�ng th� ba <color> th�y <color=blue> l�a ���ng ���ng ch� ho�n nhan tuy�t y <color>. ti�p nh�n v� ��n <color=blue> t�n l�ng <color> t�m lo�i b�o th�ch : <color=red> c�p m�u �� , b�ng tinh lam , t� m�u xanh bi�c , v�n m�ng t� color>.","B��c th� hai : ��n <color=blue> t�n l�ng <color>, ��nh b�i <color=blue> ��o b�o t�c <color>, �em ��t ���c 3 kh�i : <color=red> c�p m�u �� , b�ng tinh lam , t� m�u xanh bi�c <color>.","B��c th� ba : �i t�n l�ng b�n ngo�i t�m m�t <color=blue> n�ng phu (296,158)<color>, �em mua ���c <color=red> v�n m�ng t� color>.","Th� 4 b��c : tr� v� <color=blue> ng�y nh�n d�y t�ng th� ba <color>, ��ng b�n lo�i b�o th�ch cho <color=blue> ho�n nhan tuy�t y <color>, nhi�m v� ho�n th�nh . ") 
end; 


function v5() 
Talk(4, "","Ho�n th�nh nhi�m v� sau , b� ��ng c�a v� <color=blue> ch��ng k� khi�n cho color>, h�c ���c v� c�ng <color=blue> bi t� gi� m�t <color>.<enter> nh�n n�n nhi�m v� c�n ��t t�i 40 c�p c�ng ho�n th�nh b�o th�ch nhi�m v� .","B��c ��u ti�n : ��n <color=blue> t�ng th� ba <color> th�y <color=blue> H�u h� ph�p c�ng lu�t �ch c�ch <color>. ti�p nh�n v� ��n <color=blue> ( ki�m c�c th�c ��o ) ng�i v�n ��ng <color> �m s�t gi�n �i�p <color=blue> li�u k� color>.","B��c th� hai : ��n <color=blue> ng�i v�n ��ng <color> ��nh b�i <color=blue> li�u k� color> b�t ���c m�t b�c <color=red> ng�y nh�n b� th� color>.","B��c th� ba : tr� v� <color=blue> t�ng th� ba <color> ��ng <color=red> ng�y nh�n b� th� color> cho <color=blue> c�ng lu�t �ch c�ch <color>, nhi�m v� ho�n th�nh . n�u nh� ng�y nh�n b� th� m�t , c�n l�n n�a b�t ��u nhi�m v� !") 
end; 


function v6() 
Talk(6, "","Ho�n th�nh nhi�m v� sau , b� ��ng c�a v� <color=blue> h� gi�o khi�n cho color>, h�c ���c v� c�ng <color=blue> l�c ma �o�t h�n <color>.<enter> nh�n n�n nhi�m v� c�n ��t t�i 50 c�p c�ng ho�n th�nh h�nh th�ch nhi�m v� .","B��c ��u ti�n : ��n <color=blue> t�ng th� ba <color> th�y <color=blue> T� h� ph�p �oan m�c du� color>. ti�p nh�n v� ��n <color=blue> bi�n kinh thi�t th�p <color> c�u ph��ng h�p nh� ","B��c th� hai : ��n <color=blue> thi�t th�p t�ng th� nh�t <color>, ��nh b�i <color=blue> �ao binh ��i tr��ng , th��ng binh ��i tr��ng <color> ho�c l� <color=blue> cung binh ��i tr��ng <color> �em ��t ���c <color=red> c�i ch�a kh�a <color>, m� ra <color=blue> t�ng th� nh�t ��ch b�o r��ng <color>, m� ra <color=blue> th� nh�t c� quan <color>.","B��c th� ba : ��n <color=blue> thi�t th�p t�ng th� hai <color>, ��nh b�i <color=blue> �ao binh th�ng l�nh <color> ho�c l� <color=blue> cung binh th�ng l�nh <color> �em ��t ���c <color=red> c�i ch�a kh�a <color>, �i�m k�ch <color=blue> t�ng th� hai ��ch b�o r��ng <color>, m� ra <color=blue> th� hai c� quan <color>.","Th� 4 b��c : ��n <color=blue> thi�t th�p t�ng th� ba <color>, ��nh b�i <color=blue> T�ng binh <color> b�t ���c <color=red> c�i ch�a kh�a <color>, �i�m k�ch <color=blue> t�ng th� ba b�o r��ng <color>, m� ra <color=blue> ng��i th� ba c� quan <color> c�u ���c ph��ng h�p nh� ","Th� 5 b��c : tr� v� <color=blue> ng�y nh�n d�y <color>, th�y <color=blue> �oan m�c du� color> ph�c m�nh , nhi�m v� ho�n th�nh . ") 
end; 


function v7() 
Talk(10, "","Ho�n th�nh nhi�m v� sau , b� ��ng c�a v� <color=blue> t�t m�n ph�p v��ng <color>, thu�n l�i xu�t s� <enter> nh�n n�n nhi�m v� c�n ��t t�i 50 c�p c�ng ho�n th�nh c�u ng��i nhi�m v� .","B��c ��u ti�n : ��n <color=blue> t�ng th� ba <color> th�y <color=blue> gi�o ch� ho�n nhan h�ng li�t <color>. ti�p nh�n v� , �i t�m <color=red>5 �em �o�n ki�m <color>, ��n <color=blue> ng�y nh�n th�nh ��ng <color> c�m tr� v� <color=red> da d� s�ch color>.","B��c th� hai : ��n <color=blue> bi�n kinh <color> t�m <color=red>5 �em �o�n ki�m <color>:<enter> thanh th� nh�t # ��n th� r�n ch� th�y <color=blue> kh�c thi�t gi�ng nh� 218,190?<color>, ti�p nh�n v� mang <color=red> ng�n tr�m <color> cho Tr��ng qu� ph� , ��n ph�a ��ng t�m <color=blue> Tr��ng qu� ph� 213,199?<color>, ��ng ng�n tr�m , ��t ���c <color=red> h��ng nang <color>. ��ng h��ng nang cho kh�c thi�t gi�ng nh� , ��t ���c <color=red># gi�u ng�y �o�n ki�m <color>.","Th� hai �em : ��n <color=blue> b�c m�n <color> t�m <color=blue> t�n t� t�i (229,184)<color>, tr� l�i ch�nh x�c m� ng� �em ��t ���c <color=red># �o�n n��c �o�n ki�m '<color>.","Th� ba �em : ��n <color=blue> s�ng b�c <color> t�m <color=blue> ��nh cu�c �� (201,194)<color>, mua ���c <color=red># chuy�n h�n �o�n ki�m '<color>.","Th� t� �em : ��n <color=blue> ��ng b�c b�n <color> t�m <color=blue> ��ng mai (230,190)<color>, ti�p nh�n v� tr� gi�p n�ng t�m ti�u H�i . ��n <color=blue> qu�ng tr��ng <color> t�m ���c <color=blue> ti�u H�i (220,192)<color>, khuy�n h�n v� nh� , ��t ���c <color=red># �i b�n tr�i �o�n ki�m <color>.","Th� n�m �em : ��n <color=blue> t��ng qu�n t� color> t�m <color=blue># t�n kh�t c�i (210,187)<color>, li�n t�c b� th� 3 l�n �em ��t ���c <color=red># di�t h�n �o�n ki�m ' <color>.","B��c th� ba : tr� v� ng�y nh�n d�y , ti�n v�o <color=blue> th�nh ��ng t�ng th� nh�t <color>, ��nh b�i 4 c� <color=blue> r�n ��c tinh , con nh�n tinh , h�t t� tinh , con b� c�p v��ng <color>, theo th� t� ��t ���c <color=blue> thi�n ��a huy�n ho�ng # th�n t�c nh�m t� # giang h� x� t�c # duy ta d�y v��ng kh�u quy�t <color>, ti�p t�c ��n th� 2 t�ng ","Th� 4 b��c : ti�n v�o <color=blue> th�nh ��ng t�ng th� hai <color>, ��nh b�i <color=blue> con b� c�p v��ng <color> �em ��t ���c <color=red> c�i ch�a kh�a <color>, �i�m k�ch <color=blue> b�o r��ng (233,197)<color> �em ��t ���c <color=red> da d� s�ch color>.","Th� 5 b��c : ��ng <color=red> da d� s�ch color> cho <color=blue> ho�n nhan h�ng li�t <color>, nhi�m v� ho�n th�nh . n�u nh� da d� s�ch m�t , c�n l�n n�a b�t ��u nhi�m v� !") 
end; 

function v8() 
Talk(3,"","Th�ng qua tr� l�i s� m�n , b� ��ng c�a v� <color=blue> th�nh gi�o tr��ng l�o <color>, h�c ���c tr�n ph�i tuy�t h�c <color=blue> thi�n ma gi�i th� , th�u thi�n ho�n nh�t v� c�ng , ma di�m th�t s�t <color>.","B��c ��u ti�n : ��t t�i 60 c�p sau , ��n <color=blue> ng�y nh�n d�y t�ng th� ba <color> th�y <color=blue> gi�o ch� color>, th�n th�nh tr� l�i ng�y nh�n d�y .","B��c th� hai : ��a cho m�n ph�i <color=red>50000 ng�n l��ng <color> tr� l�i ng�y nh�n d�y .") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  

function ok() 
end; 
