-- script viet hoa By http://tranhba.com  th�y kh�i tr� gi�p NPC 
-- script viet hoa By http://tranhba.com  By: Dan_Deng(2003-11-21) 

Include("\\script\\global\\map_helper.lua")
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
npc_name = " ng�o mai " 

function main(sel) 
UTask_cy = GetTask(6) 
player_faction = GetFaction() 
if (player_faction == "cuiyan") then -- script viet hoa By http://tranhba.com  �� t� b�n m�n 
RestoreLife() -- script viet hoa By http://tranhba.com  b�n m�n mi�n ph� tr� li�u 
RestoreMana() 
RestoreStamina() 
Say("Ta v�a sanh ra li�n b� v�t b� , may nh� ch��ng m�n c�u ta , 18 n�m � ch� n�y l�n l�n , n�i n�y c�y c�i ��u ch�n t�t li�u .",7,"C�ng long n�m ��i tho�i /Uworld1000_word","Hi�u r� b�n m�n �i�n c� /faction","Hi�u r� c�c v� t� mu�i /member","Hi�u r� nhi�m v� /task_get","Hi�u r� luy�n c�ng s� tr��ng /map_help","Hi�u r� b�n m�n v� ngh� /skill_help","Kh�ng h�i !/nothing") 
elseif (UTask_cy >= 70*256) then -- script viet hoa By http://tranhba.com  b�n m�n xu�t s� 
if (UTask_cy == 80*256) and (GetTask(1) == 70*256) and (HaveMagic(93) == -1) then -- script viet hoa By http://tranhba.com  tu ch�nh th�y kh�i tr� l�i m�n ph�i sau ��ch m�t BUG , k� n�ng d�u hi�u v� ch�a h�c � t� h�ng ph� �� � 
Talk(1,"","S� t� l�ng c�a t�nh c� ch�t lo�n , kh�ng c�n lo l�ng , b�y gi� t�t l�m !") 
else 
Say("S� t� kh� ���c tr� l�i , l�n n�y t�i nh�n b�n t� mu�i c� chuy�n g� kh�ng ?",6,"Nh� l�i b�n m�n chuy�n c� /faction","Nh� l�i tr��c kia b�n t� mu�i /member","Ta c�n c� th� gi�p c�i g� kh�ng ? /task_get","Hi�u r� luy�n c�ng s� tr��ng /map_help","Hi�u r� b�n m�n v� ngh� /skill_help","Kh�ng h�i !/nothing") 
end 
elseif (player_faction ~= "") then -- script viet hoa By http://tranhba.com  kh�ng ph�i l� b�n m�n xu�t s� # k� tha m�n ph�i # m�n ph�i kh�ng v� v� �ch t�c ch� kh�ng ph�i l� tay m�i # 
Say("Xin h�i ng��i ��n th�y kh�i c�a l� d� h�n c�n l� ph�ng h�u ��y ? c� c�i g� kh�ng hi�u li�n h�i ta .",3,"Hi�u r� qu� ph�i /faction","Hi�u r� th�y kh�i c�c v� t� mu�i /member","Kh�ng h�i !/nothing") 
else -- script viet hoa By http://tranhba.com  tay m�i 
Say("Ng��i t�i ch�i c�n l� t�i b�i s� ? ",4,"Hi�u r� qu� ph�i /faction","Hi�u r� th�y kh�i c�c v� t� mu�i /member","Hi�u r� nh�p m�n �i�u ki�n /task_get","Kh�ng h�i !/nothing") 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - m�n ph�i gi�i thi�u b� ph�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function faction() 
Say("V�y ng��i mu�n ta gi�i thi�u ph��ng di�n n�o ��y ?",5,"M�n ph�i kh�i nguy�n /F1","V� tr� ��a l� /F2","Giang h� ��a v� /F3","M�n ph�i ��c s�c /F4","Kh�ng h�i !/nothing") 
end 

function F1() 
Say("S�ng l�p m�n ph�i t� s� b�i v� b� nam nh�n b�/cha/ch�u t�nh , cho n�n , �n c� � V�n Nam bi�n c�nh , m�t ng�y � tr�n ���ng g�p m�y b� ng��c ��i ��ch c� g�i , li�n d�n nu�i c�ng truy�n th� v� ngh� , th�y kh�i c�a c�ng v� v�y m� s�ng l�p .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function F2() 
Say("N�i n�y t�a l�c t�i ��i L� nh� h�i Th��ng S�n , phong c�nh xinh ��p .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function F3() 
Say("B�n ph�i c�ng ���ng m�n ���c g�i l� v� l�m hai c�a , b�i v� th�n b� m� danh ch�n giang h� , l� nam t� ��c m� ��t . ��i v�i ngo�i nh�n , kh�ng ai bi�t th�y kh�i l� thi�n ���ng c�n l� ��a ng�c .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function F4() 
Say("B�i v� �� t� b�n m�n ng��i ng��i ��u l� tuy�t s�c giai nh�n , cho n�n , �� cho r�t nhi�u nam t� c�ng ��ng t�m . v� v�y , s� t� ��nh bang quy , v� b�o v� th�y kh�i �� t� , ph�m l� mu�n v�o v�o th�y kh�i ��ch nam t� c�ng ph�i c� tuy�t th� v� c�ng , c�ng giao ra m�t m�n hi�m hoi tr�n b�o , ��ng th�i ��i thay m�t kh�ng th� r�i �i th�y kh�i c�a .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - th�nh vi�n gi�i thi�u b� ph�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function member() 
Say("V�y ng��i mu�n bi�t ai �� ?",11,"Ch��ng m�n du�n ng�m kh�i /Myun","H�i ���ng s� gi� ly thu th�y /Mli","Th�y ti�n s� gi� y�n hi�u xinh ��p /Myan","S�c vi s� gi� h� m� tuy�t /Mhe"," l� hoa s� gi� chung linh t� /Mzhong","Xu�n h��ng b� b� /Mchun","N�u lan /Mruo","Phong tr�c /Mfeng","C��i c�c /Mxiao","Ng�o mai /Mao","Kh�ng h�i !/nothing") 
end 

function Myun() 
Say("Ch��ng m�n du�n ng�m kh�i v� tr� # th�y kh�i l�u t�a �� : 35,75<enter> thu� nh� � th�y kh�i trong m�n l�n l�n , bi�t ���ng m�n ���ng m�t tr�n , khi�n n�ng y�u h�n . hai ng��i v��t qua n�ng n� kh� kh�n , r�t c�c �i t�i c�ng nhau , sau ���ng m�n c�ng th�y kh�i c�a c�ng chung ti�n th�i , k�t th�nh li�u ��ng minh .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 

end 

function Mli() 
Say("H�i ���ng s� gi� ly thu th�y <enter> t�nh t�nh cao ng�o , xem th��ng thi�n h� h�t th�y nam nh�n , c� ch�t c�y m�nh kh�ng n�i ��o l� . b�i v� ph�n ��i du�n ng�m kh�i c�ng ���ng m�t tr�n y�u nhau .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function Myan() 
Say("Th�y ti�n s� gi� y�n hi�u xinh ��p , v� tr� # th� ng�c ��nh , t�a �� #: 43, 90<enter> b� ngo�i v�n nh��c , n�i t�m l�i h�t s�c ki�n c��ng . khi c�n nh� k� m�u b� k� ph� di kh� , b�n b�nh ch�t th�m , b� ng��i khi d� m� ch�t . ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function Mhe() 
Say("S�c vi s� gi� h� m� tuy�t . v� tr� # b�ch hoa ��nh . t�a �� : 52, 85<enter> t�nh t�nh �n nhu kh�o l�o , y�u Thi�n v��ng gi�p b�n ph�i khi�n cho d��ng h� , nh�ng l� hai ng��i tu�i t�c ch�nh l�ch c�ch xa # d��ng h� so h� m� tuy�t ��i r�t nhi�u # , d��ng h� m�c d� c�ng y�u n�ng , nh�ng l� d��ng h� kh�ng mu�n bu�ng tha cho Thi�n v��ng gi�p , cu�i c�ng th� nh�t sinh � l�i th�y kh�i c�a , t� t�nh nhi n� c�ng s� nghi�p ��t chung m�t ch� , d��ng h� l�a ch�n ng��i sau , v� v�y d��ng h� th�nh h� m� tuy�t trong l�ng v�nh vi�n �n �au . . ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function Mzhong() 
Say(" l� hoa s� gi� chung linh t� enter> nh� tu�i nh�t , nh�ng l� nh�t c� ti�n �� . cha m� b� ng��i Kim l�m h�i , c�a n�t nh� tan , cho n�n s�u h�n ng��i Kim ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function Mchun() 
Say("Xu�n h��ng b� b� v� tr� # sau v��n hoa t�a �� : 40,74<enter> xu�n h��ng b� b� l� ch��ng m�n ��ch nha ho�n , n�ng ��i v�i ch�ng ta ��c bi�t th�n thi�t .",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function Mruo() 
Say("N�u lan v� tr� # qu�ng tr��ng t�a �� : 48,84 ph� tr�ch : giao d�ch binh kh� ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function Mfeng() 
Say("Phong tr�c v� tr� # qu�ng tr��ng t�a �� : 51,85 ph� tr�ch : giao d�ch trang b� ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function Mxiao() 
Say("C��i ��o v� tr� # qu�ng tr��ng t�a �� : 53,86 ph� tr�ch : giao d�ch thu�c men ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function Mao() 
Say("Ng�o mai ch�nh l� ta ! ",2,"Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nhi�m v� gi�i thi�u b� ph�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function task_get() 
UTask_cy = GetTask(6) 
if (UTask_cy < 10*256) then -- script viet hoa By http://tranhba.com  kh�ng/ch�a v�o c�a 
Say("<#> ng��i tr��c m�t �ang nh�n ��ch nhi�m v� l� ��i m�n �� la hoa , b�y gi� �� #"..UTask_cy.."<#>.",4,"Ti�p t�c m� tr��c m�t ��ch nhi�m v� /T_enroll","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_cy >= 10*256) and (UTask_cy < 20*256) then 
Say("<#> ng��i tr��c m�t ��ch nhi�m v� l� th�y m�a tr�m , b�y gi� �� #"..UTask_cy.."<#>.",4,"Ti�p t�c m� tr��c m�t ��ch nhi�m v� /T_L10","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_cy >= 20*256) and (UTask_cy < 30*256) then 
Say("<#> ng��i tr��c m�t �ang nh�n ��ch nhi�m v� l� ��i m�n �� la hoa , b�y gi� �� #"..UTask_cy.."<#>.",4,"Ti�p t�c m� tr��c m�t ��ch nhi�m v� /T_L20","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_cy >= 30*256) and (UTask_cy < 40*256) then 
Say("<#> ng��i tr��c m�t ��ch nhi�m v� l� v� y ngh� th��ng . b�y gi� �� # "..UTask_cy.."<#>.",4,"Ti�p t�c m� tr��c m�t ��ch nhi�m v� /T_L30","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_cy >= 40*256) and (UTask_cy < 50*256) then 
Say("<#> ng��i tr��c m�t �ang nh�n ��ch nhi�m v� l� ti�u di�t �c ph�ch �i�m th��ng s�n , b�y gi� �� #"..UTask_cy.."<#>.",4,"Ti�p t�c m� tr��c m�t ��ch nhi�m v� /T_L40","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_cy >= 50*256) and (UTask_cy < 60*256) then 
Say("<#> ng��i tr��c m�t �ang nh�n ��ch nhi�m v� l� b�t thi�n t�m th�p �n tr�m , b�y gi� �� #"..UTask_cy.."<#>.",4,"Ti�p t�c m� tr��c m�t ��ch nhi�m v� /T_L50","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_cy >= 60*256) and (UTask_cy < 70*256) then 
Say("<#> ng��i tr��c m�t �ang nh�n ��ch nhi�m v� l� c�m ��a m� cung b� m�t , b�y gi� �� #"..UTask_cy.."<#>.",4,"Ti�p t�c m� tr��c m�t ��ch nhi�m v� /T_L60","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
elseif (UTask_cy >= 70*256) and (UTask_cy < 80*256) then 
Say("<#> ng��i tr��c m�t �ang nh�n ��ch nhi�m v� l� tr� l�i s� m�n , b�y gi� �� #"..UTask_cy.."<#>.",4,"Ti�p t�c m� tr��c m�t ��ch nhi�m v� /T_return","Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
else 
Say("<#> ng��i b�y gi� c� th� t� do ra v�o m�n ph�i , t�m th�i kh�ng c� t�m ��ch nhi�m v� , b�y gi� �� #"..UTask_cy.."<#>.",3,"Hi�u r� nh�ng nhi�m v� kh�c /T_all","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 
end 

function T_all() 
Say("Ng��i ngh� hi�u r� nhi�m v� g� ? ",10,"Nh�p m�n nhi�m v� /T_enroll","Nhi�m v� th�y m�a tr�m /T_L10","Nhi�m v� ��i m�n �� la hoa /T_L20","Nhi�m v� v� y ngh� th��ng /T_L30","Nhi�m v� ti�u tr� �i�m th��ng s�n �c ph�ch /T_L40","Nhi�m v� b�t thi�n t�m th�p �n tr�m /T_L50","Nhi�m v� c�m ��a m� cung /T_L60","Nhi�m v� tr� l�i s� m�n /T_return","Hi�u r� nh�ng v�n �� kh�c /main","Kh�ng h�i !/nothing") 
end 

function T_enroll() 
Talk(1,"t_all","Mu�n nh�p m�n h�c v� ngh� , ch� c�n thu�c t�nh l� th�y h� , kh�ng gia nh�p nh�ng m�n ph�i kh�c , c�p b�c 10 c�p tr� l�n , ��n b� k� tay m�i th�n c�ng b�n m�n hoa khi�n cho ��i tho�i . sau �� , theo th� t� ho�n th�nh 5 c� m�n ph�i nhi�m v� , �em h�c ���c v� c�ng , phong danh hi�u . ho�n th�nh xu�t s� nhi�m v� sau , �em th�nh t�i xu�t s� . ") 
end 

function T_L10() 
Talk(4,"t_all","Sau khi nh�p m�n , c�p b�c 10 c�p tr� l�n , ng��i c� th� ti�p nh�n v� th�y m�a tr�m . ho�n th�nh n�y nhi�m v� , ng��i th�ng l�m tam ph�m hoa khi�n cho , h�c ���c <color=blue> th�y kh�i �ao ph�p c�ng th�y kh�i song �ao <color>. ","B��c ��u ti�n : � <color=blue> th�y kh�i l�u <color> th�y <color=blue> ch��ng m�n du�n ng�m kh�i <color> ti�p nh�n v� �i <color=blue> ��ng nam b�n r�ng c�y <color> t�m <color=red> th�y m�a tr�m <color> . ","Th� 2 b��c : � ��ng nam b�n r�ng c�y ��nh b�i <color=blue> l�a h� color> c�m tr� v� <color=red> th�y m�a tr�m <color> ","Th� 3 b��c : tr� v� <color=blue> th�y kh�i l�u <color> h��ng ch��ng m�n ph�c m�nh <color=blue> du�n ng�m kh�i <color>, ��ng <color=red> th�y m�a tr�m <color> nhi�m v� ho�n th�nh ") 
end 

function T_L20() 
Talk(4,"t_all","Ho�n th�nh nhi�m v� th�y kh�i tr�m sau , c�p b�c 20 tr� l�n , ng��i c� th� ti�p nh�n v� ��i m�n �� la hoa . ho�n th�nh n�y nhi�m v� ng��i �em th�ng l�m <color=blue> nh� ph�m h� hoa khi�n cho color>, h�c ���c <color=red> b�ng t�m b�n tr�i �nh <color> ","B��c ��u ti�n : � <color=blue> th� ng�c ��nh <color>, th�y <color=blue> y�n hi�u xinh ��p <color> ti�p nh�n v� �i <color=blue> t�y b�c b�n <color> h�i <color=red>10 bu�i c�y ��i m�n �� la hoa <color> ","Th� 2 b��c : h�i hoa l�c ph�i c�n th�n <color=blue> ��c t�nh ph�t t�c tr��c <color> c�n tr� v� <color=blue> th� ng�c ��nh <color> gi�i ��c , n�u kh�ng , ��c t�nh ph�t t�n ��n to�n th�n ","Th� 3 b��c : h�i ��n 10 bu�i c�y ��i m�n �� la hoa , tr� v� th� ng�c ��nh ph�c m�nh , ho�n th�nh nhi�m v� ") 
end 

function T_L30() 
Talk(7,"t_all","Sau khi ho�n th�nh nhi�m v� ��i m�n �� la hoa c�ng c�p b�c 30, ng��i c� th� ti�p nh�n v� v� y ngh� th��ng . ho�n th�nh n�y nhi�m v� ng��i �em th�ng l�m nh�t ph�m hoa khi�n cho , c�ng h�c ���c <color=blue> v� ��nh l� hoa <color>. ","B��c ��u ti�n : � <color=blue> b�ch hoa th�nh <color>, th�y <color=blue> h� m� tuy�t <color> ti�p nh�n v� �i <color=blue># �o�n l�o n�ng <color> � <color=blue> ��i L� color> t hi�u r� lo�i <color=blue> v� y ngh� th��ng <color> ��ch b� m�t ","Th� 2 b��c : �i ��i L� �o�n l�o n�ng ch� ph�t hi�n th��ng th� c�a h�n t�m , b�i v� ch�u g�i b� <color=blue># �i�m th��ng s�n <color> ��ch c��ng ��o b�t , �i ngay c�u <color=blue> n�ng <color> . ","Th� 3 b��c : ��n <color=blue> �i�m th��ng s�n th� ph� ��ng <color>, ��nh b�i <color=blue> th� ph� th� l�nh color>, c�u ra ch�u g�i . ","Th� 4 b��c : bi�t lo�i v� y ngh� th��ng c�n ph�i c� <color=blue> ng�n tuy�t c� <color> sinh tr��ng � <color=blue> nh� h�i <color>, <color=red> b�ch th��ng ph��ng �i�p <color> � <color=blue> con b��m tuy�n b�n c�nh <color>, c�ng <color=red> h�ng con giun <color> � <color=blue> v�n n�ng ��nh ph� c�n <color>. ","Th� 5 b��c : ��n nh� h�i t�m <color=blue> thuy�n nh� <color> mua <color=red> ng�n tuy�t c� <color>, ��n con b��m tuy�n c�m b�ch th��ng ph��ng �i�p , � n�ng v�n ��nh ��o con giun ","Th� 6 b��c : �i <color=blue> b�ch hoa �i�n <color> c�m lo�i v� y ngh� th��ng ��ch b� t�ch , n�i cho <color=blue> h� m� tuy�t <color>, ��ng th�i , c�m ng�n tuy�t c� , b�ch th��ng ph��ng �i�p c�ng h�ng con giun cho n�ng , ho�n th�nh . ") 
end 

function T_L40() 
Talk(5,"t_all","Ho�n th�nh nhi�m v� ��ng th�i c�p b�c t�i 40 c�p , ng��i c� th� ti�p nh�n v� tr� �i�m th��ng s�n �c ph�ch . ho�n th�nh n�y nhi�m v� ng��i �em th�ng l�m hoa ti�n s� gi� , h�c ���c <color=blue> h�n b�ng h� th�n <color> ","B��c ��u ti�n : th�y <color=blue> y�n hi�u xinh ��p <color> � <color=blue> ng�y �i�n <color>, ti�p nh�n v� ti�u tr� <color=blue> �c ph�ch color> � <color=blue> ��i L� color> ","Th� 2 b��c : ��n l�n l� t�m <color=blue> �c ph�ch <color>, ph�t hi�n m�t c�i <color=blue> ���ng <color> ti�n v�o m�t ��o ��nh b�i <color=blue> tr� th� c�a h�n <color>, gi�i c�u trong m�t ��o ��ch thi�u n� , ��ng th�i bi�t �c ph�ch b�t m�y c� n��ng th��ng <color=blue># �i�m th��ng s�n <color> . ","Th� 3 b��c : ��n <color=blue># �i�m th��ng s�n #<color>, ��nh b�i <color=blue> tr� th� , h� vi�n , h� v� <color>, b�t ���c <color=red>3 c�i ch�a kh�a <color>, c�u ra <color=blue> thi�u n� color> . ","Th� 4 b��c : tr� l�i <color=blue> Nga Mi ng�y �i�n <color>, th�y y�n hi�u xinh ��p ph�c m�nh , ho�n th�nh . ") 
end 

function T_L50() 
Talk(5,"t_all","Ho�n th�nh nhi�m v� �i�m th��ng s�n nhi�m v� , th� c�p b�c ��t t�i 50 c�p tr� l�n , ng��i c� th� ti�p nh�n v� thi�n t�m th�p . ho�n th�nh n�y nhi�m v� ng��i �em th�ng l�m hoa tinh , h�c ���c <color=blue> tuy�t �nh <color> ","B��c ��u ti�n : th�y <color=blue> ch��ng m�n du�n ng�m kh�i <color> � <color=blue> th�y kh�i l�u <color>, ti�p nh�n v� , tr� gi�p s�ng th�nh t� b�t <color=blue> ��o t�c <color> ��nh c�p <color=red> ng� ��ng Quan �m #<color> ","Th� 2 b��c : ��n <color=blue> s�ng th�nh t� color> c�ng <color=blue> h� vi�n ph��ng tr��ng ��i tho�i <color>, ti�n v�o thi�n t�m th�p , bi�t ��o t�c ti�n v�o <color=blue> thi�n t�m th�p <color>. ","Th� 3 b��c : ti�n v�o thi�n t�m th�p , m�i t�ng l�u ��u ph�i ��nh b�i ��o t�c , �o�t l�i <color=red> ng� ��ng Quan �m #<color>. ","Th� 4 b��c : tr� v� <color=blue> th�y kh�i l�u <color>, th�y du�n ng�m kh�i ph�c m�nh , ho�n th�nh . ") 
end 

function T_L60() 
Talk(6,"t_all","Ho�n th�nh nhi�m v� thi�n t�m th�p sau , c�p b�c ��t t�i 50 c�p , ng��i c� th� ti�p t�c nh�n c�m ��a m� cung nhi�m v� . ho�n th�nh nhi�m v� sau , ng��i b� ��ng c�a v� hoa ti�n , thu�n l�i xu�t s� ","B��c ��u ti�n : th�y <color=blue> xu�n h��ng b� b� color> � <color=blue> sau v��n hoa <color>, ti�p nh�n v� �i <color=blue> c�m ��a <color> t�m ra m�n quy s� th�t . ","Th� 2 b��c : ��u ti�n t�i <color=blue> c�m ��a m� cung <color> t�m ���c m�t kh�i <color=red> ti m�t <color>, sau �� ti�n v�o c�m ��a cu�i c�ng l� <color=blue># �o�n tr��ng c�c <color> ","Th� 3 b��c : c�ng m�t v� <color=blue> v� danh l�o gi� ��i tho�i <color> nghe h�n n�i l�p ph�i s� t� chuy�n c�a , ��t ���c <color=red> m�t phong th� color> ghi ch�p t�t c� m�i chuy�n ","Th� 4 b��c : tr� v� <color=blue> sau v��n hoa sau <color>, c�ng xu�n h��ng b� b� n�i t�m ���c ��ch �� . ","Th� 5 b��c : ��n <color=blue> th�y kh�i l�u <color> mang <color=red> tin/th� color> giao cho <color=blue> ch��ng m�n <color>, nhi�m v� ho�n th�nh ") 
end 

function T_return() 
Talk(3,"t_all","Th�nh m�i sau khi xu�ng n�i , ��ng th�i c�p b�c ��t t�i 60 c�p , ng��i c� th� tr� l�i s� m�n . �em th�ng l�m hoa th�n , h�c ���c tuy�t h�c <color=blue> m�c d� sao r�i , b�ch s�ng bi�n d�ng sinh , b�ng c�t tuy�t t�m <color> ","B��c ��u ti�n : c�p b�c v��t qua 60 c�p sau , th�y <color=blue> du�n ng�m kh�i <color> � <color=blue> ch�nh th�t <color>, xin/m�i n�ng tr� v� th�y kh�i ","Th� 2 b��c : ��ng <color=red>50000 hai <color>, tr� v� th�y kh�i ") 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - k�t th�c -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function nothing() 
end 
