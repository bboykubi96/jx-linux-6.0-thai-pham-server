-- script viet hoa By http://tranhba.com  n�m ��c ng��i �i ���ng NPC gi�o ch� h�c m�t lang qu�n xu�t s� nhi�m v� # tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-05) 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) n�ng vi�t tr� l�i s� m�n nhi�m v� , c�ng l�n n�a s�a sang l�i ch�n v�n 

Include("\\script\\global\\skills_table.lua")
Include([[\script\event\teachersday06_v\prize_qingyika.lua]]); 
Include("\\script\\task\\lv120skill\\head.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ����Ͷʦ
-- script viet hoa By http://tranhba.com dinhhq: new lunar year 2011 
Include("\\script\\vng_event\\LunarYear2011\\npc\\mastergift.lua")

function main() 
if tbVNG_LY2011:isActive() == 1 then 
local tbSay = 
{ 
" ��a b�nh sinh nh�t /#tbMasterGift:getGift('wudu')", 
" mu�n m�i d�y nh�ng chuy�n kh�c /oldMain" 
} 
Say("N�m m�i an khang h�ng v��ng ", getn(tbSay), tbSay) 
return 
end 
oldMain() 
end 
function oldMain() 
if allbrother_0801_CheckIsDialog(4) == 1 then 
allbrother_0801_FindNpcTaskDialog(4) 
return 0; 
end 
if (vt06_isactive() ~= 0) then 
Say("T�m ta c� chuy�n g� ", 2,"Mu�n m�i d�y ��i s� /oldentence","H� �n s� l� , ta �� t�m �� �n s� t�p c�ng �� cao t�p /vt06_prizeenter"); 
return 
end; 

if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 3) then 
Describe("T�m ta c� chuy�n g� ", 2, 
" h�c 120 c�p k� n�ng ./lvl120skill_learn", 
" mu�n m�i d�y chuy�n kh�c /oldentence" 
); 
return 
end; 

oldentence() 
end; 

function oldentence() 
local UTask_wu = GetTask(10) 
local nFactID = GetLastFactionNumber(); 

if (UTask_wu == 70*256) and (GetFaction() == "wudu") then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetFaction("") 
Say("H� th�ng ph�t hi�n ch� s� h� , �� g�n l�c ch�a tr� !",0) 
return 
elseif (UTask_wu == 70*256) and (GetTask(2) >= 5*256) and (GetTask(2) < 10*256) then -- script viet hoa By http://tranhba.com  tr��c kia nh�n l�y nh�p m�n nhi�m v� 
SetTask(2,0) 
Say("H� th�ng ph�t hi�n ch� s� h� , �� g�n l�c ch�a tr� !",0) 
return 
elseif (UTask_wu == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetTask(10,70*256) 
Say("H� th�ng ph�t hi�n ch� s� h� , �� g�n l�c ch�a tr� !",0) 
return 
elseif (GetTask(2) == 70*256) and (GetTask(10) == 70*256) then -- script viet hoa By http://tranhba.com  chuy�n m�n ph�i sai l�m tu ch�nh 
SetTask(2,75*256) 
Say("H� th�ng ph�t hi�n ch� s� h� , �� g�n l�c ch�a tr� !",0) 
return 
elseif (UTask_wu == 80*256 and nFactID == 3 and GetCamp() == 2 and GetFaction() == " mu�n m�i d�y chuy�n kh�c ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("wudu"); 
Say("H� th�ng ph�t hi�n ch� s� h� , �� g�n l�c ch�a tr� !",0) 
return 
end 
elseif (UTask_wu == 70*256 and nFactID == 3 and GetCamp() ~= 4 and GetFaction() == " mu�n m�i d�y chuy�n kh�c ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("H� th�ng ph�t hi�n ch� s� h� , �� g�n l�c ch�a tr� !",0) 
return 
end 
end 

local tbDes = {"Mang ngh� ��u s� /#daiyitoushi_main(3)","Mu�n m�i d�y nh�ng chuy�n kh�c /common_talk"}; 


Say("H�m nay ta l�i r�t nhi�u chuy�n t�nh mu�n gi�i quy�t , ng��i t�i c� chuy�n g� ", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_wu = GetTask(10) 
if (GetTask(39) == 10) and (GetBit(GetTask(40),10) == 0) then -- script viet hoa By http://tranhba.com  th� gi�i nhi�m v� # v� l�m h��ng b�i 
Talk(1,"","��c c� ki�m mu�n li�n t�ng kh�ng kim ? n�i kh�ng u�ng ? b�n gi�o c�ng kim qu�c nguy�n l� m�t thi�t li�n minh . nh�ng th� n�y th� ��n l�c b�c ��ch c� c�i g� sao ") 
Uworld40 = SetBit(GetTask(40),10,1) 
SetTask(40,Uworld40) 
elseif (GetSeries() == 1) and (GetFaction() == "wudu") then 
		if (UTask_wu == 60*256+20) and (HaveItem(222) == 1) then		-- script viet hoa By http://tranhba.com  ���������
Talk(2,"L60_prise","Thu�c h� �� �o�t t�i gi�o ph�i ��ch b�o v�t , xin/m�i tr�i ch� xem m�t ch�t #","H�o ! th�t t�t qu� ! t�t v� c�ng # qu� nhi�n kh�ng c� c� ph� ta k� ng�m . th�t l� kh�ng ch�u Ng� ��c gi�o ph�i ' ��ch danh hi�u , b�y gi� ng��i c� th� thu�n l�i xu�t s� ! sau h��ng d� v� l�m li�u kh�ng n�n qu�n b�n gi�o ") 
elseif (UTask_wu == 60*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com  xu�t s� nhi�m v� 
Say("B�n gi�o c�ng nh�n ��ng ph�i nguy�n b�t c�ng ��i thi�n . 10 n�m tr��c b�n gi�o c�ng nh�n ��ng ph�i ti�n h�nh m�t l�n �c chi�n . b�n gi�o b� �m to�n , b�n gi�o ��ch tr�n gi�o chi b�o �ch ��c ch�u b� nh�n ��ng ph�i �o�t �i , thu � Nh�n ��ng s�n ��ch d� gi�c trong ��ng . chuy�n n�y m�t con �� cho ta c�nh c�nh v�i nghi ng� , th�t s� l� b�n gi�o ��ch k� s� ��i nh�c . n�u nh� ng��i ngh� xu�t s� l�i c�a , �i ngay �em �ch ��c ch�u cho ta �o�t l�i t�i , n�u kh�ng kh�ng b�n n�a . ",2,"Thu�c h� �em �em h�t to�n l�c �o�t l�i tr�n gi�o chi b�o /L60_get_yes","�� t� n�ng l�c c� h�n , s� r�ng kh�ng th� ho�n th�nh nhi�m v� n�y ! /no") 
elseif (UTask_wu == 80*256) then -- script viet hoa By http://tranhba.com  tr� l�i sau ��ch t� do xu�t nh�p 
Say("Ng��i ngh� xu�t s� ��ng kh�ng ? th�i �i�m ��n # c�ng l� th�i �i�m �� cho ng��i Trung nguy�n s� xem m�t ch�t �� t� b�n m�n ��ch l�i h�i ",2," l� # �a t� gi�o ch� /goff_yes","�� t� t� nh�n kh�ng m�t kh�ng tinh , s� r�ng mu�n c� ph� gi�o ch� li�u #/no") 
else 
Talk(1,"","Kh�ng n�n nh�n C�i Bang t� x�ng l� v� l�m �� nh�t bang , th�t ra th� Thi�u L�m m�i l� # h� , coi nh� l� �� nh�t cao th� c�ng kh� tr�nh ���c ta ��c d��c . ") 
end 
-- script viet hoa By http://tranhba.com 	elseif (UTask_wu == 5*256+20) then			-- script viet hoa By http://tranhba.com  ת�������
-- script viet hoa By http://tranhba.com  Talk(1,"defection_complete","H�c m�t lang qu�n # c�p c�p c�p c�p , cho ta l�m r�t t�t , vinh hoa ph� qu� kh�ng thi�u ���c ng��i #") 
-- script viet hoa By http://tranhba.com 	elseif (GetSeries() == 1) and (GetTask(2) == 5*256+10) and (HaveMagic(76) >= 0) then		-- script viet hoa By http://tranhba.com  ��ʦ�����ţ�����嶾���ջ�ȫ������
-- script viet hoa By http://tranhba.com  Say("H�c m�t lang qu�n # mu�n v�o ���ng m�n ? ch�ng l� b�n m�n v� c�ng c�n ch�a �� m�nh , ng��i l�i mu�n ��u ch�y ���ng m�n ? ",2,"�� t� ch� l� mu�n h�c tr�m ���ng m�n tuy�t k� t�i l�m g�c d�y quang ��i /defection_yes","Th�t xin l�i , �� t� bi�t sai r�i /no") 
elseif (GetSeries() == 1) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_wu == 70*256) and ((GetTask(2) < 5*256) or (GetTask(2) == 75*256)) then -- script viet hoa By http://tranhba.com  tr� l�i s� m�n nhi�m v� 
Say("Ng��i ngh� tr� l�i s� m�n ? chuy�n n�y n�i ��i c�ng l�n n�i nh� th� c�ng nh� . ch� c�n ng��i c� th� r� r�ng n�m gi� nh�ng th� kia quy lu�t li�n c� th� quy�t ��nh . ",2,"Th�nh gi�o ch� chi�u c� /return_yes","Th�nh gi�o ch� �� cho ta mu�n m�t c�i /no") 
	elseif (GetCamp() == 4) and ((UTask_wu == 70*256+10) or (UTask_wu == 70*256+20)) then			-- script viet hoa By http://tranhba.com  �ط������С�����Ϊ70*256+20��������70*256+10��ֵ
Say("Ng��i n�i nh�ng th� kia c�ng �� chu�n b� xong ch�a ",2,"Chu�n b� xong /return_complete","Xin/m�i cho th�m �� t� m�t ch�t th�i gian /return_uncompleted") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Talk(1,"","Cho ph�p b�n ph�i �� t� l�n nhau t� �i h� ��c l� b�n ph�i b�n trong quy . ng��i n�o t��ng ��i m�nh s� sinh t�n h� ") 
end 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  k� n�ng �i�u ch�nh t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com function check_skill() 
-- script viet hoa By http://tranhba.com  x = 0 
-- script viet hoa By http://tranhba.com  skillID = 61 -- script viet hoa By http://tranhba.com  n�m ��c ca t�ng ph�p 
-- script viet hoa By http://tranhba.com  i = HaveMagic(skillID) 
-- script viet hoa By http://tranhba.com  if (i >= 0) then 
-- script viet hoa By http://tranhba.com 		x = x + 1
-- script viet hoa By http://tranhba.com  DelMagic(skillID) 
-- script viet hoa By http://tranhba.com  AddMagicPoint(i) 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  if (x > 0) then -- script viet hoa By http://tranhba.com  n�u c� k� n�ng ph�t sinh bi�n h�a , l� �� xu�ng tuy�n , n�u kh�ng tr� v� ti�p t�c l�u tr�nh 
-- script viet hoa By http://tranhba.com  Say("H�c m�t lang qu�n # vi s� l�n n�y b� quan kh� t� m�y ng�y , �em b�n m�n v� ngh� l�m m�t phen ch�nh ��n , b�y gi� truy�n th� cho ng��i . ng��i h�c xong sau �i v� tr��c ngh� ng�i th�t t�t m�t phen , �� tr�nh th��ng t�n ���c kinh m�ch . ",1,"�a t� s� ph� /KickOutSelf") 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - chuy�n m�n ph�i t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function defection_complete() 
Msg2Player("Hoan ngh�nh ng��i gia nh�p Ng� ��c gi�o , ng��i �� th�nh v� Ng� ��c gi�o ��ng t� ") 
SetRevPos(183,70) -- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetTask(10,10*256) -- script viet hoa By http://tranhba.com  nh�p m�n 
SetFaction("wudu") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p m�n ph�i 
SetCamp(2) 
SetCurCamp(2) 
SetRank(49) 
AddMagic(63) 
Msg2Player("H�c ���c ��c sa ch��ng ") 
AddNote("Gia nh�p Ng� ��c gi�o tr� th�nh n�m ��c ��ng t� h�c ���c ��c sa ch��ng ") 
Msg2Faction("wudu",GetName().." r�i �i ���ng m�n gia nh�p Ng� ��c gi�o . m�n ph�i l�c l��ng c�ng th�m m�nh !",GetName()) 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - tr� l�i m�n ph�i t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() 
Talk(1,"","T�t l�m ! xu�t s� sau � trong v� l�m kh�ng mu�n l�m c� t�n m�n ph�i danh d� chuy�n c�a t�nh ") 
SetTask(10,70*256) 
AddNote("R�i �i Ng� ��c gi�o , ti�p t�c chu du giang h� ") 
Msg2Player("Ng��i r�i �i Ng� ��c gi�o , ti�p t�c chu du giang h� ") 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
end 

function return_yes() 
Talk(3,"","�� t� c�i n�y c� 5000 hai ng�n l��ng . th�nh gi�o ch� vui v� nh�n ","H�o , ng��i c� th�nh � nh� v�y ta c�ng s� kh�ng t� ch�i ","Xin/m�i ch�nh x�c �� t� �i chu�n b� ") 
	SetTask(10,70*256+20)
AddNote("N�p l�n 50000 hai ng�n l��ng li�n c� th� tr� v� Ng� ��c gi�o ") 
Msg2Player("N�p l�n 50000 hai ng�n l��ng li�n c� th� tr� v� Ng� ��c gi�o ") 
end; 

function return_complete() 
if(GetCash() >= 50000) then 
Talk(1,"","Uy ! ng��i b�y gi� �� l� b�n gi�o �� t� ! ta �em c�t nh�c ng��i l�m u minh qu� v��ng ") 
Pay(50000) 
SetTask(10,80*256) 
SetRank(80) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(75) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(71) 
-- script viet hoa By http://tranhba.com  AddMagic(74) 
-- script viet hoa By http://tranhba.com  AddMagic(75) 
add_wu(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ng��i h�c ���c tr�n ph�i tuy�t h�c , n�m ��c k� tr�i qua , v� c�ng thi�n c��ng ��a s�t , chu c�p thanh minh . ") 
-- script viet hoa By http://tranhba.com  end 
SetFaction("wudu") 
SetCamp(2) 
SetCurCamp(2) 
AddNote("Tr� l�i Ng� ��c gi�o , ti�p t�c luy�n v� ") 
Msg2Player(GetName().." quay tr� v� Ng� ��c gi�o , b� ��ng c�a v� u minh qu� v��ng . ") 
else 
Talk(2,"","Ngh� ra s� , nh�ng ng��i r� r�ng kh�ng c� g� c� chu�n b� ","Ng��ng ng�ng ! ta ki�m tra m�t c�i .") 
end 
end; 

function return_uncompleted() 
Talk(1,"","Nhanh l�n m�t ch�t !") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  m�n ph�i nhi�m v� t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function L60_get_yes() 
	SetTask(10,60*256+10)
AddNote("�o�t t�i nguy�n b� nh�n ��ng ph�i c��p �i ��ch b�o v�t tr�n ph�i t� ��c ch�u ") 
Msg2Player("�o�t t�i nguy�n b� nh�n ��ng ph�i c��p �i ��ch b�o v�t tr�n ph�i t� ��c ch�u ") 
end; 

function L60_prise() 
Talk(1,"","Thu�c h� kh�c c�t minh t�m , tuy�t kh�ng d�m qu�n ") 
SetTask(10,70*256) 
DelItem(222) 
SetRank(70) 
SetFaction("") 
SetCamp(4) 
SetCurCamp(4) 
AddNote("T� nh�n ��ng ph�i trong tay �o�t t�i t� ��c ch�u , tr� l�i cho Ng� ��c gi�o . ho�n th�nh xu�t s� nhi�m v� . b� ��ng c�a v� u minh qu� khi�n cho , thu�n l�i xu�t s� ") 
Msg2Player("Ch�c m�ng ng��i ! �� th�nh c�ng xu�t s� . b� ��ng c�a v� u minh qu� khi�n cho ") 
end; 

function no() 
end; 
