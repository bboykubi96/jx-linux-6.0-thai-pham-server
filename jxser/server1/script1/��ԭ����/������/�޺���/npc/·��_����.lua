-- script viet hoa By http://tranhba.com  Thi�u L�m ng��i �i ���ng NPC La H�n ���ng th� t�a huy�n kh� kh�n Thi�u L�m xu�t s� nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 
-- script viet hoa By http://tranhba.com  update by xiaoyang(2004\4\15) Thi�u L�m 90 c�p nhi�m v� 

Include("\\script\\global\\repute_head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")

Include("\\script\\item\\skillbook.lua")

function main() 
if allbrother_0801_CheckIsDialog(206) == 1 then 
allbrother_0801_FindNpcTaskDialog(206) 
return 0; 
end 
UTask_sl = GetTask(7) 
Uworld122 = GetTask(122) 
-- script viet hoa By http://tranhba.com  if (UTask_sl == 70*256) and (Uworld122 == 245) then -- script viet hoa By http://tranhba.com  b�ch t�n l�m xong 90 c�p nhi�m v� sau l�i nh�p m�n ph�i ��ch , tr�c ti�p cho k� n�ng 
-- script viet hoa By http://tranhba.com  Talk(1,"","Huy�n kh� kh�n # a �� �� ph�t , th� ch� qu� nhi�n anh h�ng xu�t ch�ng , n�i n�y c� Thi�u L�m tuy�t ngh� m�t b� , ng�m ng��i ch�m ch� luy�n t�p , kh�ng ch� c� mu�n tr� th�nh v�n t� , c�ng ph�i tr� th�nh Trung Nguy�n v� l�m ��ch ��ng l��ng . ") 
-- script viet hoa By http://tranhba.com  AddMagic("Kim long gi� vu�t ") 
-- script viet hoa By http://tranhba.com  AddMagic("Ho�nh t�o thi�n qu�n ") 
-- script viet hoa By http://tranhba.com  AddMagic("V� t��ng ch�m ") 
-- script viet hoa By http://tranhba.com  Msg2Player("H�c ���c Thi�u L�m k� n�ng kim long gi� vu�t # ho�nh t�o thi�n qu�n # v� t��ng ch�m ") 
-- script viet hoa By http://tranhba.com  SetTask(122,255) 
if(GetSeries() == 0) and (GetFaction() == "shaolin") then 
		if((UTask_sl == 60*256+10) and (HaveItem(217) == 1) and (HaveItem(215) == 1) and (HaveItem(216) == 1) and (HaveItem(214) == 1)) then		-- script viet hoa By http://tranhba.com  �������
L60_prise() 
elseif((UTask_sl == 60*256) and (GetLevel() >= 50)) then -- script viet hoa By http://tranhba.com  xu�t s� nhi�m v� kh�i ��ng 
Say("D�a theo b�n m�n quy ��nh , ph�m l� b�n m�n ngh� ra s� ��ch �� t� ��u ph�i tr�i qua 108 La h�n tr�n ��ch kh�o nghi�m , ng��i ngh� v��t qua �i sao ?",2,"��ng � /L60_get_yes","Kh�ng mu�n /L60_get_no") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Talk(1,"","Thi�u L�m �ang � kim qu�c , h�n h��ng nam h��ng , ph��ng tr��ng s� huynh nh� v�y r�u r� c�ng ��ng !") 
end 
elseif (Uworld122 == 20) then 
Talk(4,"Uworld122_censure","Huy�n b�i v� ��i s� , Thi�u L�m �� t� �ang Hoa S�n ��nh l�i ��i , cho n�n , s� t�n h�i Thi�u L�m danh ti�ng .","C�i n�o ti�u t� t�i ��y ? Thi�u L�m chuy�n c�a kh�ng c�n ng��i nh�ng tay , �i th�i !","T�i h� �i ngang qua Hoa S�n , nh�n th�y kim qu�c cao th� th�n �nh , s� r�ng qu� ph�i b� mai ph�c .","Thi�u L�m xu�t gia �� t� tr�i r�ng kim qu�c , kim qu�n c� c�i g� ��ng t�nh , ch�ng l� ta c� th� kh�ng bi�t kh�ng ? kh�ng n�n n�i b�y , n�u nh� kh�ng �i ta kh�ng kh�ch kh� !") 
elseif (Uworld122 >= 30) and (Uworld122 < 60) then 
Talk(1,"","C�n ��ng n�i n�y a , mu�n ta xu�t th� sao ?") 
elseif (Uworld122 == 70) then 
Talk(7,"U122_prise","��i s� ","��i s� ","T�nh / ch�n , l� ta sai l�m r�i , huy�n kh� kh�n t� kh�ng h��ng ng��i n�o qu� ��u . h�m nay h��ng ti�u huynh �� nh�n l�m !","Ai nha , ��i s� , ta kh�ng d�m a !","T�i sao kh�ng ? c�c h� � n��c s�u l�a n�ng trung c�u c�c �� t� , th�t l� c� t�i t�o chi d�/� .","��i s� d�m l�m d�m ch�u , ti�u t� b�i ph�c .") 
else 
Talk(1,"","Ng��i bi�t c�i g� l� thi�n quy�n quy nh�t sao ? �� l� ch� v� h�c Thi�u L�m b�c ��i tinh th�m , l�y v� s�a thi�n !") 
end 
end; 

function L60_get_yes() 
Talk(1,"","Ti�n v�o ph�t t��ng ph�a sau La h�n tr�n �i v�o c�m # ��c ch�u , thi�n tr��ng , c� g� , b�t vu 4 m�n t�n v�t , sau �� t� ���ng c� tr� v� , m�nh nh�n l�m �i ") 
	SetTask(7,60*256+10)
AddNote("Ti�p nh�n Thi�u L�m xu�t s� nhi�m v� # ti�n v�o La h�n tr�n t�m ���c 4 m�n b�o v�t # ��c ch�u , thi�n tr��ng , c� g� , b�t vu . ") 
Msg2Player("Ti�p nh�n Thi�u L�m xu�t s� nhi�m v� # ti�n v�o La h�n tr�n t�m ���c 4 m�n b�o v�t # ��c ch�u , thi�n tr��ng , c� g� , b�t vu . ") 
end; 

function L60_get_no() 
end; 

function L60_prise() 
Talk(2,"","Ch�c m�ng ng��i �� x�ng qua 108 La h�n tr�n , ng��i c� th� xu�t s� , sau n�y h�nh t�u giang h� , c�u t� gi�p ng��i , h�nh hi�p tr��ng ngh�a , kh�ng th� ki�u ng�o , nh� !","�� t� nh� ") 
DelItem(217) 
DelItem(215) 
DelItem(216) 
DelItem(214) 
SetRank(62) 
SetTask(7,70*256) 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
AddNote(" � La h�n tr�n t�m ���c 4 m�n t�n v�t giao cho huy�n kh� kh�n , ho�n th�nh xu�t s� nhi�m v� , th�ng c�p v� l��ng th�ch t�n , thu�n l�i xu�t s� ") 
Msg2Player("Ch�c m�ng ng��i xu�t s� , ng��i b� ��ng c�a v� v� l��ng th�ch t�n ") 
end; 

function Uworld122_censure() 
SetTask(122,30) -- script viet hoa By http://tranhba.com  thi�t tr� nhi�m v� thay ��i l��ng v� 30 
Msg2Player("Huy�n kh� kh�n kh�ng c� ch� � t�i ng��i , ng��i ch� c� th� �i t�m huy�n bi . ") 
AddNote("Huy�n kh� kh�n kh�ng c� ch� � t�i ng��i , ng��i ch� c� th� �i t�m huy�n bi . ") 
end 

function U122_prise() 
if(GetTask(7) >= 70*256) and (GetTask(7) ~= 75*256) then -- script viet hoa By http://tranhba.com  l� Thi�n v��ng �� t� ho�c xu�t s� �� t� 
Talk(2,"Huy�n kh� kh�n , kim qu�c �ang ti�p t�c ��ng binh , trong ch�n v� l�m nguy�n �em c� m�t phen kinh thi�n ��ng ��a , � n�i n�y l�o t�ng c� m�t b� # Thi�u L�m tuy�t k� # , ��a cho ti�u h�u , hy v�ng ng��i ch�m ch� luy�n c�ng , kh�ng ch� l� tr� th�nh v�n t� �� t� , c�n c� th� ","��i s� ��ch ph�n ph� , ti�u t� th� n�o kh�ng d�m tu�n theo !") 
if (HaveMagic(318) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(318,1) 
end 
if (HaveMagic(319) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(319,1) 
end 
if (HaveMagic(321) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(321,1) 
end 
CheckIsCanGet150SkillTask() 
Msg2Player("H�c ���c Thi�u L�m k� n�ng # ��t Ma �� giang , ho�nh t�o thi�n qu�n , v� t��ng ch�m . ") 
SetTask(122,255) 
else 
SetTask(122,245) -- script viet hoa By http://tranhba.com  ��t ���c danh v�ng ��ch thi�t tr� thay ��i l��ng 245 
end 
add_repute = ReturnRepute(30,100,4) -- script viet hoa By http://tranhba.com  danh v�ng t��ng th��ng # l�n nh�t 30 �i�m , t� 100 c�p kh�i m�i c�p �� gi�m 4% 
AddRepute(add_repute) 
Msg2Player("") 
Msg2Player("C�u ra th��ng # l� hai ng��i , c�ng thi�n t�ng gi�i h�a , ho�n th�nh Thi�u L�m nhi�m v� , danh v�ng gia t�ng . "..add_repute.." �i�m .") 
AddNote("C�u ra th��ng # l� hai ng��i , c�ng thi�n t�ng gi�i h�a , ho�n th�nh Thi�u L�m nhi�m v� . ") 
end 
