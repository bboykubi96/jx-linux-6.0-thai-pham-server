-- script viet hoa By http://tranhba.com description: ng�y nh�n d�y gi�o ch� ho�n nhan ho�nh li�t # ng�y nh�n d�y ra s� nhi�m v� # tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/5/19 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nh�p tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-14) 
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
" ��a xu�n b�nh /#tbMasterGift:getGift('tianren')", 
" mu�n m�i d�y nh�ng chuy�n kh�c /oldMain" 
} 
Say("N�m m�i an khang h�ng v��ng ", getn(tbSay), tbSay) 
return 
end 
oldMain() 
end 
function oldMain() 
if (vt06_isactive() ~= 0) then 
Say("T�m ta c� chuy�n g� ?", 2,"Mu�n m�i d�y ��i s� /oldentence","�n m�ng �n s� ti�t , t�i h� �� t�m �� �n s� t�p c�ng cao th� t�p /vt06_prizeenter"); 
return 
end; 

if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 7) then 
Describe("T�m ta c� chuy�n g� ? ", 2, 
" h�c 120 k� n�ng ./lvl120skill_learn", 
" mu�n m�i d�y nh�ng chuy�n kh�c /oldentence" 
); 
return 
end; 

oldentence() 
end; 

function oldentence() 
local UTask_tr = GetTask(4); 
local nFactID = GetLastFactionNumber(); 

if (UTask_tr == 70*256) and (GetFaction() == "tianren") then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetFaction("") 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_tr == 70*256) and (GetTask(8) >= 5*256) and (GetTask(8) < 10*256) then -- script viet hoa By http://tranhba.com  tr��c kia nh�n l�y nh�p m�n nhi�m v� 
SetTask(8,0) 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_tr == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetTask(4,70*256) 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_tr == 80*256 and nFactID == 7 and GetCamp() == 2 and GetFaction() == " m�i v�o giang h� ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("tianren"); 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
end 
elseif (UTask_tr == 70*256 and nFactID == 7 and GetCamp() ~= 4 and GetFaction() == " m�i v�o giang h� ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
end 
end 

local tbDes = {"Mang ngh� ��u s� /#daiyitoushi_main(7)","Mu�n m�i d�y nh�ng chuy�n kh�c /common_talk"}; 

Say("G�n nh�t ta b� b�n nhi�u vi�c , ng��i t�i ��y c� chuy�n g� ? ", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_tr = GetTask(4); 
if (GetTask(39) == 10) and (GetBit(GetTask(40),4) == 0) then -- script viet hoa By http://tranhba.com  th� gi�i nhi�m v� # v� l�m h��ng b�i 
Talk(1,"","��c c� ki�m m�t �i l� tr� a ? b�n gi�o v�n l� ��i kim qu�c d�y , ��c c� ki�m ph�i ng��i ��n h�i l�o ph� chuy�n n�y . h�o , ng��i c�ng ��c c� ki�m n�i , c�c ng��i ch�ng qua l� m�t ��m ng��i � h�p , d�m c�ng ��i kim ph�n kh�ng , tr��c c�n nh�c ��i sau l�i n�i , ha ha ha !") 
Uworld40 = SetBit(GetTask(40),4,1) 
SetTask(40,Uworld40) 
elseif (GetSeries() == 3) and (GetFaction() == "tianren") then 
if (UTask_tr == 60*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com  xu�t s� nhi�m v� kh�i ��ng 
Say("B�n gi�o th�nh th� ch�nh l� m�t quy�n ghi l�i c� kim qu�c n��c d�y �� t�t m�n d�y kinh v�n ��ch <color=Red> da d� s�ch <color> , c�i n�y cu�n da d� s�ch b� nh�m ch�c gi�o ch� phong t�n t�i ph�a sau <color=Red> th�nh ��ng <color> trong , nghe n�i ph�m l� x�ng v�o th�nh ��ng ng��i ��u c� �i v� tr� v� . ng��i th�n l� b�n gi�o ��ch h� gi�o ph�p v��ng , c� can ��m ti�n v�o th�nh ��ng thu h�i da d� s�ch sao ? ", 2,"Thu�c h� tr�ch v� c�nh vay /L60_get_yes","Thu�c h� ch� kh�ng ch�u n�i n�y ��i ��m nhi�m /L60_get_no") 
		elseif (UTask_tr == 60*256+20) and (HaveItem(127) == 1 and HaveItem(128) == 1 and HaveItem(129) == 1 and HaveItem(130) == 1 and HaveItem(131) == 1) then 
DelItem(127) 
DelItem(128) 
DelItem(129) 
DelItem(130) 
DelItem(131) 
SetTask(28,0) -- script viet hoa By http://tranhba.com  �em t� thay ��i l��ng ph�c v� , th�nh trong ��ng s� ti�p t�c s� d�ng 
			SetTask(4,60*256+50)		-- script viet hoa By http://tranhba.com  ������ѶϽ����������պ��Ҳ��ܽ�ʥ�����򻯳�����
AddNote("T�m ���c 5 �em �o�n ki�m sau , h�i thi�n nh�n d�y , v�o th�nh ��ng . ") 
Msg2Player("Ng��i �� c� th� �i v�o th�nh ��ng ") 
Talk(1,"","R�t t�t , b�y gi� ng��i c� th� v�o th�nh ��ng c�m da d� cu�n tr� l�i .") 
		elseif (UTask_tr == 60*256+70) and (HaveItem(132) == 1) then		-- script viet hoa By http://tranhba.com  ��ʦ�������
Talk(2, "L60_prise","Tr�i c�y kia nhi�n ch�nh l� b�n gi�o ��ch th�nh th� # h�o # h�o # l�o phu s� kh�ng nh�n l�m ng��i , l�y ng��i tr��c m�t ��ch v� c�ng c�ng ��m th�c , gi� l�y ng�y gi� , t�t s� c� m�t phen kinh thi�n ��ng ��a ��ch ��i t�c v� # hy v�ng ng��i xu�t s� sau n�y , s� kh�ng tr� th�nh l�o phu ��ch ��ch nh�n # c�p c�p c�p c�p !","Ch�c m�ng ng��i th�nh t�i xu�t s� # ng��i �� b� phong l�m ng�y nh�n d�y ��ch t�t m�n ph�p v��ng , t� nay v� sau c� th� t� do h�nh t�u giang h� n�a/r�i , hy v�ng ng��i c� th� ��i tri�n quy�n c��c , m� ra h�ng �� !") 
elseif (UTask_tr == 80*256) then -- script viet hoa By http://tranhba.com  tr� l�i sau ��ch t� do xu�t nh�p 
check_skill() 
		elseif (UTask_tr > 60*256) and (UTask_tr < 60*256+50) then					-- script viet hoa By http://tranhba.com �Ѿ��ӵ���ʦ������δ�õ���ѶϽ�
Talk(1,""," � ti�n v�o <color=Red> th�nh ��ng <color> thu h�i <color=Red> da d� s�ch <color> tr��c , ng��i tr��c h�t t�m ���c l�u l�c � <color=Red> bi�n kinh <color> trong th�nh <color=Red> n�m �em �o�n ki�m <color> .") 
		elseif (UTask_tr >= 60*256+50) and (UTask_tr <= 60*256+70) then					-- script viet hoa By http://tranhba.com �Ѿ��ӵ���ʦ������δ�õ���Ƥ��
Talk(1,"","<color=Red> da d� s�ch <color> �ang � ph�a sau <color=Red> th�nh ��ng <color> trong .") 
else 
Talk(1,"","T� x�a t�i nay , quy�n cao ch�c tr�ng ng��i �a s� ng��i ch� �� k� , ���ng kim Th�nh th��ng m�c d� ��i v�i l�o phu �n s�ng c� th�m , nh�ng l� nghi k� l�ng s� r�ng t� ch�a ti�u th�t qu� , n�u kh�ng l�i nh� th� n�o �em Th�t c�ng ch�a ph�i ��n d�y trung l�m m�t nho nh� ���ng ch� ��y ? ai # th�i # th�i # th�i # l�o phu ch� c�u kh�ng h� l� tr�i ��t ch�ng gi�m , kh�ng qu�n ���c kia r�t nhi�u s�m ng�n ��ch ph� b�ng �� h�y !") 
end 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(8) == 5*256+10) then		-- script viet hoa By http://tranhba.com  ת���ɵ�ؤ��
-- script viet hoa By http://tranhba.com  Say("Ho�n nhan h�ng li�t # C�i Bang c�ng b�n bang th� kh�ng l��ng l�p , ng��i c�n mu�n b�i kh� b�n gi�o ��i ��u C�i Bang ? c�n th�n ta ph� c�ng phu c�a ng��i #",2,"Th�t xin l�i , nh�ng ta � �� quy�t /defection_yes","Ta c�n l� kh�ng �i /defection_no") 
elseif (GetSeries() == 3) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_tr == 70*256) and (GetTask(8) < 5*256) then -- script viet hoa By http://tranhba.com  tr� l�i s� m�n nhi�m v� 
Talk(1,"return_sele","Gi�o ch� , xu�t s� sau ng��i c�a c� th� tr� v� m�n ph�i ti�p t�c ph�ng chuy�n sao ?") 
	elseif (GetCamp() == 4) and ((UTask_tr == 70*256+10) or (UTask_tr == 70*256+20)) then		-- script viet hoa By http://tranhba.com  �ط�ʦ��������
Say("Chu�n b� xong n�m v�n l��ng sao ?",2,"Chu�n b� xong /return_complete","C�n ch�a chu�n b� xong /return_uncompleted") 
elseif (UTask_tr >= 70*256) then -- script viet hoa By http://tranhba.com  �� xu�t s� 
Talk(1,"","R�t cu�c l� h�u sinh kh� �y a # l�y ng��i tr��c m�t ��ch v� c�ng c�ng ��m th�c , gi� l�y ng�y gi� , t�t s� c� m�t phen kinh thi�n ��ng ��a ��ch ��i t�c v� # hy v�ng ng�y sau ta ng��i s� kh�ng th�nh ��ch nh�n !") 
else 
Talk(1,"","Ch� c�n l� thanh ni�n t�i gi�i ��p trai mu�n gia nh�p b�n gi�o , b�n gi�o c�ng h�t s�c hoan ngh�nh .") 
end 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  k� n�ng �i�u ch�nh t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function check_skill() 
-- script viet hoa By http://tranhba.com  if (HaveMagic(150) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(142) 
-- script viet hoa By http://tranhba.com  AddMagic(148) 
-- script viet hoa By http://tranhba.com  AddMagic(150) 
-- script viet hoa By http://tranhba.com  AddNote("Ng��i h�c ���c tr�n ph�i tuy�t h�c thi�n ma gi�i th� # v� c�ng th�u thi�n ho�n nh�t # ma di�m th�t s�t . ") 
-- script viet hoa By http://tranhba.com  Msg2Player("Ng��i h�c ���c tr�n ph�i tuy�t h�c thi�n ma gi�i th� # v� c�ng th�u thi�n ho�n nh�t # ma di�m th�t s�t . ") 
-- script viet hoa By http://tranhba.com  Say("Ho�n nhan ho�nh li�t # vi s� l�n n�y b� quan kh� t� m�y ng�y , c�i ti�n b�n m�n v� c�ng , b�y gi� truy�n th� cho ng��i . ng��i h�c xong sau �i v� tr��c ngh� ng�i th�t t�t m�t phen , �� tr�nh th��ng t�n ���c kinh m�ch . ",1,"�a t� s� ph� /KickOutSelf") 
-- script viet hoa By http://tranhba.com  else 
Say("Ng��i ngh� �i nam tri�u d� x�t tin t�c sao ?",2,"C� th� thu�c h� c�ng mu�n x�m nh�p giang h� nh�t ph�i . /goff_yes","Thu�c h� c�m gi�c luy�n t�p kh�ng �� /no") 
-- script viet hoa By http://tranhba.com  end 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tr� l�i m�n ph�i t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() 
Talk(1,"","R�t t�t , k� n�ng kh�ng mu�n r�i v�o nam tri�u ��ch c�m d� . ") 
SetTask(4,70*256) 
AddNote("R�i �i ng�y nh�n d�y , ti�p t�c h�nh t�u giang h� ") 
Msg2Player("Ng��i r�i �i ng�y nh�n d�y , ti�p t�c h�nh t�u giang h� ") 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
end 

function defection_yes() -- script viet hoa By http://tranhba.com  chuy�n ph�i , thu h�i nguy�n m�n ph�i v� c�ng k� n�ng 
-- script viet hoa By http://tranhba.com  c� r�i k� n�ng 
n = 0 
	i=135; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ������Ѫ
	i=131; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���̵���
	i=132; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ����ì��
	i=134; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ���̴���
	i=136; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �����ٻ�
	i=137; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��Ӱ�ɺ�
	i=138; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ɽ�
	i=139; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ˮ����
	i=140; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  �ɺ��޼�
	i=141; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ˮ����
	i=142; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ͵�컻��
	i=143; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ħ���
	i=145; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ָ����
	i=146; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ������
	i=147; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ڤ����
	i=148; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ɱ��ȭ
	i=149; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ʴ��Ѫ��
	i=150; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ħ����
	i=254; x = HaveMagic(i); if (x ~= -1) then n = n + x end; DelMagic(i)			-- script viet hoa By http://tranhba.com  ��ζ���
AddMagicPoint(n) 
-- script viet hoa By http://tranhba.com  c� ho�n k� n�ng n�i nghi�p t�c chuy�n m�n ph�i l�u tr�nh 
	SetTask(8,5*256+20)
SetTask(4,75*256) -- script viet hoa By http://tranhba.com  v� nguy�n m�n ph�i l�m c� d�u hi�u 
SetRank(71) 
if (GetRepute() < 200) then 
Msg2Player("B�i v� h�nh ��ng c�ng m�n ph�i b�t trung , danh v�ng gi�m b�t "..GetRepute().." �i�m !") 
AddRepute(-1 * GetRepute()) 
else 
Msg2Player("B�i v� h�nh ��ng c�ng m�n ph�i b�t trung , danh v�ng gi�m b�t 200 �i�m ! ") 
AddRepute(-200) 
end 
AddNote("Bu�ng tha cho ng�y nh�n d�y ��ch k� n�ng v� danh hi�u sau , b�y gi� ng��i c� th� gia nh�p C�i Bang li�u . ") 
Msg2Player("Bu�ng tha cho ng�y nh�n d�y ��ch k� n�ng v� danh hi�u sau , b�y gi� ng��i c� th� gia nh�p C�i Bang li�u . ") 
Talk(1,"KickOutSelf","�� nh� v�y , xin/m�i ph� tr� v� c�ng , ng��i ngh� nh� th� n�o ��u ���c . ") 
end 

function defection_no() 
AddNote("Ng��i bu�ng tha cho gia nh�p C�i Bang . ") 
Msg2Player("Ng��i bu�ng tha cho gia nh�p C�i Bang . ") 
SetTask(8,1*256) -- script viet hoa By http://tranhba.com  v� � �� ph�n b�i s� l�m d�u hi�u , �� ph�ng t��ng lai b�t c� t�nh hu�ng n�o 
end 

function return_sele() 
Say("Ng��i n�i mu�n tr� v� b�n gi�o ?",2,"Tu�n l�nh !/return_yes","Kh�ng . /return_no") 
end; 

function return_yes() 
Talk(2,"","Ngh� ��n b�n gi�o gian kh� ��ch ph�t tri�n qu� tr�nh , b�n gi�o quy ��nh tr� v� b�n gi�o c�n ��ng 5 v�n l��ng ","H�o , �� t� �� mang theo 5 v�n l��ng .") 
	SetTask(4,70*256+20)
AddNote("��ng n�m v�n l��ng tr� v� ng�y nh�n d�y . ") 
Msg2Player("��ng n�m v�n l��ng tr� v� ng�y nh�n d�y . ") 
end; 

function return_no() 
Talk(1,"","Sau n�y tr� l�i ph�c v� b�n gi�o , b�y gi� c�n c� kh�ng l�m xong chuy�n c�a . ") 
end; 

function return_complete() 
if(GetCash() >= 50000) then 
Talk(1,"","R�t t�t , ng��i �� th�nh l�m g�c d�y �� t� k� danh , ta s� h��ng b�n gi�o th�nh gi�o tr��ng l�o c�t nh�c ng��i , kh�ng �� cho ta th�t v�ng .") 
Pay(50000) 
SetFaction("tianren") 
SetCamp(2) 
SetCurCamp(2) 
SetRank(81) 
SetTask(4, 80*256) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(150) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(142) 
-- script viet hoa By http://tranhba.com  AddMagic(148) 
-- script viet hoa By http://tranhba.com  AddMagic(150) 
add_tr(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ng��i �� h�c ���c tr�n ph�i tuy�t h�c # thi�n ma gi�i th� , du ng�y ��i ng�y , ma di�m th�t s�t . ") 
-- script viet hoa By http://tranhba.com  end 
AddNote("Tr� v� ng�y nh�n d�y ") 
Msg2Player(GetName().." tr� v� ng�y nh�n d�y , b� ��ng c�a v� th�nh gi�o tr��ng l�o . ") 
else 
Talk(2,"","Th� n�o ? ng��i ch� mang nhi�u nh� v�y ng�n l��ng ?","Th�t xin l�i , �� cho ta ki�m tra m�t c�i .") 
end 
end; 

function return_uncompleted() 
Talk(1,"","Nhanh l�n m�t ch�t !") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - xu�t s� nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function L60_get_yes() 
Talk(1,""," l�o phu qu� nhi�n kh�ng c� nh�n �i m�t , ng��i ng��c l�i c� ch�t ��m th�c # b�t qu� � ti�n v�o th�nh ��ng tr��c , ng��i tr��c h�t t�m ���c l�u l�c � <color=Red> bi�n kinh <color> d�m <color=Red> n�m �em �o�n ki�m <color> .") 
	SetTask(4, 60*256+20)
AddNote("Th�y ho�n nhan h�ng li�t , nh�n xu�t s� nhi�m v� , ��u ti�n mu�n �i bi�n kinh t�m n�m �em �o�n ki�m . ") 
Msg2Player("Th�y ho�n nhan h�ng li�t , nh�n xu�t s� nhi�m v� , ��u ti�n mu�n �i bi�n kinh t�m n�m �em �o�n ki�m . ") 
end; 

function L60_get_no() 
Talk(1,"","Ch�ng l� ng��i kh�ng ch� tr�ng danh ti�ng sao ?") 
end; 

function L60_prise() 
DelItem(132) 
-- script viet hoa By http://tranhba.com  AddGlobalCountNews(GetName().." th�nh t�i xu�t s� , t� gi� c�c v� d�y h�u xu�i nam giang h� . ", 1) 
Msg2SubWorld("Ng�y nh�n d�y t�n �� "..GetName().." xu�t s� th�nh c�ng , t� gi� c�c v� d�y h�u tr� v� nam ph��ng . ") 
SetRank(71) 
SetTask(28,0) -- script viet hoa By http://tranhba.com  �em t� thay ��i l��ng ph�c v� 
SetTask(4, 70*256) 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
AddNote("Tr� v� ng�y nh�n d�y , �em da d� cu�n cho ho�n nhan h�ng li�t , ho�n th�nh xu�t s� nhi�m v� , th�ng l�m t�t m�n ph�p v��ng ") 
Msg2Player("Ch�c m�ng ng��i th�nh t�i xu�t s� # ng��i �� b� phong l�m ng�y nh�n d�y ��ch t�t m�n ph�p v��ng , danh v�ng gia t�ng 120 �i�m ! ") 
AddRepute(120) 
end; 

function no() 
end 
