-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p t�m cung d��ng anh # Thi�n v��ng xu�t s� nhi�m v� # tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nh�p tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) l�n n�a thi�t k� tr� l�i m�n ph�i c�ng tr�n ph�i tuy�t h�c t��ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) l�m tr�ng ph�n s� m�n nhi�m v� gia nh�p h�y b� nhi�m v� ch�c n�ng , c�ng v�i c�ng m�i m�n ph�i ��i �ng 

function main() 
-- script viet hoa By http://tranhba.com  if (check_skill() == 0) then 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 
UTask_tw = GetTask(3); 
if (GetTask(39) == 10) and (GetBit(GetTask(40),3) == 0) then -- script viet hoa By http://tranhba.com  th� gi�i nhi�m v� # v� l�m h��ng b�i 
Talk(1,"", 11524) 
Uworld40 = SetBit(GetTask(40),3,1) 
SetTask(40,Uworld40) 
elseif (GetSeries() == 0) and (GetFaction() == "tianwang") then 
		if (UTask_tw == 60*256+40) and (HaveItem(96) == 1) then					-- script viet hoa By http://tranhba.com �õ���������
Talk(3, "L60_prise", 11525, 11526, 11527) 
elseif (UTask_tw == 60*256) and (GetLevel() >= 50) then 
Talk(3, "L60_get", 11528, 11529, 11530) 
elseif (UTask_tw == 80*256) or (UTask_tw == 80) then -- script viet hoa By http://tranhba.com  tr� l�i sau ��ch t� do xu�t nh�p 
Say(11531 ,2,"T�t , xin/m�i bang ch� �n chu�n . /goff_yes","Kh�ng , ta t� nh�n l� c�ng phu v�n ch�a t�i nh� . /no") 
elseif (UTask_tw > 60*256) and (UTask_tw < 70*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c xu�t s� nhi�m v� , ch�a ho�n th�nh 
Talk(1,"", 11532) 
else 
Talk(1,"", 11533) 
end 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(7) == 5*256+10) then		-- script viet hoa By http://tranhba.com  ת����������
-- script viet hoa By http://tranhba.com  Say(11534 ,2,"Kh�ng t� , ta � �� quy�t /defection_yes","Kh�ng , ta c�n l� kh�ng thay ��i ��u Thi�u L�m li�u /defection_no") 
elseif (GetSeries() == 0) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_tw == 70*256) and (GetTask(7) < 5*256) then -- script viet hoa By http://tranhba.com  tr� l�i s� m�n nhi�m v� 
Talk(1,"return_select", 11535) 
	elseif (GetCamp() == 4) and ((UTask_tw == 70*256+10) or (UTask_tw == 70*256+20)) then
Say(11536 ,2,"Chu�n b� xong /return_complete","C�n kh�ng c� chu�n b� xong /no") 
elseif (UTask_tw >= 70*256) and (GetFaction() ~= "tianwang") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"", 11537) 
else 
Talk(1,"", 11538) 
end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  k� n�ng �i�u ch�nh t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function check_skill() 
x = 0 
skillID = 38 -- script viet hoa By http://tranhba.com  B�n C� ch�n th�c 
i = HaveMagic(skillID) 
if (i >= 0) then 
		x = x + 1
DelMagic(skillID) 
AddMagicPoint(i) 
end 
if (x > 0) then -- script viet hoa By http://tranhba.com  n�u c� k� n�ng ph�t sinh bi�n h�a , l� �� xu�ng tuy�n , n�u kh�ng tr� v� ti�p t�c l�u tr�nh 
Say(11539 ,1,"�a t� s� ph� /KickOutSelf") 
return 0 
else 
return 1 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tr� l�i nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() 
Talk(1,"", 11540) 
SetTask(3,70*256) 
AddNote("R�i �i Thi�n v��ng gi�p ti�p t�c h�nh t�u giang h� ") 
Msg2Player("R�i �i Thi�n v��ng gi�p ti�p t�c h�nh t�u giang h� ") 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
end 

function defection_yes() 
-- script viet hoa By http://tranhba.com  c� r�i k� n�ng 
n = 0 
	i=29; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ն����
	i=23; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ����ǹ��
	i=24; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��������
	i=26; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��������
	i=30; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �ط�����
	i=31; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���ƾ�
	i=32; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ����ն
	i=33; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���ľ�
	i=34; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ����ն
	i=35; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��������
	i=36; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ����ս��
	i=37; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �÷�ն
	i=38; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �̹ž�ʽ����ȡ�����ܣ�
	i=40; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �ϻ���
	i=41; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Ѫս�˷�
	i=42; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ������
AddMagicPoint(n) 
-- script viet hoa By http://tranhba.com  c� ho�n k� n�ng n�i nghi�p t�c chuy�n m�n ph�i l�u tr�nh 
	SetTask(7,5*256+20)
SetTask(3,75*256) -- script viet hoa By http://tranhba.com  v� nguy�n m�n ph�i l�m c� d�u hi�u 
SetRank(79) -- script viet hoa By http://tranhba.com  ��u h�m xu�ng l�m tr�n gi�p Nguy�n so�i 
if (GetRepute() < 200) then 
Msg2Player("B�i v� ��i v�i m�n ph�i b�t trung , ng��i danh v�ng gi�m b�t "..GetRepute().." �i�m !") 
AddRepute(-1 * GetRepute()) 
else 
Msg2Player("B�i v� ��i v�i m�n ph�i b�t trung , ng��i danh v�ng gi�m b�t 200 �i�m ! ") 
AddRepute(-200) 
end 
AddNote("D��ng anh ph� tr� ng��i ra ��ch Thi�n v��ng gi�p v� c�ng , �o�t l�i kinh thi�n Nguy�n so�i ��ch ch�c v� , ��ng th�i chi�u c�o thi�n h� ng��i r�i �i Thi�n v��ng gi�p . b�y gi� ng��i c� th� gia nh�p Thi�u L�m li�u . ") 
Msg2Player("D��ng anh ph� tr� ng��i ra ��ch Thi�n v��ng gi�p v� c�ng , �o�t l�i kinh thi�n Nguy�n so�i ��ch ch�c v� , ��ng th�i chi�u c�o thi�n h� ng��i r�i �i Thi�n v��ng gi�p . b�y gi� ng��i c� th� gia nh�p Thi�u L�m li�u . ") 
Talk(1,"KickOutSelf", 11541) 
end 

function defection_no() 
SetTask(7,1*256) -- script viet hoa By http://tranhba.com  v� � �� ph�n b�i s� l�m c� d�u hi�u , �� ph�ng t��ng lai b�t c� t�nh hu�ng n�o 
AddNote("Ng��i bu�ng tha cho gia nh�p Thi�u L�m . ") 
Msg2Player("Ng��i bu�ng tha cho gia nh�p Thi�u L�m . ") 
end 

function return_select() 
Say(11542 ,2,"��ng v�y , ta mu�n h�i thi�n v��ng /return_yes","B� , ta ch�ng qua l� thu�n mi�ng n�i m�t ch�t th�i . /return_no") 
end; 

function return_yes() 
Talk(2,"", 11543, 11544) 
	SetTask(3,70*256+20)
AddNote(" l�y ra 5 v�n l��ng qu�n ph� �ng h� Thi�n v��ng gi�p li�n c� th� tr� l�i m�n ph�i . ") 
Msg2Player(" l�y ra 5 v�n l��ng qu�n ph� �ng h� Thi�n v��ng gi�p li�n c� th� tr� l�i m�n ph�i . ") 
end; 

function return_no() 
Talk(1,"", 11545) 
end; 

function return_complete() 
if(GetCash() >= 50000) then -- script viet hoa By http://tranhba.com  c� 50000 hai 
Talk(1,"", 11546) 
Pay(50000) 
SetTask(3, 80*256) 
SetFaction("tianwang") 
SetCamp(3) 
SetCurCamp(3) 
SetRank(69) 
if (HaveMagic(36) == -1) then 
AddMagic(32) 
AddMagic(41) 
AddMagic(324) 
AddMagic(36) 
Msg2Player("Ng��i h�c ���c Thi�n v��ng gi�p k� n�ng # Thi�n v��ng chi�n � , v� c�ng kh�ng l�ng d� n�o ch�m , huy�t chi�n b�t ph��ng , ng� long quy�t . ") 
end 
AddNote("Tr� l�i Thi�n v��ng gi�p . ") 
Msg2Faction(GetName().." tr� l�i Thi�n v��ng gi�p , b� ��ng c�a v� kinh thi�n Nguy�n so�i ") 
else 
Talk(2,"", 11547, 11548) 
end 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  xu�t s� nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function L60_get() 
Say(11549 , 2,"Thu�c h� nh�t ��nh t�n t�m t�n l�c /L60_get_yes","Thu�c h� s� r�ng kh�ng th� ti�p nh�n nhi�m v� n�y /no") 
end; 

function L60_get_yes() 
Talk(1,"", 11550) 
	SetTask(3, 60*256+20)
AddNote(" � tr�n tr�i v��ng gi�p t�m cung (223, 196) th�y d��ng anh , ti�p nh�n nhi�m v� �i thanh loa ��o c�m h�i thi�n v��ng di th� ") 
Msg2Player(" � tr�n tr�i v��ng gi�p t�m cung (223, 196) th�y d��ng anh , ti�p nh�n nhi�m v� �i thanh loa ��o c�m h�i thi�n v��ng di th� ") 
end; 

function L60_prise() 
DelItem(96) 
Msg2Player("Ch�c m�ng ng��i xu�t s� th�nh c�ng , ng��i b� ��ng c�a v� tr�n bang Nguy�n so�i # danh v�ng gia t�ng 120 �i�m ! ") 
-- script viet hoa By http://tranhba.com AddGlobalCountNews(GetName().." th�nh t�i xu�t s� , t� gi� ��ng m�n s� �� b�t ��u x�ng x�o giang h� . ", 1) 
Msg2SubWorld("Thi�n v��ng "..GetName().." th�nh t�i xu�t s� , t� gi� ��ng m�n huynh �� ti�p t�c x�ng x�o giang h� ") 
AddRepute(120) 
SetRank(79) 
SetTask(3, 70*256) 
SetFaction("") 
SetCamp(4) -- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra Thi�n v��ng gi�p 
SetCurCamp(4) 
AddNote("Tr� v� Thi�n v��ng gi�p t�m cung , �em Thi�n v��ng di th� giao cho bang ch� d��ng anh , ho�n th�nh xu�t s� nhi�m v� . vinh th�ng l�n kinh thi�n Nguy�n so�i .. ") 
end; 

function no() 
end 
