-- script viet hoa By http://tranhba.com description: ph�i Nga Mi thanh hi�u s� th�i # Nga Mi nh�p m�n nhi�m v� #50 c�p nhi�m v� # xu�t s� nhi�m v� # tr� l�i m�n ph�i nhi�m v� # 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/6 
-- script viet hoa By http://tranhba.com update: Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com update: Dan_Deng(2003-07-24), th�m � tr� l�i m�n ph�i � nhi�m v� 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-12) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) l�n n�a thi�t k� tr� l�i m�n ph�i c�ng tr�n ph�i tuy�t h�c t��ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) l�m tr�ng ph�n s� m�n nhi�m v� gia nh�p h�y b� nhi�m v� ch�c n�ng , c�ng v�i c�ng m�i m�n ph�i ��i �ng 
-- script viet hoa By http://tranhba.com  update: xiaoyang(2004\4\19) Nga Mi 90 c�p nhi�m v� 

Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ����Ͷʦ

Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")

Include("\\script\\item\\skillbook.lua")

function main() 

local nNpcIndex = GetLastDiagNpc(); 
local nCurDate = tonumber(GetLocalDate("%Y%m%d%H%M")) 
local szNpcName = GetNpcName(nNpcIndex) 
if NpcName2Replace then 
szNpcName = NpcName2Replace(szNpcName) 
end 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> g�n nh�t ta b� b�n nhi�u vi�c , ng��i t�i ��y c� chuy�n g� ?" 
G_TASK:OnMessage("Nga Mi", tbDailog, "DialogWithNpc") 
if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 4) then 
tbDailog:AddOptEntry("H�c t�p 120 k� n�ng .", lvl120skill_learn) 
end 
tbDailog:AddOptEntry("Mu�n m�i d�y nh�ng chuy�n kh�c ", oldentence) 
tbDailog:Show() 

end 

function oldentence() 
local UTask_em = GetTask(1) 
local nFactID = GetLastFactionNumber(); 

if (UTask_em == 70*256) and (GetFaction() == "emei") then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetFaction("") 
Say("H� th�ng ph�t sinh sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_em == 70*256) and (GetTask(6) >= 5*256) and (GetTask(6) < 10*256) then -- script viet hoa By http://tranhba.com  tr��c kia nh�n l�y nh�p m�n nhi�m v� 
SetTask(6,0) 
Say("H� th�ng ph�t sinh sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_em == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetTask(1,70*256) 
Say("H� th�ng ph�t sinh sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_em == 80*256 and nFactID == 4 and GetCamp() == 1 and GetFaction() == " m�i v�o giang h� ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("emei"); 
Say("H� th�ng ph�t sinh sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
end 
elseif (UTask_em == 70*256 and nFactID == 4 and GetCamp() ~= 4 and GetFaction() == " m�i v�o giang h� ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("H� th�ng ph�t sinh sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
end 
end 

local tbDes = {"Mang ngh� ��u s� /#daiyitoushi_main(4)","Mu�n m�i d�y nh�ng chuy�n kh�c /common_talk"}; 

Say("G�n nh�t ta b� b�n nhi�u vi�c , ng��i t�i ��y c� chuy�n g� ?", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_em = GetTask(1) 
local Uworld125 = GetTask(125) 
if (GetTask(39) == 10) and (GetBit(GetTask(40),1) == 0) then -- script viet hoa By http://tranhba.com  th� gi�i nhi�m v� # v� l�m h��ng b�i 
Talk(1,"","B�n m�n tuy l� n� l�u h�ng ng��i , nh�ng l� qu�c gia h�ng vong th�t phu h�u tr�ch . tr� l�i ch�c ch�n ��c c� minh ch� , Nga Mi nghe t� ng��i ph�n ph� !") 
Uworld40 = SetBit(GetTask(40),1,1) 
SetTask(40,Uworld40) 
elseif (GetSeries() == 2) and (GetFaction() == "emei") then 
if (UTask_em == 80*256) then -- script viet hoa By http://tranhba.com  tr� l�i sau ��ch t� do xu�t nh�p 
check_skill() 
		elseif ((UTask_em == 60*256+50) and (HaveItem(24) == 1)) then		-- script viet hoa By http://tranhba.com �õ�����ָ������ʦ�������
DelItem(24) 
Talk(1,"L60_prise","Ng��i l�n n�y c� th� th�nh c�ng l�m g�c ph�i �o�t l�i b�o v�t tr�n ph�i , c�ng lao kh�ng nh� , l�y tr� tu� c�a ng��i c�ng n�ng l�c , �� c� th� thu�n l�i xu�t s� , ng�y sau h�nh t�u giang h� , c�n ph�i gi� m�nh t� y�u , nh� l�y nh� l�y !") 
elseif (UTask_em == 60*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com  xu�t s� nhi�m v� kh�i ��ng 
DelItem(24) 
Say("Ch��ng m�n t�n v�t <color=Red> kh�i ng�n tay ng�c ho�n <color> , ch�nh l� b�n ph�i t� s� truy�n xu�ng ��ch b�o v�t tr�n ph�i . nh�ng l� � m�y th�p ni�n tr��c , b�n ph�i ra kh�i m�t ph�n �� <color=Red> thanh c�ng <color> , n�ng l� vi s� s� t� , b�i v� ��i v�i vi s� ti�p nh�n ch��ng m�n b�t m�n , cho n�n ��nh c�p <color=Red> kh�i ng�n tay ng�c ho�n <color> , ng��i nguy�n � gi�p b�n ph�i �o�t l�i <color=Red> kh�i ng�n tay ng�c ho�n <color> sao ?" , 2,"Nguy�n � /L60_get_yes","Ch� kh�ng ch�u n�i n�y ��i ��m nhi�m /L60_get_no") 
		elseif (UTask_em == 50*256+80) then													-- script viet hoa By http://tranhba.com 50���������
L50_prise() 
		elseif ((UTask_em == 50*256+50) or (UTask_em == 50*256+60)) and (HaveItem(23) == 0) then
AddEventItem(23) 
Talk(1,"","V� c�ng c�a ng��i danh ti�ng c�ng ng�y c�ng cao , th�t l� b�n ph�i ��ch chi tr� , t� nay v� sau l�m vi�c kh�ng th� t�y � , c�i n�y kinh Kim C��ng mu�n d�n � b�n ng��i !") 
elseif (UTask_em == 50*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com 50 c�p nhi�m v� kh�i ��ng 
DelItem(23) 
Say("Vi s� c�ng <color=Red> th�nh �� tin/th� t��ng t� <color> ��ch tr� tr� <color=Red> t� h�i ��i s� <color> l� ph��ng b�n trong bi�t ��ng , tin/th� t��ng t� khai s�ng v�i T�y D��ng �� nghi�p l�n n�m �ang l�c , c� kim �� n�m tr�m n�m m��i l�m n�m . �� �n m�ng tin/th� t��ng t� ch� t� ��ch th�t t�t ng�y , vi s� chu�n b� ��a cho tin/th� t��ng t� m�t m�n ph�t m�n ch� b�o <color=Red># kim tuy�n t� gi�ng nh� kinh Kim C��ng #<color> l�m qu� t�ng . ng��i nguy�n � gi�p ta �i ��a ph�n n�y qu� t�ng sao ?", 2,"Nguy�n � /L50_get_yes","Ch� kh�ng ch�u n�i n�y ��i ��m nhi�m /L50_get_no") 
elseif (UTask_em > 50*256) and (UTask_em < 60*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c 50 c�p nhi�m v� , ch�a ho�n th�nh b�nh th��ng ��i tho�i 
Talk(1,"","Kinh Kim C��ng ��a sao ?") 
elseif (UTask_em > 60*256) and (UTask_em < 70*256) then -- script viet hoa By http://tranhba.com  xu�t s� nhi�m v� trung ��ch b�nh th��ng ��i tho�i 
Talk(1,"","<color=Red> kh�i ng�n tay ng�c ho�n <color> ch�nh l� b�o v�t tr�n ph�i , l�u l�c b�n ngo�i . nghe n�i g�n nh�t <color=Red> thanh c�ng <color> � <color=Red> Tr��ng giang ng�n ngu�n <color> ph� c�n hi�n th�n , ng��i mu�n h�t th�y c�n th�n !") 
else 
Talk(1,"","Ng� ph�t t� bi # v�a v�o ch�ng ta , c�n c�n gi� c�a quy . ng�m ng��i m�nh kh�e sinh h�c ngh� , kh�ng mu�n c� ph� vi s� k� v�ng !") 
end 
-- script viet hoa By http://tranhba.com 	elseif (UTask_em == 5*256+70) and (HaveItem(17) == 1) and (GetSeries() == 2) and (GetCamp() == 0) then		-- script viet hoa By http://tranhba.com �õ��������⣬�����������
-- script viet hoa By http://tranhba.com  enroll_prise() 
elseif (Uworld125 == 20) and (HaveItem(388) == 1)then 
Talk(7,"Uworld125_lose","S� th�i , ng�i kh�e ","Ng��i l� ...?","T�i h� nh�n ���c Ti�u b� b� ��ch nhi�m v� , mang kh�ng c� ch� thi�n th� t�n v�t cho Nga Mi .","Th�t t�t qu� , kh�ng mu�n m�y tr�m n�m sau , s� t� ��ch th�n c�ng l�i tr� v� Nga Mi . b�ng h�u , �a t� ng��i !","Kh�ng c�n kh�ch kh� !","��y l� Nga Mi ch��ng m�n ��ch l�nh ti�n , c�m �i th�nh �� t�m Ti�u b� b� nh�n l�y th� lao . tr� v� sau Nga Mi , c� th� d�ng l�nh ti�n �i�u ��ng ta ch� n�y ��ch t�t c� l�c l��ng .","# �a t� s� th�i !.") 
elseif (Uworld125 == 30) and (HaveItem(389) == 0)then 
Talk(1,"","Y�n t�m , Nga Mi ��p �ng ng��i �i�u ki�n , tuy�t kh�ng ��i � !") 
AddEventItem(389) 
Msg2Player("B�t ���c Nga Mi l�nh ti�n ") 
elseif (Uworld125 == 40) then 
Talk(5,"Uworld125_finish","S� th�i nh� v�y t�m ta c� chuy�n g� kh�ng ?","Ta r�t nhi�u �� t� b�i v� luy�n t�p kh�ng c� ch� thi�n th� kinh m�ch h�n lo�n , ng��i b� th��ng n�ng .","Th� n�o ? kh�ng th� n�o . ta kh�ng nh�c nh�ch ��n b� t�ch .","# c�i n�y ta bi�t , chuy�n ph�t sinh � ng��i mang b� t�ch ��ch th�i �i�m , ch� c� ng��i h�u duy�n m�i c� th� l�nh ng� ","Th� ra l� nh� v�y ") 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(6) == 5*256+10) then		-- script viet hoa By http://tranhba.com  ת����������
-- script viet hoa By http://tranhba.com  Say("Thanh hi�u s� th�i # b�n m�n m�n quy m�c d� kh�ng kh�i chuy�n ��u h�n ph�i , nh�ng kh�ng th� mang �i b�n m�n b�t k� v� ngh� . ng��i th�t t�nh to�n mu�n ��u nh�p th�y kh�i c�a ? ",2,"Kh�ng t� , ta � �� quy�t /defection_yes","Kh�ng , ta c�n l� kh�ng thay ��i ��u /defection_no") 
elseif (GetSeries() == 2) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_em == 70*256) and (GetTask(6) < 5*256) then -- script viet hoa By http://tranhba.com  tr� l�i s� m�n nhi�m v� 
Talk(5,"return_sele","S� ph� ","Ng��i l�i l�n s�n t�i ch�i a ","��ng v�y , �� t� l�i ngh� t�i � tr�n cao s�n ��ch nh�ng ng�y �� . "," � d� , ta c�ng l� , trong nh�y m�t ng��i �� �i xu�ng n�i . ","Giang h� hi�m �c , th� s� kh� li�u . b�y gi� ta mu�n � l�i l�n n�i . ") 
	elseif (GetCamp() == 4) and ((UTask_em == 70*256+10) or (UTask_em == 70*256+20)) then		-- script viet hoa By http://tranhba.com  �ط�ʦ��������
Say("Chu�n b� xong 5 v�n l��ng sao ?",2,"Chu�n b� xong /return_complete","C�n kh�ng c� chu�n b� xong /return_uncompleted") 
elseif (Uworld125 > 20) and (Uworld125 < 40)then 
Talk(1,"","Nga Mi c�ng c�c h� c�n c� duy�n ph�n , sau n�y hy v�ng c� th� ti�p t�c gi�p m�t tay .") 
elseif (UTask_em < 10*256) and (GetSeries() == 2) then -- script viet hoa By http://tranhba.com  ch�a nh�p m�n 
Talk(1,"","Ta Nga Mi nh�t ph�i , truy�n ��n nay ng�y , �� c� tr�m n�m , �� t� ��ng ��o , nghi�m k�t thi�n duy�n , b�t lu�n l� hay kh�ng x�p v�o m�n t��ng , �� l�n n�i , ��u c� duy�n ng��i .") 
elseif (UTask_em == 70*256) then -- script viet hoa By http://tranhba.com  xu�t s� �� t� # c�n nh�c tr� l�i m�n ph�i ki�m cho # 
Talk(1,"","Ng��i �� xu�t s� , t� nay v� sau h�nh t�u giang h� c�n ph�i gi� m�nh t� y�u !") 
else -- script viet hoa By http://tranhba.com  kh�ng ph�i l� ph�i Nga Mi ��i tho�i 
Talk(1,"","Ta Nga Mi m�c d� l� n� l�u h�ng ng��i , nh�ng c�ng s� kh�ng b�i b�i nh�ng m�n ph�i kh�c .") 
end 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  k� n�ng �i�u ch�nh t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function check_skill() 
-- script viet hoa By http://tranhba.com  if (HaveMagic(92) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(92) -- script viet hoa By http://tranhba.com  ph�t t�m t� h�u 
-- script viet hoa By http://tranhba.com  Msg2Player("Ng��i h�c ���c � ph�t t�m t� h�u �") 
-- script viet hoa By http://tranhba.com  Say("Thanh hi�u s� th�i # vi s� l�n n�y b� quan kh� t� m�y ng�y , m�i sang m�t chi�u � ph�t t�m t� h�u � , b�y gi� truy�n th� cho ng��i . ng��i h�c xong sau �i v� tr��c ngh� ng�i th�t t�t m�t phen , �� tr�nh th��ng t�n ���c kinh m�ch . ",1,"�a t� s� ph� /KickOutSelf") 
-- script viet hoa By http://tranhba.com  elseif (HaveMagic(252) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(252) -- script viet hoa By http://tranhba.com  ph�t ph�p v� bi�n 
-- script viet hoa By http://tranhba.com  Msg2Player("Ng��i h�c ���c � ph�t ph�p v� bi�n �") 
-- script viet hoa By http://tranhba.com  Say("Thanh hi�u s� th�i # vi s� l�n n�y b� quan kh� t� m�y ng�y , m�i sang m�t chi�u � ph�t ph�p v� bi�n � , b�y gi� truy�n th� cho ng��i . ng��i h�c xong sau �i v� tr��c ngh� ng�i th�t t�t m�t phen , �� tr�nh th��ng t�n ���c kinh m�ch . ",1,"�a t� s� ph� /KickOutSelf") 
-- script viet hoa By http://tranhba.com  else 
Say(" l�i mu�n xu�ng n�i du ngo�n ?",2,"��ng v�y , xin m�i s� ph� cho ph�p /goff_yes","Kh�ng ph�i l� , ta c�m gi�c c�ng phu : th�i gian c�n ch�a �� #. /no") 
-- script viet hoa By http://tranhba.com  end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tr� l�i s� m�n t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() -- script viet hoa By http://tranhba.com  tr� l�i sau ��ch t� do xu�t nh�p # ra # 
Talk(1,"","R�t t�t , �n v�a th�y tr��ng m�t tr� .") 
SetTask(1,70*256) 
AddNote("R�i �i Nga Mi , h�nh t�u giang h� ") 
Msg2Player("R�i �i Nga Mi , h�nh t�u giang h� ") 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
end 

function defection_yes() -- script viet hoa By http://tranhba.com  chuy�n ph�i , thu h�i nguy�n m�n ph�i v� c�ng k� n�ng 
-- script viet hoa By http://tranhba.com  c� r�i k� n�ng 
n = 0 
	i=80; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Ʈѩ����
	i=101;x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ������
	i=77; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���ҽ���
	i=79; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �����Ʒ�
	i=81; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���Ҷ
	i=82; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ����ͬ��
	i=83; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ����
	i=84; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ����Ʈ��
	i=85; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  һҶ֪��
	i=86; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ˮ
	i=87; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���ľ�
	i=88; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���𲻾�
	i=89; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �ε�
	i=91; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �������
	i=93; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �Ⱥ��ն�
	i=252;x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���ޱ�
	i=92; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���Ĵ���
AddMagicPoint(n) 
-- script viet hoa By http://tranhba.com  c� ho�n k� n�ng n�i nghi�p t�c chuy�n m�n ph�i l�u tr�nh 
	SetTask(6,5*256+20)
SetTask(1,75*256) -- script viet hoa By http://tranhba.com  v� nguy�n m�n ph�i l�m c� d�u hi�u 
SetRank(74) 
if (GetRepute() < 200) then 
Msg2Player("B�i v� ng��i ��i v�i m�n ph�i ��ch h�nh ��ng b�t trung , danh v�ng gi�m b�t "..GetRepute().." �i�m !") 
AddRepute(-1 * GetRepute()) 
else 
Msg2Player("B�i v� ng��i ��i v�i m�n ph�i ��ch h�nh ��ng b�t trung , danh v�ng gi�m b�t 200 �i�m ! ") 
AddRepute(-200) 
end 
AddNote("Thanh hi�u s� th�i �� ph� v� c�ng , b�t ���c th�nh n� kim ��nh danh hi�u , n�i thi�n h� bi�t �� xem ng��i �u�i ra kh�i Nga Mi , ng��i c� th� gia nh�p th�y kh�i li�u . ") 
Msg2Player("Thanh hi�u s� th�i �� ph� v� c�ng , b�t ���c th�nh n� kim ��nh danh hi�u , n�i thi�n h� bi�t �� xem ng��i �u�i ra kh�i Nga Mi , ng��i c� th� gia nh�p th�y kh�i li�u . ") 
Talk(1,"KickOutSelf","Kh�ng ng� , ta d�y cho ng��i ��ch v� c�ng , ng��i ngh� ph� b� , th�t l� th� s� kh� li�u !") 
end 

function defection_no() 
AddNote("Ng��i bu�ng tha cho gia nh�p th�y kh�i ph�i . ") 
Msg2Player("Ng��i bu�ng tha cho gia nh�p th�y kh�i ph�i . ") 
SetTask(6,1*256) -- script viet hoa By http://tranhba.com  v� � �� ph�n b�i s� l�m d�u hi�u , �� ph�ng t��ng lai b�t c� t�nh hu�ng n�o 
end 

function return_sele() 
Say("Ng��i c� th�nh � , ta kh�ng th� c� tuy�t ",2,"# �a t� s� ph� /return_yes","T�nh / ch�n , kh�ng c�n /return_no") 
end; 

function return_yes() -- script viet hoa By http://tranhba.com  tr� l�i ��ch ki�m tra 
Talk(3,"","# �a t� s� ph� , �� t� phi�u b�c giang h� c�ng ��t ���c m�t ch�t ng�n l��ng , kh�ng hi�u s� m�n c�n sao ?","Kh�ng ngh� t�i ng��i c� ph�n n�y t�m , v�y th� quy�n 50000 hai , s�a ch�a m�t c�i Nga Mi ���ng n�i �i "," l� , �� t� �i chu�n b� ") 
	SetTask(1,70*256+20)
AddNote("Quy�n 500 l��ng b�c tr�ng s�a ch�a Nga Mi s�n ���ng n�i , l� c� th� tr� v� Nga Mi . ") 
Msg2Player("Quy�n 500 l��ng b�c tr�ng s�a ch�a Nga Mi s�n ���ng n�i , l� c� th� tr� v� Nga Mi . ") 
end; 

function return_no() 
Talk(2,"","Giang h� kh�ng ���ng tr� v� , c�n m�nh x�ng ra , �a t� s� ph� � t�t ","Kh�ng quan h� , n�u nh� mu�n tr� l�i , Nga Mi t�y th�i v� ng��i m� ra ") 
end; 

function return_complete() -- script viet hoa By http://tranhba.com  tr� l�i th�nh c�ng 
if (GetCash() >= 50000) then 
Talk(1,"","H�o , ��y l� 5 v�n l��ng , ng��i b� ��ng c�a v� kim ��nh th�nh n� , hy v�ng ng��i c� g�ng tr� gi�p b�n ph�i ph�t d��ng quang ��i .") 
Pay(50000) 
SetTask(1,80*256) 
SetFaction("emei") 
SetCamp(1) 
SetCurCamp(1) 
SetRank(64) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(252) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(88) 
-- script viet hoa By http://tranhba.com  AddMagic(91) 
-- script viet hoa By http://tranhba.com  AddMagic(282) 
-- script viet hoa By http://tranhba.com  AddMagic(252) 
add_em(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ng��i h�c ���c tr�n ph�i tuy�t h�c # ph�t ph�p v� bi�n , b�t di�t kh�ng d�t v� c�ng , ph�t quang chi�u kh�p . ") 
-- script viet hoa By http://tranhba.com  end 
AddNote("�� tr� v� ph�i Nga Mi ") 
Msg2Player(GetName().." b� ��ng c�a v� kim ��nh th�nh n� , tr� v� ph�i Nga Mi . ") 
else 
Talk(2,"","Gi�ng nh� ng��i kh�ng c� mang r�t nhi�u ti�n ","Th�t xin l�i , ta �i c�m ti�n . ") 
end 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - nh�p m�n nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function enroll_prise() -- script viet hoa By http://tranhba.com  nh�p m�n nhi�m v� ho�n th�nh 
Talk(1,"","Ng� ph�t t� bi , n�u ng��i m�t l�ng t�i th�nh , b�n ni h�y thu ng��i l�m �� �� , hy v�ng ng��i m�nh kh�e sinh h�c ngh� , c�n gi� c�a quy , kh�ng mu�n c� ph� vi s� k� v�ng .") 
DelItem(17) 
SetFaction("emei") 
SetCamp(1) 
SetCurCamp(1) 
SetRank(13) 
AddMagic(80) 
AddMagic(101) 
SetRevPos(13, 13) 
SetTask(1, 10*256) 
AddNote("��ng b�ch ng�c nh� � cho thanh hi�u s� th�i , ho�n th�nh nh�p m�n nhi�m v� . . gia nh�p ph�i Nga Mi , tr� th�nh �o v�i ni , h�c ���c tuy�t bay xuy�n v�n , tr� li�u thu�t ") 
Msg2Player("��ng b�ch ng�c nh� � cho thanh hi�u s� th�i , ho�n th�nh nh�p m�n nhi�m v� . ") 
Msg2Player("Hoan ngh�nh gia nh�p ph�i Nga Mi , tr� th�nh �o v�i ni ") 
Msg2Player("H�c ���c tuy�t bay xuy�n v�n v� c�ng '. ") 
Msg2Player("H�c ���c ph�i Nga Mi tuy�t h�c tr� li�u thu�t ' ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 50 c�p nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function L50_get_yes() 
Talk(1,"","<color=Red> t� h�i ��i s� <color> b� quan nhi�u n�m , t�m th��ng kh�ng th�y b�n ngo�i kh�ch , ng��i c� th� �i tr��c t�m s� �� c�a h�n <color=Red> t� v�n ph�p s� <color>. ") 
AddEventItem(23) 
Msg2Player("Ti�p nh�n v� , mang kim tuy�n t� gi�ng nh� kinh Kim C��ng �i th�nh �� tin/th� t��ng t� . ") 
Msg2Player("��t ���c kim tuy�n t� gi�ng nh� kinh Kim C��ng . ") 
	SetTask(1, 50*256+50)
AddNote(" � ch�nh �i�n th�y thanh hi�u s� th�i , ti�p nh�n v� �i tin/th� t��ng t� , ��ng kim tuy�n t� gi�ng nh� kinh Kim C��ng . ") 
end; 

function L50_get_no() 
Talk(1,"","Kia �i t�m h�n �i !") 
end; 

function L50_prise() 
Talk(1,"","Chuy�n n�y ng��i l�m ���c r�t t�t , ng��i thi�n t� th�ng d�nh , ch� c�n ti�p t�c c� g�ng , t��ng lai nh�t ��nh s� h�c c� �i�u th�nh ") 
AddNote("Tr� v� ch�nh �i�n h��ng thanh hi�u s� th�i ph�c m�nh , ho�n th�nh tin/th� t��ng t� nhi�m v� , th�ng l�m t�n hoa thi�n n� , h�c ���c ph�t t�m t� h�u . ") 
SetRank(18) 
SetTask(1, 60*256) 
-- script viet hoa By http://tranhba.com  AddMagic(92) 
add_em(60) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i th�ng l�m t�n hoa thi�n n� , h�c ���c ph�t t�m t� h�u . ") 
AddNote("Nhi�m v� ho�n th�nh , b� ��ng c�a v� t�n hoa thi�n n� ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - xu�t s� nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function L60_get_yes() 
Talk(1,"","Nghe n�i g�n nh�t <color=Red> thanh c�ng <color> � <color=Red> Tr��ng giang ng�n ngu�n <color> ph� c�n hi�n th�n , ng��i mu�n h�t th�y c�n th�n ! ") 
	SetTask(1, 60*256+50)
AddNote(" � ch�nh �i�n th�y thanh hi�u s� th�i , nh�n xu�t s� nhi�m v� , �o�t l�i ch��ng m�n t�n v�t kh�i m�a chi�c nh�n . ") 
Msg2Player("Nh�n xu�t s� nhi�m v� , �o�t l�i ch��ng m�n t�n v�t kh�i m�a chi�c nh�n . ") 
end; 

function L60_get_no() 
Talk(1,"","Xem ra ch� c� th� ��a c�i n�y tr�ch nhi�m n�ng n� giao cho ng��i !") 
end; 

function L60_prise() 
Talk(1, "","Ch�c m�ng ng��i th�nh c�ng xu�t s� , b� ��ng c�a v� th�nh n� . ng�y sau c� th� t� do h�nh t�u giang h� . ng��i c� th� l�a ch�n gia nh�p nh�ng m�n ph�i kh�c ti�p t�c h�c ngh� , c�ng c� th� th�nh l�p bang h�i , ho�c l� l�m m�t ��c h�nh ��ch n� hi�p c�ng r�t uy phong . giang h� ki�m hi�p , tr�i cao ��t r�ng , hy v�ng ng��i m� ra ho�nh �� !") 
Msg2Player("Ch�c m�ng ng��i h�c th�nh , ng��i b� ��ng c�a v� Nga Mi th�nh n� , danh v�ng gia t�ng 120 �i�m ! ") 
-- script viet hoa By http://tranhba.com  AddGlobalCountNews("Nga Mi "..GetName().." th�nh t�i xu�t s� , t� gi� ��ng m�n s� mu�i xu�ng n�i x�ng x�o giang h� ", 1) 
Msg2SubWorld("Nga Mi �� t� "..GetName().." th�nh t�i xu�t s� , t� gi� ��ng m�n s� mu�i xu�ng n�i x�ng x�o giang h� ") 
AddRepute(120) 
SetRank(74) 
SetTask(1, 70*256) 
SetFaction("") -- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra ph�i Nga Mi 
SetCamp(4) 
SetCurCamp(4) 
AddNote("Tr� l�i ch�nh �i�n , ��ng kh�i m�a chi�c nh�n cho thanh hi�u s� th�i , ho�n th�nh xu�t s� nhi�m v� , th�ng l�m th�nh n� ") 
end; 

function no() 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  th� gi�i nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function Uworld125_lose() 
DelItem(388) 
AddEventItem(389) 
SetTask(125,30) 
Msg2Player("Giao ra kh�ng c� ch� thi�n th� , b�t ���c Nga Mi l�nh ti�n . ") 
AddNote("B�t ���c l�nh ti�n , tr� v� th�nh �� t�m Ti�u b� b� d�n t��ng . ") 
end 

function Uworld125_finish() 
if (GetTask(1) >= 70*256) and (GetTask(1) ~= 75*256) then 
Talk(4,"","Xem ra Nga Mi c�ng thi�n th� ��ch duy�n ph�n �� h�t , c�i n�y s� m�ng l� c�a ng��i m�i ��ng !","T�i h� ?","��ng v�y , c�ng ���c ch� c� ng��i m�i c� th� hi�u b�n trong b� t�ch , b�n ni �em truy�n c�ng ng��i trong �� chi�u th�c , hy v�ng ng��i th�nh c�ng , kh�ng mu�n u�ng ph� ta m�t phen kh� t�m !","�� t� nh�t ��nh kh�ng c� ph� k� v�ng c�a ng�i . ng�y sau c� c�i g� ph�n ph� , �� t� nh�t ��nh tu�n theo !") 
if (HaveMagic(328) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(328,1) 
end 
if (HaveMagic(380) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(380,1) 
end 
if (HaveMagic(332) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(332) 
end 
CheckIsCanGet150SkillTask() 
Msg2Player("Ng��i h�c ���c ba nga �� tuy�t , phong ���ng th�y �nh , ph� �� ch�ng sanh ") 
SetTask(125,255) -- script viet hoa By http://tranhba.com  h�c ���c k� n�ng ��ch thi�t tr� thay ��i l��ng 255 
else 
Talk(1,"","Quy�n n�y thi�n th� kh�ng ng��i n�o c� th� tu luy�n , ch� c� th� ��t � tr�i qua l�u ch� h�u nh�n . ng��i kh� c�c nh� v�y , c�i n�y ti�u l� v�t cho ng��i . ","�� t� kia c�ng kh�ng kh�ch kh� !") 
SetTask(125,245) -- script viet hoa By http://tranhba.com  ��t ���c danh v�ng ��ch thi�t tr� thay ��i l��ng 245 
end 
add_repute = ReturnRepute(30,100,4) -- script viet hoa By http://tranhba.com  danh v�ng t��ng th��ng # l�n nh�t 30 �i�m , t� 100 c�p kh�i m�i c�p �� gi�m 4% 
AddRepute(add_repute) 
Msg2Player("Nga Mi thi�n th� thu�n l�i tr� v� , nhi�m v� ho�n th�nh . danh v�ng gia t�ng "..add_repute.." �i�m .") 
AddNote("Nga Mi thi�n th� thu�n l�i tr� v� , nhi�m v� ho�n th�nh . ") 
end 
