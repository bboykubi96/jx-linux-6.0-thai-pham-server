-- script viet hoa By http://tranhba.com description: ���ng m�n ���ng th� 20 c�p nhi�m v� # xu�t s� nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nh�p tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) l�n n�a thi�t k� tr� l�i m�n ph�i c�ng tr�n ph�i tuy�t h�c t��ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) l�m tr�ng ph�n s� m�n nhi�m v� gia nh�p h�y b� nhi�m v� ch�c n�ng , c�ng v�i c�ng m�i m�n ph�i ��i �ng 

Include("\\script\\global\\skills_table.lua")
Include([[\script\event\teachersday06_v\prize_qingyika.lua]]); 
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ����Ͷʦ
-- script viet hoa By http://tranhba.com dinhhq: new lunar year 2011 
Include("\\script\\vng_event\\LunarYear2011\\npc\\mastergift.lua")

function main() 
if tbVNG_LY2011:isActive() == 1 then 
local tbSay = 
{ 
" t�ng m�a xu�n b�nh /#tbMasterGift:getGift('tangmen')", 
" mu�n m�i d�y nh�ng chuy�n kh�c /oldMain" 
} 
Say("N�m m�i an khang h�ng v��ng ", getn(tbSay), tbSay) 
return 
end 
oldMain() 
end 

function oldMain() 
if (vt06_isactive() ~= 0) then 
Say("T�m ta c� chuy�n g� ?", 2,"Mu�n m�i d�y ��i s� /oldentence","�n m�ng �n s� ti�t , t�i h� �� t�m �� �n s� t�p c�ng cao �� t�p /vt06_prizeenter"); 
return 
end; 

if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 2) then 
Describe("T�m ta c� chuy�n g� ?", 2, 
" h�c 120 k� n�ng ./lvl120skill_learn", 
" mu�n m�i d�y nh�ng chuy�n kh�c /oldentence" 
); 
return 
end; 

oldentence() 
end; 

function oldentence() 
-- script viet hoa By http://tranhba.com  if (check_skill() == 0) then 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 
local UTask_tm = GetTask(2); 
local nFactID = GetLastFactionNumber(); 

if (UTask_tm == 70*256) and (GetFaction() == "tangmen") then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetFaction("") 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_tm == 70*256) and (GetTask(10) >= 5*256) and (GetTask(10) < 10*256) then -- script viet hoa By http://tranhba.com  tr��c kia nh�n l�y nh�p m�n nhi�m v� 
SetTask(10,0) 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_tm == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetTask(2,70*256) 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_tm == 80*256 and nFactID == 2 and GetCamp() == 3 and GetFaction() == " m�i v�o giang h� ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("tangmen"); 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
end 
elseif (UTask_tm == 70*256 and nFactID == 2 and GetCamp() ~= 4 and GetFaction() == " m�i v�o giang h� ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
end 
end 

local tbDes = {"Mang ngh� ��u s� /#daiyitoushi_main(2)","Mu�n m�i d�y nh�ng chuy�n kh�c /common_talk"}; 

Say("G�n nh�t ta b� b�n nhi�u vi�c , ng��i c� chuy�n g� ?", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_tm = GetTask(2); 
local Uworld51 = GetTask(51) 
if (GetTask(39) == 10) and (GetBit(GetTask(40),2) == 0) then -- script viet hoa By http://tranhba.com  th� gi�i nhi�m v� # v� l�m h��ng b�i 
if (GetSex() == 0) then 
Talk(1,"","���ng m�n t� s� d�y d� �� t� kh�ng th� xen v�o ph�a ngo�i chuy�n , . ���ng th� kh�ng d�m ch�ng l�i , phi�n to�i c�ng t� chuy�n ��t ta ��i v�i ��c c� minh ch� ��ch �y n�y ") 
else 
Talk(1,"","���ng m�n t� s� d�y d� �� t� kh�ng th� xen v�o ph�a ngo�i chuy�n , . ���ng th� kh�ng d�m ch�ng l�i , phi�n to�i c�ng t� chuy�n ��t ta ��i v�i ��c c� minh ch� ��ch �y n�y ") 
end 
Uworld40 = SetBit(GetTask(40),2,1) 
SetTask(40,Uworld40) 
elseif (Uworld51 == 30) then -- script viet hoa By http://tranhba.com  r�a s�ch oan khu�t nhi�m v� ti�n h�nh trung 
Talk(4,"Uworld51_40","Ch��ng m�n , t�i h� nghe n�i ng��i c�ng m�t tr�n c�ng t� c� th�nh ki�n , hi�n t�i h�n b� ng��i hi�u l�m .","��y l� ���ng gia chuy�n c�a , c�ng ng��i kh�ng li�n quan !","Ch��ng m�n , m�t tr�n c�ng t� l� c�a ng��i ��ch th�n x��ng th�t ?.!","H� , ti�n kh�ch ! ") 
elseif (Uworld51 == 80) and (HaveItem(377) == 1) then -- script viet hoa By http://tranhba.com  r�a s�ch oan khu�t nhi�m v� # �� �o�t l�i b� k�p 
Talk(8,"Uworld51_90","Ch��ng m�n , Thi�u L�m cao t�ng g�p n�n �� �i�u tra r� r�ng , ng�y nh�n d�y �o�t ���c b�n gi�o b� k�p sau , �m to�n Thi�u L�m cao t�ng , c�i n�y b� k�p t� b�t nhi�m c�ng t� ti�t l� ra ngo�i !","C�i g� ? t�i sao c� th� nh� v�y ?","B�t nhi�m lo l�ng m�t tr�n l� con trai l�n , s� t��ng lai s� c�ng h�n tranh �o�t ch�c ch��ng m�n . cho n�n , h�n th��ng xuy�n c�ng kim qu�c b� khi�n cho B�ch c�ng t� li�n l�c , tr�m s�ch cho ng�y nh�n d�y !","Ng�y nh�n d�y l�y ���c s�ch n�y sau , ph�i 2 cao th� �i �m s�t Thi�u L�m cao t�ng , l�n n�y , b�n h� �ang chu�n b� �m s�t C�i Bang cao th� . t�i h� �i �o�t l�i b�n m�n b� k�p , xin/m�i ch��ng m�n kh�ng mu�n phi�n l�ng .","B�t nhi�m l�i nh� v�y ? th�t l� ngh�ch t� a ","Ch��ng m�n b�t gi�n , b�t nhi�m c�ng t� ch�ng qua l� nh�t th�i h� �� , t�i h� th�nh c�u ch��ng m�n l��n quanh h�n m�t l�n !","��i ngh�ch b�t ��o ��ch ng��i , t� t�i kh� tr�nh kh�i , ��ng ngh� th�a k� ch�c ch��ng m�n ."," l�m phi�n ng��i thay ta an �i m�t tr�n , th� ra l� ta tr�ch l�m h�n !") 
elseif (GetFaction() == "tangmen") and (GetSeries() == 1) then 
		if ((UTask_tm >= 20*256+60) and (UTask_tm <= 20*256+70) and (HaveItem(41) == 1)) then		-- script viet hoa By http://tranhba.com  20���������
Talk(5, "L20_prise","��y l� u mu�i mu�i ��ch h�ng v�ng , th� n�o � ng��i n�i n�y ?","��y l� s� c� g�i ta giao cho ch��ng m�n ��ch , n�ng �� tha th� ch��ng m�n !","U mu�i mu�i n�ng th�t tha th� ta ? n�ng th�t nguy�n � v� nh� ? l� ng��i n�i d�ng/u�ng n�ng sao ?","Chuy�n n�y l� ��i s� huynh an b�i , �� t� c�ng kh�ng c� l�m c�i g� ","B�t k� n�i th� n�o , ng��i gi�p vi s� gi�i khai ��i n�y l�n nh�t t�m k�t , c�ng lao kh�ng nh� , vi s� tuy�t s� kh�ng b�c ��i ng��i .") 
		elseif (UTask_tm == 60*256+60) and (HaveItem(49) == 1) then		-- script viet hoa By http://tranhba.com  ��ʦ�������
Talk(3, "L60_prise","Ch��ng m�n , ta � tr�c ti trong ��ng chi t�m ���c c�i thanh n�y r�ch ki�m , n� kh�ng ph�i l� trong truy�n thuy�t ��ch th�t tinh tuy�t m�nh ki�m �i ?","��y ch�nh l� th�t tinh tuy�t m�nh ki�m # ��ng xem n� t�n ph� , gi� tr� c�a n� �ang � v�i ng��i ��i v�i n� ��ch l�y b� . ng��i bu�ng tha cho kim ti�n c�ng b�o t�ng m� l�a ch�n n� , n�i r� ng��i � ��y ��i m�t c�m d� ��ch th�i �i�m , v�n c� th� gi� v�ng ��i v�i b�n m�n ��ch trung th�nh , r�t t�t # r�t t�t # ng��i �� th�ng qua kh�o nghi�m , c� th� thu�n l�i xu�t s� ","Ch�c m�ng ng��i th�nh t�i xu�t s� # ng��i �� b� phong l�m ���ng m�n ��ch thi�n th� th�n v� , t� nay v� sau c� th� t� do h�nh t�u giang h� n�a/r�i # ng��i c� th� l�a ch�n gia nh�p m�n ph�i kh�c ti�p t�c h�c ngh� , c�ng c� th� �i khai s�ng bang h�i ph�t tri�n m�nh giang h� th� l�c , hay ho�c l� l�m m�t ��c h�nh kh�ch c�ng kh�ng l�i a # ki�m hi�p giang h� , tr�i cao h�i kho�t , hy v�ng ng��i c� th� ��i tri�n quy�n c��c , m� ra h�ng �� ") 
		elseif (UTask_tm == 60*256+70) then				-- script viet hoa By http://tranhba.com ��ʦ����
Talk(3, "L60_fail","Ta mu�n th�t tinh tuy�t m�nh ki�m ��y ?", "............","Ng��i nh� th� kh�ng qua n�i v�ng b�c t�i b�o ��ch c�m d� , ta th� n�o y�n t�m �� cho ng��i xu�t s� ��y ? n�i kh�ng ch�ng c� m�t ng�y ng��i s� v� l�i �ch l�n h�n n�a , m� ph�n b�i b�n m�n !") 
		elseif (UTask_tm == 60*256+80) then
if (GetCash() >= 20000) then 
Talk(1,"","Xem ng��i th�nh t�m h�i c�i , ta li�n s� cho ng��i m�t l�n c� h�i , ng��i nh�t ��nh ph�i n�a x�ng m�t l�n tr�c ti ��ng , thu h�i th�t tinh tuy�t m�nh ki�m .") 
Pay(20000) 
				SetTask(2, 60*256+20)
AddNote("Ph� 20000 hai , c�u xin ch��ng m�n khoan th� , ��n tr�c ti ��ng thu h�i th�t tinh tuy�t m�nh ki�m . ") 
Msg2Player("Ph� 20000 hai , c�u xin ch��ng m�n khoan th� , ��n tr�c ti ��ng thu h�i th�t tinh tuy�t m�nh ki�m . ") 
else 
Talk(1,"","H�i h�n c�ng v� �ch , mau ��a ti�n ��y l�i n�i !") 
end 
		elseif (UTask_tm == 60*256+90) then
if (GetCash() >= 40000) then 
Talk(1,"","H� , ta s� cho ng��i m�t l�n c� h�i , ng��i �i m�t l�n tr�c ti ��ng , thu h�i th�t tinh tuy�t m�nh ki�m ..") 
Pay(40000) 
				SetTask(2, 60*256+20)
AddNote("Ph� 40000 hai , c�u xin ch��ng m�n khoan th� , ��n tr�c ti ��ng thu h�i th�t tinh tuy�t m�nh ki�m . ") 
Msg2Player("Ph� 40000 hai , c�u xin ch��ng m�n khoan th� , ��n tr�c ti ��ng thu h�i th�t tinh tuy�t m�nh ki�m . ") 
else 
Talk(1,"","Mau ph� 40000 hai , ��n tr�c ti ��ng thu h�i th�t tinh tuy�t m�nh ki�m .. ") 
end 
elseif ((UTask_tm == 60*256) and (GetLevel() >= 50) and (GetFaction() == "tangmen")) then -- script viet hoa By http://tranhba.com  xu�t s� nhi�m v� kh�i ��ng 
Say("Ng��i � ��y b�n m�n h�c ngh� �� l�u , vi s� mu�n thi m�t thi ng��i , m�t ��ng r�ng tr�c ch� s�u c� m�t <color=Red> tr�c ti ��ng <color> , n�u nh� ng��i c� th� � <color=Red> tr�c ti ��ng <color> trung l�y ���c m�t thanh <color=Red> th�t tinh tuy�t m�nh ki�m <color> , li�n c� th� thu�n l�i xu�t s� ", 2,"Ti�p nh�n kh�o nghi�m /L60_get_yes","T�m kh�ng ch�p nh�n /no") 
elseif (UTask_tm == 80*256) then -- script viet hoa By http://tranhba.com  tr� l�i sau ��ch t� do xu�t nh�p 
Say(" l�i mu�n ��c giang h� chuy�n li�u ? ",2,"��ng v�y , xin m�i ch��ng m�n cho �� t� h�nh t�u giang h� /goff_yes","�� t� tu luy�n kh�ng �� , c�n c� g�ng luy�n c�ng . /no") 
		elseif (UTask_tm > 20*256) and (UTask_tm < 20*256+60) then					-- script viet hoa By http://tranhba.com �Ѿ��ӵ�20��������δ���
Talk(1,"","Kh�ng bi�t u mu�i mu�i qu� kh�e kh�ng ? ai # cho t�i h�m nay , n�ng v�n kh�ng ch�u tha th� ta ��y c� ca ca !") 
elseif (UTask_tm >= 30*256) and (UTask_tm <= 60*256) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 20 c�p nhi�m v� , ch�a nh�n ���c xu�t s� nhi�m v� 
Talk(1,"","Ng��i gi�p vi s� gi�i khai ��i n�y l�n nh�t t�m k�t , vi s� tuy�t s� kh�ng b�c ��i ng��i !") 
elseif (UTask_tm > 60*256) and (UTask_tm < 70*256) then -- script viet hoa By http://tranhba.com  �� nh�n ���c xu�t s� nhi�m v� , ch�a ho�n th�nh 
Talk(1,"","Ch� c�n ng��i c� th� � <color=Red> tr�c ti ��ng <color> trung thu h�i m�t thanh <color=Red> th�t tinh tuy�t m�nh ki�m <color> , coi nh� th�ng qua xu�t s� kh�o nghi�m ") 
else -- script viet hoa By http://tranhba.com  �� nh�p m�n , ch�a nh�n 20 c�p nhi�m v� # thi�u t�nh ��i tho�i # 
Talk(1,"","B�n m�n k� thu�t t� kh�ng truy�n ra ngo�i , v� nh� m�n h� �� t� c� ng��i d�m ti�t l� tuy�t k� , t�t theo nh� m�n quy x� tr� , tuy�t kh�ng nh� tha cho !") 
end 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(10) == 5*256+10) then		-- script viet hoa By http://tranhba.com  ת���ɵ��嶾��
-- script viet hoa By http://tranhba.com  Say("���ng th� # mu�n ��u nh�p n�m ��c ? c�n ph�i bi�t b�n m�n kh�ng cho mang ngh� kh�c ��u , tr� phi ng��i tr��c t� �i ph� b� b�n m�n tuy�t ngh� . ng��i kh�ng h� n�a l�n n�a suy t�nh m�t ch�t sao ? ",2,"Kh�ng t� , ta � �� quy�t /defection_yes","Ta c�n l� kh�ng �i n�m ��c t�nh / ch�n /defection_no") 
elseif (GetSeries() == 1) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_tm == 70*256) and (GetTask(10) < 5*256) then -- script viet hoa By http://tranhba.com  tr� l�i s� m�n nhi�m v� 
Say(" l�n n�y tr� l�i , ng��i ngh� tr� v� ���ng m�n sao ?",2,"Tu�n l�nh !/return_yes","Kh�ng . /return_no") 
	elseif (GetCamp() == 4) and ((UTask_tm == 70*256+10) or (UTask_tm == 70*256+20)) then		-- script viet hoa By http://tranhba.com  �ط�ʦ��������
Say("Chu�n b� xong 5 v�n sao ?",2,"�� chu�n b� xong /return_complete","Kh�ng chu�n b� xong /return_uncompleted") 
elseif (Uworld51 >= 90) then -- script viet hoa By http://tranhba.com  �� ho�n th�nh � r�a s�ch oan khu�t � nhi�m v� 
Talk(1,"","��ng ch�t b�t nhi�m c� b� cha ch�u v�i ta !") 
elseif (UTask_tm == 70*256) and (GetFaction() ~= "tangmen") then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","Ng��i xu�t s� sau t�t h�n t� tr� n�n , kh�ng th� �� cho ng��i ta coi th��ng b�n m�n ��ch c�ng phu !") 
else 
Talk(1,"","Th� nh�n c�ng �em ta ���ng m�n nh�n th�nh ��m r�ng hang h� , �em ta ���ng th� nh�n th�nh h� n� v� th��ng ��ch ma ��u , h� #?") 
end 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  k� n�ng �i�u ch�nh t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function check_skill() 
x = 0 
skillID = 51 -- script viet hoa By http://tranhba.com  thanh m�c c�ng 
i = HaveMagic(skillID) 
if (i >= 0) then 
		x = x + 1
DelMagic(skillID) 
AddMagicPoint(i) 
end 
if (GetFaction() == "tangmen") and (GetTask(2) == 80*256) and (HaveMagic(253) == -1) then -- script viet hoa By http://tranhba.com  tr� l�i s� m�n th� v� k� n�ng m�i 
AddMagic(253) 
Msg2Player("Ng��i h�c ���c kh�ng ��c th�c c�t . ") 
Say("Ta �� b� quan tu luy�n nhi�u ng�y , s�ng t�o ra m�t chi�u kh�ng ��c th�c c�t , h�m nay ta truy�n cho ng��i . ng��i h�c xong sau , c�n ch� � ngh� ng�i , tr�nh kh�i th��ng c�ng kinh m�ch !",1,"# �a t� s� ph� /KickOutSelf") 
return 0 
elseif (x > 0) then -- script viet hoa By http://tranhba.com  n�u c� k� n�ng ph�t sinh bi�n h�a , l� �� xu�ng tuy�n , n�u kh�ng tr� v� ti�p t�c l�u tr�nh 
Say("Ta �� b� quan tu luy�n nhi�u ng�y , s�ng t�o ra m�t chi�u kh�ng ��c th�c c�t , h�m nay ta truy�n cho ng��i . ng��i h�c xong sau , c�n ch� � ngh� ng�i , tr�nh kh�i th��ng c�ng kinh m�ch !",1,"# �a t� s� ph� /KickOutSelf") 
return 0 
else 
return 1 
end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tr� l�i m�n ph�i t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function goff_yes() 
Talk(1,"","H�o , �i �i , ph�i nh� ph�i kh�ng th� c�ng t� gi�o k�t giao ") 
SetTask(2,70*256) 
AddNote("R�i �i ���ng m�n , h�nh t�u giang h� ") 
Msg2Player("R�i �i ���ng m�n , h�nh t�u giang h� ") 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
end 

function defection_yes() -- script viet hoa By http://tranhba.com  chuy�n ph�i , thu h�i nguy�n m�n ph�i v� c�ng k� n�ng 
-- script viet hoa By http://tranhba.com  c� r�i k� n�ng 
n = 0 
	i=45; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ������
	i=43; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���Ű���
	i=44; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���ŵ���
	i=47; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �����
	i=48; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ����
	i=50; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ׷�ļ�
	i=51; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ľ������ȡ����
	i=54; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���컨��
	i=55; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �㶾��
	i=57; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���Ǻ���
	i=58; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���޵���
	i=249;x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  С��ɵ�
	i=253;x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  Ԧ��ʴ��
AddMagicPoint(n) 
-- script viet hoa By http://tranhba.com  c� ho�n k� n�ng n�i nghi�p t�c chuy�n m�n ph�i l�u tr�nh 
	SetTask(10,5*256+20)
SetTask(2,75*256) -- script viet hoa By http://tranhba.com  v� nguy�n m�n ph�i l�m c� d�u hi�u 
SetRank(66) 
if (GetRepute() < 200) then 
Msg2Player("B�i v� c�ng b�n ph�i kh�ng tr�ng , ng��i danh v�ng gi�m b�t "..GetRepute().." �i�m !") 
AddRepute(-1 * GetRepute()) 
else 
Msg2Player("B�i v� c�ng b�n ph�i kh�ng tr�ng , ng��i danh v�ng gi�m b�t 200 �i�m ! ") 
AddRepute(-200) 
end 
AddNote("���ng th� thu h�i ng��i ���ng m�n v� c�ng , b�y gi� ng��i c� th� gia nh�p Ng� ��c gi�o li�u . ") 
Msg2Player("���ng th� thu h�i ng��i ���ng m�n v� c�ng , b�y gi� ng��i c� th� gia nh�p Ng� ��c gi�o li�u . ") 
Talk(1,"KickOutSelf","V� ph�ng ng�a b�n m�n tuy�t h�c l� ra ngo�i , ng��i �� quy�t t�m gia nh�p n�m ��c , ta s� ph�i thu h�i ���ng m�n tuy�t h�c i!") 
end 

function defection_no() 
AddNote("Ng��i h�y b� gia nh�p Ng� ��c gi�o ��ch � t��ng ") 
Msg2Player("Ng��i h�y b� gia nh�p Ng� ��c gi�o ��ch � t��ng ") 
SetTask(10,1*256) -- script viet hoa By http://tranhba.com  v� � �� ph�n b�i s� l�m d�u hi�u , �� ph�ng t��ng lai b�t c� t�nh hu�ng n�o 
end 

function return_yes() 
Talk(3,"","��i v�i , �� t� � giang h� c�n kh�ng c� g� danh ti�ng , mu�n m�i c�c v� s� b� ch� gi�o !","D�a theo m�n quy , ng��i mu�n ��ng n�m v�n l��ng tr� l�i m�n ph�i !"," l� , �� cho �� t� chu�n b� m�t ch�t !") 
	SetTask(2,70*256+20)
AddNote("��ng n�m v�n l��ng li�n l�p t�c c� th� tr� v� ���ng m�n ") 
Msg2Player("��ng n�m v�n l��ng li�n l�p t�c c� th� tr� v� ���ng m�n ") 
end; 

function return_no() 
Talk(2,"","Ta mu�n nhi�u phi�u b�c giang h� m�t �o�n th�i gian .","�� nh� v�y , ng��i ph�i b�o tr�ng !") 
end; 

function return_complete() 
if(GetCash() >= 50000) then 
Talk(1,"","R�t t�t , ng��i c� ph�n n�y th�nh t�n , ta l�m sao c� th� c� tuy�t !") 
Pay(50000) 
SetTask(2,80*256) 
SetRank(76) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(48) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(249) 
-- script viet hoa By http://tranhba.com  AddMagic(58) 
-- script viet hoa By http://tranhba.com  AddMagic(341) 
-- script viet hoa By http://tranhba.com  AddMagic(48) 
add_tm(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ng��i h�c ���c tr�n ph�i tuy�t h�c # m�i m�t , Ti�u l� phi �ao , thi�n la ��a v�ng , t�n hoa phi�u ") 
-- script viet hoa By http://tranhba.com  end 
SetFaction("tangmen") 
SetCamp(3) 
SetCurCamp(3) 
AddNote("�� tr� v� ���ng m�n ") 
Msg2Player(GetName().." tr� v� ���ng m�n , th�ng l�m l�c c�c tr��ng l�o . ") 
else 
Talk(2,"","Ng��i r� r�ng kh�ng c� chu�n b� xong !","Th�t xin l�i , ta ki�m tra m�t c�i .") 
end 
end; 

function return_uncompleted() 
Talk(1,"","Kh�ng sai , ti�p t�c chu�n b� �i !") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 20 c�p nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function L20_prise() 
DelItem(41) 
SetRank(27) 
SetTask(2, 30*256) 
-- script viet hoa By http://tranhba.com  AddMagic(303) 
add_tm(30) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i tr� th�nh ���ng m�n h� v� , h�c ���c gai ��c c�t ") 
AddNote("��ng kim h�ng v�ng cho ���ng th� ch��ng m�n , ho�n th�nh ���ng u nhi�m v� , th�ng l�m h� v� ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - xu�t s� nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function L60_get_yes() 
	SetTask(2, 60*256+20)
AddNote(" � ��i s�nh ( 508, 322) , th�y ���ng th� , nh�n <color=red> xu�t s� nhi�m v� <color>, ��n tr�c ti ��ng thu h�i th�t tinh tuy�t m�nh ki�m ") 
Msg2Player(" � ��i s�nh th�y ���ng th� , nh�n xu�t s� nhi�m v� , ��n tr�c ti ��ng thu h�i th�t tinh tuy�t m�nh ki�m ") 
end; 

function L60_prise() 
DelItem(49) 
Msg2Player("Ch�c m�ng ng��i h�c th�nh , c� th� xu�t s� . ng��i b� ��ng c�a l� tr�i th� th�n v� , danh v�ng gia t�ng 120 �i�m ") 
-- script viet hoa By http://tranhba.com  AddGlobalCountNews(GetName().." th�nh t�i xu�t s� , t� gi� c�c v� ��ng m�n h�nh t�u giang h� . ", 1) 
Msg2SubWorld("���ng m�n "..GetName().." h�c th�nh xu�t s� , t� bi�t c�ng t�n huynh mu�i , h�nh t�u giang h� ") 
AddRepute(120) 
SetRank(66) 
SetTask(2, 70*256) 
SetFaction("") -- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra ���ng m�n 
SetCamp(4) 
SetCurCamp(4) 
AddNote("Tr� v� ���ng m�n , ��ng th�t tinh tuy�t m�nh ki�m cho ���ng th� ch��ng m�n , ho�n th�nh xu�t s� nhi�m v� , th�ng l�m ng�y th� th�n v� ") 
end; 

function L60_fail() 
Say("Ch��ng m�n t�c gi�n , ng��i n�n l�m c�i g� b�y gi� ?", 2,"Ti�n t�i tay c�n nh� v�y /L60_faila","Xin/m�i ch��ng m�n khoan th� /L60_failb") 
end; 

function L60_faila() 
	SetTask(2,60*256+90)
Talk(1,""," l�p t�c ��ng 4 v�n l��ng , sau �� �i tr�c ti ��ng thu h�i th�t tinh tuy�t m�nh ki�m !") 
end; 

function L60_failb() 
	SetTask(2,60*256+80)
Talk(1,"","Xem ng��i th�nh t�n s�a ��i , ta li�n cho ng��i m�t c�i c� h�i , l�p t�c ��ng 2 v�n l��ng , sau �� �i tr�c ti ��ng thu h�i th�t tinh tuy�t m�nh ki�m .") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - th� gi�i nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Uworld51_40() 
SetTask(51,40) 
Msg2Player("Xem ra kh�ng c� c�ch n�o khuy�n ���ng th� li�u , ng��i quy�t ��nh �i t�m ���ng m�t tr�n ��ch s� ph� ���ng h�c gi�i quy�t chuy�n n�y ") 
end 

function Uworld51_90() 
DelItem(377) 
SetTask(51,90) 
Msg2Player("Ch�n t��ng hi�u , ���ng th� cu�i c�ng bi�t tr�ch l�m ���ng m�t tr�n . nhanh �i n�i cho ���ng m�t tr�n c�ng t� ") 
AddNote("Ch�n t��ng hi�u , ���ng th� cu�i c�ng bi�t tr�ch l�m ���ng m�t tr�n . ") 
end 

function no() 
end 
