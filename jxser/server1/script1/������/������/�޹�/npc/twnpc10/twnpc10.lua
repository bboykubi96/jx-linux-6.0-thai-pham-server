-- script viet hoa By http://tranhba.com description: Thi�n v��ng gi�p t�m cung d��ng anh # Thi�n v��ng xu�t s� nhi�m v� # tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/4/28 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nh�p tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) l�n n�a thi�t k� tr� l�i m�n ph�i c�ng tr�n ph�i tuy�t h�c t��ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) l�m tr�ng ph�n s� m�n nhi�m v� gia nh�p h�y b� nhi�m v� ch�c n�ng , c�ng v�i c�ng m�i m�n ph�i ��i �ng 

Include("\\script\\global\\skills_table.lua")
Include([[\script\event\teachersday06_v\prize_qingyika.lua]]); 
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ����Ͷʦ

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")


function main() 
if (vt06_isactive() ~= 0) then 
Say("T�m ta c� chuy�n g� ?", 2,"Mu�n m�i d�y ��i s� #/oldentence","�n s� , t�i h� �� t�m �� �n s� thi�p c�ng �� cao thi�p li�u /vt06_prizeenter"); 
return 
end; 

local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> ng�y g�n ��y ta c� r�t nhi�u chuy�n mu�n gi�i quy�t , ng��i t�i c� chuy�n g� ?" 
G_TASK:OnMessage("Thi�n v��ng ", tbDailog, "DialogWithNpc") 
if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 1) then 
tbDailog:AddOptEntry("H�c t�p 120 c�p k� n�ng .", lvl120skill_learn) 
end 
tbDailog:AddOptEntry("Mu�n m�i d�y chuy�n kh�c ", oldentence) 
tbDailog:Show() 

end 

function oldentence() 
-- script viet hoa By http://tranhba.com  if (check_skill() == 0) then 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 

UTask_tw = GetTask(3); 
local nFactID = GetLastFactionNumber(); 

if (UTask_tw == 70*256) and (GetFaction() == "tianwang") then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetFaction("") 
Say("H� th�ng ph�t hi�n ch� s� h� �� g�n l�c ch�a tr� !",0) 
return 
elseif (UTask_tw == 70*256) and (GetTask(7) >= 5*256) and (GetTask(7) < 10*256) then -- script viet hoa By http://tranhba.com  tr��c kia nh�n l�y nh�p m�n nhi�m v� 
SetTask(7,0) 
Say("H� th�ng ph�t hi�n ch� s� h� �� g�n l�c ch�a tr� !",0) 
return 
elseif (UTask_tw == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetTask(3,70*256) 
Say("H� th�ng ph�t hi�n ch� s� h� �� g�n l�c ch�a tr� !",0) 
return 
elseif (UTask_tw == 80*256 and nFactID == 1 and GetCamp() == 3 and GetFaction() == " m�i v�o giang h� ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("tianwang"); 
Say("H� th�ng ph�t hi�n ch� s� h� �� g�n l�c ch�a tr� !",0) 
return 
end 
elseif (UTask_tw == 70*256 and nFactID == 1 and GetCamp() ~= 4 and GetFaction() == " m�i v�o giang h� ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("H� th�ng ph�t hi�n ch� s� h� �� g�n l�c ch�a tr� !",0) 
return 
end 
end 
local tbDes = {"Mang ngh� ��u s� /#daiyitoushi_main(1)","Mu�n m�i d�y chuy�n kh�c /common_talk"}; 

Say("Ng�y g�n ��y ta c� r�t nhi�u chuy�n mu�n gi�i quy�t , ng��i t�m ta c� chuy�n g� ?", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_tw = GetTask(3); 
if (GetTask(39) == 10) and (GetBit(GetTask(40),3) == 0) then -- script viet hoa By http://tranhba.com  th� gi�i nhi�m v� # v� l�m h��ng b�i 
Talk(1,"","T�ng tri�u tri�u ��nh ngu xu�n , c�ng ta D��ng gia b�t c�ng ��i thi�n . n�m �� S� v��ng c�ng ph� th�n ta ki�n quy�t di�t t�ng . d��ng anh theo b�t t�i , c�ng mu�n th�c hi�n c�i n�y ch� l�n !") 
Uworld40 = SetBit(GetTask(40),3,1) 
SetTask(40,Uworld40) 
elseif (GetSeries() == 0) and (GetFaction() == "tianwang") then 
		if (UTask_tw == 60*256+40) and (HaveItem(96) == 1) then					-- script viet hoa By http://tranhba.com �õ���������
Talk(3, "L60_prise","Thu�c h� kh�ng c� nh�c s� m�ng , �� �em # Thi�n v��ng di th� # thu h�i , xin/m�i bang ch� xem qua ! ","Th�t t�t qu� # b�t ���c Thi�n v��ng di th� ch�ng nh�ng c� th� b�o to�n b�n bang c�n ng�n c�n li�u m�t cu�c v� l�m h�o ki�p # ng��i l�m r�t t�t # h�m nay kh�i ng��i c� th� t� do x�ng x�o giang h� li�u ?","Ch�c m�ng ng��i th�nh c�ng xu�t s� . ng��i b� ��ng c�a v� kinh thi�n Nguy�n so�i , t� nay v� sau ng��i c� th� t� do x�ng x�o giang h� li�u # hy v�ng ng��i c� th� ph�t huy l�c l��ng , ph�t tri�n ti�n �� !") 
elseif (UTask_tw == 60*256) and (GetLevel() >= 50) then 
Talk(3, "L60_get","Nh� n�m �� , S� v��ng � ��ng ��nh h� kh�i binh , nam kh�ng tri�u t�ng , b�c �� qu�n Kim , b�c n�o anh h�ng # S� v��ng th�n c� sau , ngh�a qu�n t�n b� �� c� cha ta ��i th�nh thi�n v��ng v� l�nh t� , ti�p t�c l�nh ��o kh�i ngh�a . ngh�a qu�n ph�t tri�n t�n m�nh , ��a t�i tri�u ��nh kh�ng ho�ng , ph�i tr�ng binh t�i tr��c ti�u di�t , � �� tr�ng huy�t chi�n trung , cha ta b�t h�nh b� ph�n �� b�n , l�c chi�n b�t khu�t , � thanh loa ��o b� b�t hy sinh ","Chuy�n sau , ta �em cha ��ch y quan # b�i ki�m c�ng m�t quy�n binh th� c�ng nhau ch�n � <color=Red> thanh loa ��o <color>. quy�n kia binh th� ���c ��t t�n l� <color=Red>' Thi�n v��ng di th� <color>, b�n trong kh�ng ch� c� ghi l�i cha ta khi c�n s�ng h�nh qu�n b�y tr�n t�m ��c c�ng m�t mu�n , h�n n�a c�n ghi ch�p c�n k� ��ng ��nh h� ��a khu qu�n s� y�u ��a c�ng th�y l� mu�n t�c , v� v�y ��i v�i b�n bang m� n�i ch�nh l� m�t quy�n h�t s�c tr�ng y�u m�t s�ch . ","Nh�ng l� g�n nh�t kh�ng bi�t b� ng��i n�o �i l�t tin t�c , quy�n s�ch n�y b� kim qu�c d� th�m , b�n h� ph�i ��i l��ng s�t th� �i tr��c thanh loa ��o , mu�n �i c��p �o�t quy�n s�ch n�y . ") 
elseif (UTask_tw == 80*256) or (UTask_tw == 80) then -- script viet hoa By http://tranhba.com  tr� l�i sau ��ch t� do xu�t nh�p 
Say("Th� n�o ? mu�n h�nh t�u giang h� m�t phen ?",2,"��ng v�y , xin m�i bang ch� �n chu�n . /goff_yes","Kh�ng , t� ta luy�n ��ch c�ng phu c�n ch�a �� . /no") 
elseif (UTask_tw > 60*256) and (UTask_tw < 70*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c xu�t s� nhi�m v� , ch�a ho�n th�nh 
Talk(1,"","<color=Red>' Thi�n v��ng di th� <color> b� gi�u � m�t <color=Red> b�o r��ng trong <color>, b�o r��ng gi�u � <color=Red> thanh loa ��o b�c b� <color>, tr��c ph�i t�m ���c <color=Red> m� ra b�o r��ng ��ch c�i ch�a kh�a <color>.") 
else 
Talk(1,"","Kim qu�c cu�ng v�ng ��a mu�n l�t �� trong ch�ng ta nguy�n v� l�m , n�u nh� huynh �� ch�ng ta kh�ng ��ng l�ng , l�m sao c� th� ��i kh�ng ��ch qu�n ��y ") 
end 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(7) == 5*256+10) then		-- script viet hoa By http://tranhba.com  ת����������
-- script viet hoa By http://tranhba.com  Say("D��ng anh # ph�n b�i gi�p ng��i mu�n ph� �i b�n bang to�n b� v� c�ng , ng��i th�t mu�n b�i kh� b�n m�n ��u nh�p ph�i Thi�u l�m ? ",2,"Kh�ng t� , ta � �� quy�t /defection_yes","Kh�ng , ta c�n l� kh�ng thay ��i ��u Thi�u L�m li�u /defection_no") 
elseif (GetSeries() == 0) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_tw == 70*256) and (GetTask(7) < 5*256) then -- script viet hoa By http://tranhba.com  tr� l�i s� m�n nhi�m v� 
Talk(1,"return_select","R�t t�t # h�nh t�u giang h� nh� ph�i gi�p gi�p kh�n kh� ng��i c�a ") 
	elseif (GetCamp() == 4) and ((UTask_tw == 70*256+10) or (UTask_tw == 70*256+20)) then
Say("Ng��i chu�n b� xong 5 v�n l��ng sao ?",2,"Chu�n b� xong /return_complete","C�n kh�ng c� chu�n b� xong /no") 
elseif (UTask_tw >= 70*256) and (GetFaction() ~= "tianwang") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","R�i �i Thi�n v��ng sau m�i ng��i nh� c� gi�ng nh� t� tay ch�n m�t d�ng !") 
else 
Talk(1,"","Thi�n v��ng gi�p kh�ng d�a v�o t�ng kim b�t k� v�a c�ng c� th� ��ng v�ng , th�m ch� ph�t tri�n nhanh ch�ng , ��u l� b�i v� bang ch�ng huynh �� m�t l�ng �o�n k�t ") 
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
Say("Vi s� l�n n�y b� quan suy t�nh m�y ng�y , s�ng l�p chi�u th�c m�i , b�y gi� truy�n cho ng��i . h�c xong sau nh� ph�i t�nh d��ng m�t �o�n th�i gian tr�nh kh�i t�n th��ng g�n m�ch .",1,"�a t� s� ph� /KickOutSelf") 
return 0 
else 
return 1 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tr� l�i nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() 
Talk(1,"","Th�t t�t qu� ! h�nh t�u giang h� ph�i nh� ph�i tr� gi�p kh�n kh� ng��i c�a a ") 
SetTask(3,70*256) 
AddNote("R�i �i Thi�n v��ng gi�p , ti�p t�c h�nh t�u giang h� ") 
Msg2Player("Ng��i �� r�i �i Thi�n v��ng gi�p , ti�p t�c h�nh t�u giang h� ") 
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
Msg2Player("B�i v� h�nh ��ng ��i v�i m�n ph�i b�t trung , ng��i danh v�ng gi�m b�t "..GetRepute().." �i�m !") 
AddRepute(-1 * GetRepute()) 
else 
Msg2Player("B�i v� h�nh ��ng ��i v�i m�n ph�i b�t trung , ng��i danh v�ng gi�m b�t 200 �i�m ! ") 
AddRepute(-200) 
end 
AddNote("D��ng anh ph� ng��i Thi�n v��ng gi�p ��ch v� c�ng , �o�t t�i ng��i kinh thi�n Nguy�n so�i ��ch ch�c v� , ��ng th�i th�ng b�o thi�n h� ng��i �� r�i �i Thi�n v��ng gi�p . b�y gi� ng��i c� th� gia nh�p ph�i Thi�u l�m . ") 
Msg2Player("D��ng anh ph� ng��i Thi�n v��ng gi�p ��ch v� c�ng , �o�t t�i ng��i kinh thi�n Nguy�n so�i ��ch ch�c v� , ��ng th�i th�ng b�o thi�n h� ng��i �� r�i �i Thi�n v��ng gi�p . b�y gi� ng��i c� th� gia nh�p ph�i Thi�u l�m . ") 
Talk(1,"KickOutSelf","Th�t ti�c nu�i , ta mu�n thu tr� v� d�y v� c�ng c�a ng��i # h�y b� ng��i kinh thi�n Nguy�n so�i t�n ") 
end 

function defection_no() 
SetTask(7,1*256) -- script viet hoa By http://tranhba.com  v� � �� ph�n b�i s� l�m c� d�u hi�u , �� ph�ng t��ng lai b�t c� t�nh hu�ng n�o 
AddNote("Ng��i bu�ng tha cho gia nh�p Thi�u L�m . ") 
Msg2Player("Ng��i bu�ng tha cho gia nh�p Thi�u L�m . ") 
end 

function return_select() 
Say("��i v�i # m�t ng��i l�c l��ng c� h�n , mu�n �o�n k�t m�i m�t nh�n t�i c� th� ���c vi�c . b�n bang c�n c� tr�n ph�i tuy�t k� � Kim chung tr�o � , ch� truy�n cho trung th�nh ��ch �� t� . nh� th� n�o , mu�n tr� v� b�n bang sao ?",2,"T�t , ta mu�n h�i thi�n v��ng gi�p /return_yes","Kh�ng , ta ch�ng qua l� thu�n mi�ng n�i m�t ch�t . /return_no") 
end; 

function return_yes() 
Talk(2,"","Th�t t�t qu� , d��i m�t qu�n ta �ang c�ng t�ng qu�n giao chi�n , qu�n ph� ch�a �� , ng��i ��ng 5 v�n l��ng li�n c� th� tr� v� b�n gi�o t�i h�c Kim chung tr�o ","T�t # �� t� chu�n b� m�t ch�t . ") 
	SetTask(3,70*256+20)
AddNote(" l�y ra 5 v�n l��ng qu�n ph� �ng h� Thi�n v��ng gi�p li�n c� th� tr� l�i m�n ph�i . ") 
Msg2Player(" l�y ra 5 v�n l��ng qu�n ph� �ng h� Thi�n v��ng gi�p li�n c� th� tr� l�i m�n ph�i . ") 
end; 

function return_no() 
Talk(1,"","Ta ch�ng qua l� �i ngang qua t�i xem m�t ch�t ��ng m�n m� th�i !") 
end; 

function return_complete() 
if(GetCash() >= 50000) then -- script viet hoa By http://tranhba.com  c� 50000 hai 
Talk(1,"","R�t t�t # hoan ngh�nh ng��i tr� l�i Thi�n v��ng gi�p , ta phong ng��i v� kinh thi�n Nguy�n so�i . ") 
Pay(50000) 
SetTask(3, 80*256) 
SetFaction("tianwang") 
SetCamp(3) 
SetCurCamp(3) 
SetRank(69) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(36) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(32) 
-- script viet hoa By http://tranhba.com  AddMagic(41) 
-- script viet hoa By http://tranhba.com  AddMagic(324) 
-- script viet hoa By http://tranhba.com  AddMagic(36) 
add_tw(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ng��i h�c ���c Thi�n v��ng gi�p k� n�ng # Thi�n v��ng chi�n � , v� c�ng kh�ng l�ng d� n�o ch�m , huy�t chi�n b�t ph��ng , ng� long quy�t . ") 
-- script viet hoa By http://tranhba.com  end 
AddNote("Tr� l�i Thi�n v��ng gi�p . ") 
Msg2Faction(GetName().." tr� l�i Thi�n v��ng gi�p , b� ��ng c�a v� kinh thi�n Nguy�n so�i ") 
else 
Talk(2,"","A ? gi�ng nh� c�n ch�a �� ","Ng��ng ng�ng , ta ki�m tra m�t c�i .") 
end 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  xu�t s� nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function L60_get() 
Say("<color=Red>' Thi�n v��ng di th� <color> tuy�t ��i kh�ng th� r�i v�o ng��i Kim trong tay . ng��i l�p t�c ��n <color=Red> thanh loa ��o <color>, b�t ���c <color=Red>' Thi�n v��ng di th� <color> tr� l�i # l�m ���c ��n sao ?", 2,"Thu�c h� nh�t ��nh t�n t�m t�n l�c /L60_get_yes","Thu�c h� s� r�ng kh�ng th� ti�p nh�n nhi�m v� n�y /no") 
end; 

function L60_get_yes() 
Talk(1,"","<color=Red>' Thi�n v��ng di th� <color> gi�u � m�t <color=Red> b�o r��ng <color>, b�o r��ng gi�u � <color=Red> thanh loa ��o b�c b� <color>, tr��c ph�i t�m ���c <color=Red> m� ra b�o r��ng ��ch c�i ch�a kh�a <color>. ng��i nhanh l�n ng�i thuy�n �i <color=Red> thanh loa ��o <color>. nh� mu�n ng�n v�n c�n th�n !") 
	SetTask(3, 60*256+20)
AddNote(" � tr�n tr�i v��ng gi�p t�m cung (223, 196) th�y d��ng anh , ti�p nh�n nhi�m v� �i thanh loa ��o c�m h�i thi�n v��ng di th� ") 
Msg2Player(" � tr�n tr�i v��ng gi�p t�m cung (223, 196) th�y d��ng anh , ti�p nh�n nhi�m v� �i thanh loa ��o c�m h�i thi�n v��ng di th� ") 
end; 

function L60_prise() 
DelItem(96) 
Msg2Player("Ch�c m�ng ng��i xu�t s� th�nh c�ng , ng��i b� ��ng c�a v� tr�n bang Nguy�n so�i # danh v�ng gia t�ng 120 �i�m ") 
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
