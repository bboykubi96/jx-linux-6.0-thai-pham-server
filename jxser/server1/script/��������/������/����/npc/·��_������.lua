-- script viet hoa By http://tranhba.com  th�y kh�i c�a ch��ng m�n du�n ng�m kh�i 10 c�p nhi�m v� #50 c�p nhi�m v� # xu�t s� nhi�m v� # tr� l�i s� m�n nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-07-25) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-24) l�n n�a thi�t k� tr� l�i m�n ph�i c�ng tr�n ph�i tuy�t h�c t��ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) n�ng vi�t tr� l�i s� m�n nhi�m v� , c�ng l�n n�a s�a sang l�i ch�n v�n 

Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ����Ͷʦ

Include("\\script\\item\\skillbook.lua")

function main() 

if (GetLevel() >= 120 and GetTask(LV120_SKILL_STATE) ~= 19 and GetLastFactionNumber() == 5) then 
Describe("T�m ta c� chuy�n g� ", 2, 
" h�c 120 c�p k� n�ng ./lvl120skill_learn", 
" mu�n m�i d�y nh�ng chuy�n kh�c /oldentence" 
); 
return 
end; 

oldentence() 
end; 

function oldentence() 
local UTask_cy = GetTask(6) 
local nFactID = GetLastFactionNumber(); 

if (UTask_cy == 70*256) and (GetFaction() == "cuiyan") then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetFaction("") 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_cy == 70*256) and (GetTask(1) >= 5*256) and (GetTask(1) < 10*256) then -- script viet hoa By http://tranhba.com  tr��c kia nh�n l�y nh�p m�n nhi�m v� 
SetTask(1,0) 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_cy == 80*256) and (GetCamp() == 4) then -- script viet hoa By http://tranhba.com  tr� v� s� sai l�m tu ch�nh 
SetTask(6,70*256) 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (GetTask(1) == 70*256) and (GetTask(6) == 70*256) then -- script viet hoa By http://tranhba.com  chuy�n m�n ph�i sai l�m tu ch�nh 
SetTask(1,75*256) 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
elseif (UTask_cy == 80*256 and nFactID == 5 and GetCamp() == 3 and GetFaction() == " m�i v�o giang h� ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction("cuiyan"); 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
end 
elseif (UTask_cy == 70*256 and nFactID == 5 and GetCamp() ~= 4 and GetFaction() == " m�i v�o giang h� ") then 
local _, nTongID = GetTong(); 
if (nTongID == 0) then 
SetFaction(""); 
SetCurCamp(GetCamp()); 
Say("H� th�ng ph�t hi�n sai l�m , �� g�n l�c kh�i ph�c !",0) 
return 
end 
end 

local tbDes = {"Mang ngh� ��u s� /#daiyitoushi_main(5)","Mu�n m�i d�y nh�ng chuy�n kh�c /common_talk"}; 

Say("G�n nh�t ta b� b�n nhi�u vi�c , ng��i t�i ��y c� chuy�n g� ?", getn(tbDes), tbDes); 
end 

function common_talk() 
local UTask_cy = GetTask(6) 
local Uworld51 = GetTask(51) 
local Uworld126 = GetTask(126) 
if (GetTask(39) == 10) and (GetBit(GetTask(40),6) == 0) then -- script viet hoa By http://tranhba.com  th� gi�i nhi�m v� # v� l�m h��ng b�i 
Talk(1,"","��c c� minh ch� c� l�nh , ta l�m sao d�m kh�ng theo . nh�ng l� b�n m�n ��u l� n� l�u h�ng ng��i , s� r�ng kh�ng ���c . xin/m�i h�i b�o ��c c� minh ch� , b�n m�n nh�t ��nh �ng h� c�c v� anh h�ng , ch�c c�c v� k� khai ��c th�ng !") 
Uworld40 = SetBit(GetTask(40),6,1) 
SetTask(40,Uworld40) 
elseif (Uworld51 == 10) then -- script viet hoa By http://tranhba.com  r�a s�ch oan khu�t nhi�m v� ti�n h�nh trung 
Talk(5,"Uworld51_20","���ng m�t tr�n �� cho ta mang mi�ng tin/th� , ph� th�n ta kh�ng hi�u t�i sao ��t nhi�n ph�n ��i ch�ng ta hai ��ch h�n s� , h�n s� c� ch�t kh� kh�n , nh�ng l� ng��i kh�ng c�n lo l�ng .","M�t tr�n ","Nga #... ��ng kh�c , chuy�n kh�ng nh�t ��nh nh� v�y , ch� c�n ch�ng ta th�t l�ng , li�n nh�t ��nh c� th� qu� li�u kh� kh�n , �i t�i c�ng nhau ","���ng m�t tr�n r�t y�u ng��i , ta nh�t ��nh h�i r� r�ng sau tr� l�i ng��i .") 
elseif (Uworld51 == 100) then -- script viet hoa By http://tranhba.com  r�a s�ch oan khu�t nhi�m v� ho�n th�nh 
Talk(3,"Uworld51_prise","Th� ra l� nh� v�y , ng��i b�i v� m�t tr�n c�ng ta ��y sao kh� c�c , kh�ng hi�u th� n�o b�o ��p ng��i , xin/m�i nh�n l�y !","��y l� c�i g� ","C�i n�y l� ti�n s� �� l�i cho ta , c� th� th� g�n ho�t huy�t , c� th� gia t�ng c�ng l�c !") 
elseif (GetSeries() == 2) and (GetFaction() == "cuiyan") then -- script viet hoa By http://tranhba.com  nhi�m v� t��ng quan c�ng v�i m�n ph�i ��i tho�i 
		if (UTask_cy == 10*256+10) and (HaveItem(0) == 1) then		-- script viet hoa By http://tranhba.com  10���������
Talk(2,"L10_prise","Ch��ng m�n , �� t� �� gi�p ng��i t�m v� th�y v� tr�m li�u ! ","Th�t t�t qu� , ng��i t�m ���c a .") 
elseif (UTask_cy == 10*256) and (GetLevel() >= 10) then -- script viet hoa By http://tranhba.com 10 c�p nhi�m v� kh�i ��ng 
Say("Th�t l� �au l�ng , ng�y h�m qua �i ��ng nam b�n ��ch r�ng c�y nh� t�n b� , m�t ta th�ch nh�t th�y v� tr�m !",2,"Ta gi�p ng��i �i t�m /L10_get_yes"," l�m b� kh�ng nghe /no") 
		elseif (UTask_cy == 50*256+50) then		-- script viet hoa By http://tranhba.com ���50������
Talk(1,"L50_prise","�� t� theo nh� s� m�nh , tr� gi�p s�ng th�nh t� t�m v� li�u ng� ��ng Quan �m , ph��ng tr��ng ��i s� �� cho ta truy�n l�i cho ng��i , c�m t� s� ph� ") 
elseif (UTask_cy == 50*256) and (GetLevel() >= 50) then -- script viet hoa By http://tranhba.com 50 c�p nhi�m v� kh�i ��ng 
Say("H� vi�n ph��ng tr��ng l� c�a ta b�n t�t , h�n m�i v�a ph�i ng��i m� n�i �n tr�m tr�m �i ng� ��ng Quan �m , b� ph�t hi�n sau , b� ch�y v�o thi�n t�m th�p . �n tr�m ��ch v� ngh� cao c��ng , t�ng nh�n kh�ng ai b�ng , cho n�n , ph�i ng��i t�i b�n m�n nh� gi�p �� , ng��i ��ng � �i s�ng th�nh t� gi�p m�t tay sao ? ?",2,"Kh�ng th�nh v�n �� , ta �i /L50_get_yes","�� t� v� c�ng c�n kh�ng h�o , s� r�ng kh�ng th� �i /no") 
		elseif (UTask_cy == 60*256+30) then							-- script viet hoa By http://tranhba.com ��ʦ�������
L60_prise() 
elseif (UTask_cy == 80*256) then -- script viet hoa By http://tranhba.com  tr� l�i sau ��ch t� do xu�t nh�p 
check_skill() 
elseif (UTask_cy >10*256) and (UTask_cy < 20*256) then -- script viet hoa By http://tranhba.com  10 c�p nhi�m v� trung 
Talk(1,"","C�n kh�ng c� t�m ���c th�y v� tr�m sao ?") 
elseif (UTask_cy > 50*256) and (UTask_cy < 60*256) then -- script viet hoa By http://tranhba.com  50 c�p nhi�m v� trung 
Talk(1,"","B�t ���c �n tr�m li�u sao ?") 
elseif (UTask_cy >= 60*256) then -- script viet hoa By http://tranhba.com  ho�n th�nh 50 c�p nhi�m v� sau ��ch th��ng quy ��i tho�i 
Talk(1,"","S�ng th�nh t� chuy�n c�a ng��i quy�t ��nh r�t ��ng , tr��c ��y kh�ng l�u , h� vi�n ph��ng tr��ng t�i th�m ng��i .") 
else -- script viet hoa By http://tranhba.com  b�n trong m�n ph�i k� tha tr�ng th�i h� th��ng quy ��i tho�i 
Talk(1,"","V� c�ng c�a ng��i ti�n b� r�t nhanh , nh�ng l� c�ng kh�ng c�n t� m�n , c�n ti�p t�c tu luy�n m�i ���c .") 
end 
elseif (Uworld126 == 20) then -- script viet hoa By http://tranhba.com  90 c�p k� n�ng nhi�m v� 
Talk(5,"Uworld126_talk","Du�n c� n��ng !","Ng��i c� chuy�n g� ?","T�i h� l�y ���c �o�n t� th�nh tr� gi�p , mu�n cho hai ng��i c�ng h�o , nh�ng l� ly c� n��ng r�t c� ch�p li�u .","Nga , thu th�y r�t c� ch�p . khi �� , �o�n c�ng t� l� m�t nh�n t�i , ��i v�i n�ng th�t l�ng ch�n � , ti�c nu�i l� c�ng t� � nh� l�i l� ��c t�n , l�m sao c� th� gia nh�p th�y kh�i c�a ��y ? h�m nay mu�n c�ng h�o , th�t l� kh� kh�n a . ta khuy�n kh�ng ���c ly c� n��ng , hy v�ng ng��i t�m bi�n ph�p . .","Th� ra l� nh� v�y , t�i h� s� c� g�ng .") 
elseif (Uworld126 == 80) and (GetFaction() ~= "cuiyan") then 
Talk(5,"Uworld126_finish","Du�n c� n��ng , chuy�n th�nh c�ng ! ","Nga ? ","Chuy�n l� nh� v�y ?","Thi�t l� , nh�ng l� , b�n h� �� g�p m�t , duy�n ph�n c�ng s� tr� l�i , th�t l� kh�ng hi�u th� n�o c�m t� ng��i .","T�i h� c� th� c�ng c�c v� c� n��ng l�m b�ng h�u �� r�t h�nh ph�c , c�n g� ph�i c�m �n ta ��y ? ") 
elseif (Uworld126 > 20) and (Uworld126 < 70) then 
Talk(1,"","Ti�u L� t�nh t�nh c� ch�p , n�ng kh�ng ch�u n�i b�n m�n chuy�n c�a t�nh , n�ng n�i , kh�ng c� chuy�n t�t l�nh g� , cho n�n , l�m phi�n ng��i .") 
-- script viet hoa By http://tranhba.com 	elseif (UTask_cy == 5*256+20) then			-- script viet hoa By http://tranhba.com  ת�������
-- script viet hoa By http://tranhba.com  Talk(1,"defection_complete","Du�n ng�m kh�i # ng��i thi�n ph� h�n ng��i , tin t��ng r�t nhanh l� c� th� tr� th�nh b�n m�n ��ng l��ng li�u , kh�ng c�n �� � b�y gi� t�m th�i m�t �i v� c�ng . ng��i �i tr��c c�ng b�n m�n c�c v� t� mu�i quen thu�c m�t c�i , �� cho m�i ng��i ch�ng ta c�ng mau vui v� nh�c ��a cu�c s�ng �i . ") 
elseif (GetSeries() == 2) and (GetCamp() == 4) and (GetLevel() >= 60) and (UTask_cy == 70*256) and ((GetTask(1) < 5*256) or (GetTask(1) == 75*256)) then -- script viet hoa By http://tranhba.com  tr� l�i s� m�n nhi�m v� 
Talk(2,"return_sele"," l�i ��n ��i , g�n nh�t ng��i gi�t kh�ng �t c��ng ��o , cho n�n � tr�n giang h� r�t n�i danh ","Nh�ng l� , ta c�n l� nh� t�i trong m�n ph�i �m �p ��ch kh�ng kh� , s� ph� , ta c� th� tr� v� th�y kh�i c�a sao ?") 
	elseif (GetCamp() == 4) and ((UTask_cy == 70*256+10) or (UTask_cy == 70*256+20)) then		-- script viet hoa By http://tranhba.com  �ط�ʦ��������
Say("Chu�n b� xong n�m v�n l��ng kh�ng c� ?",2,"Chu�n b� xong /return_complete","C�n kh�ng c� chu�n b� xong /return_uncompleted") 
-- script viet hoa By http://tranhba.com 	elseif (GetTask(1) == 70*256+10) and (HaveMagic(111) >= 0) then		-- script viet hoa By http://tranhba.com  �������ط����ɣ��ջر̺�����
-- script viet hoa By http://tranhba.com  Say("Du�n ng�m kh�i # thi�u quang �i m�t l�n kh�ng h� n�a t�i , ng��i th�t c� � mu�n tr�n v�o kh�ng m�n ? ",2,"H�ng tr�n th�c kh�ng th� quy�n luy�n , xin/m�i ch��ng m�n �� cho ta �i cho /defection_yes","Ta suy ngh� m�t ch�t n�a /no") 
else 
Talk(1,"","N�u nh� b�n m�n c�ng ���ng m�n li�n minh , ���ng nhi�n l� chuy�n t�t , ch�ng qua l� ") 
end 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  k� n�ng �i�u ch�nh t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function check_skill() 
-- script viet hoa By http://tranhba.com  if (HaveMagic(114) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(114) -- script viet hoa By http://tranhba.com  b�ng c�t tuy�t t�m 
-- script viet hoa By http://tranhba.com  Msg2Player("Ng��i h�c ���c � b�ng c�t tuy�t t�m �") 
-- script viet hoa By http://tranhba.com  Say("Du�n ng�m kh�i # vi s� l�n n�y b� quan kh� t� m�y ng�y , m�i sang m�t chi�u � b�ng c�t tuy�t t�m � , b�y gi� truy�n th� cho ng��i . ng��i h�c xong sau �i v� tr��c ngh� ng�i th�t t�t m�t phen , �� tr�nh th��ng t�n ���c kinh m�ch . ",1,"�a t� s� ph� /KickOutSelf") 
-- script viet hoa By http://tranhba.com  else 
Say(" l�i mu�n th� gi�i b�n ngo�i li�u ?",2,"��ng v�y , xin m�i ch��ng m�n �n chu�n /goff_yes","Kh�ng , ta c�m gi�c m�nh ��ch c�ng phu c�n ch�a �� . /no") 
-- script viet hoa By http://tranhba.com  end 
end 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - chuy�n m�n ph�i t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function defection_complete() 
Msg2Player("Hoan ngh�nh ng��i gia nh�p th�y kh�i c�a , tr� th�nh hoa t� ") 
SetRevPos(154,61) -- script viet hoa By http://tranhba.com  s�ng l�i �i�m 
SetTask(6,10*256) -- script viet hoa By http://tranhba.com  nh�p m�n 
SetFaction("cuiyan") -- script viet hoa By http://tranhba.com  nh� ch�i gia nh�p m�n ph�i 
SetCamp(3) 
SetCurCamp(3) 
SetRank(31) 
AddMagic(99) 
Msg2Player("H�c ���c phong hoa tuy�t nguy�t ") 
AddNote("Gia nh�p th�y kh�i c�a , tr� th�nh hoa t� , h�c ���c phong hoa tuy�t nguy�t ") 
Msg2Faction("cuiyan",GetName().." t� Nga Mi ��n gia nh�p th�y kh�i c�a , m�n ph�i l�c l��ng l�i t�ng m�nh !",GetName()) 
end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  tr� l�i m�n ph�i t��ng quan -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function goff_yes() 
Talk(1,"","C� m�t s� vi�c , ch� c� ��ch th�n tr�i qua m�i hi�u ���c , ng��i �i tr�i qua c�ng ���c .") 
SetCamp(4) 
SetCurCamp(4) 
SetTask(6,70*256) 
SetFaction("") 
AddNote("R�i �i th�y kh�i c�a , l�i m�t l�n h�nh t�u giang h� ") 
Msg2Player("R�i �i th�y kh�i c�a , l�i m�t l�n h�nh t�u giang h� ") 
end 

function return_sele() 
Say("D� nhi�n c� th� , ng��i ch� c�n 5 v�n l��ng l� c� th� tr� v� m�n ph�i .",2,"Th�t t�t qu� /return_yes","Ta �i c�m ti�n l�i n�i . /return_no") 
end; 

function return_yes() 
Talk(1,"","H�o , �� t� �i l�y n�m v�n l��ng ! ") 
	SetTask(6,70*256+20)
AddNote("Quy�n 5 v�n l��ng cho th�y kh�i c�a l� c� th� tr� v� m�n ph�i . ") 
Msg2Player("Quy�n 5 v�n l��ng cho th�y kh�i c�a l� c� th� tr� v� m�n ph�i . ") 
end; 

function return_no() 
Talk(1,"","5 v�n l��ng kh�ng ph�i l� con s� nh� , ng��i ngh� r� r�ng .") 
end; 

function return_complete() 
if (GetCash() >= 50000) then 
Talk(1,"","H�o , n�m v�n l��ng �� �� r�i , ta phong ng��i l�m g�c ph�i hoa th�n , ��ng th�i truy�n c�ng ng��i b�n m�n tuy�t h�c , b�ch s�ng bi�n d�ng sinh , hy v�ng ng��i ti�p t�c c� g�ng .") 
Pay(50000) 
SetTask(6,80*256) 
SetFaction("cuiyan") 
SetCamp(3) 
SetCurCamp(3) 
SetRank(67) 
-- script viet hoa By http://tranhba.com  if (HaveMagic(114) == -1) then 
-- script viet hoa By http://tranhba.com  AddMagic(108) 
-- script viet hoa By http://tranhba.com  AddMagic(111) 
-- script viet hoa By http://tranhba.com  AddMagic(114) 
add_cy(70) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ng��i h�c ���c th�y kh�i m�n tuy�t h�c , b�ng c�t tuy�t t�m , m�c d� sao r�i , b�ch s�ng bi�n d�ng sinh ") 
-- script viet hoa By http://tranhba.com  end 
Msg2Player(GetName().."<#> tr� v� th�y kh�i c�a , b� ��ng c�a v� hoa th�n ") 
AddNote("Tr� v� th�y kh�i c�a ") 
else 
Talk(1,"","Ng��i s� mang ng�n l��ng gi�ng nh� kh�ng �� , ki�m tra xem m�t ch�t .") 
end 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  m�n ph�i nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function L10_get_yes() 
Talk(2,"","R�t �t g�p ng��i c� ph�n n�y t�m , l�m phi�n ng��i .","S� ph� qu� kh�ch kh� !") 
	SetTask(6,10*256+10)
AddNote("Nh�n 10 c�p nhi�m v� # ��n ��ng nam b�n r�ng c�y nh� cho ��i th�y v� tr�m ") 
Msg2Player("Nh�n 10 c�p nhi�m v� # ��n ��ng nam b�n r�ng c�y nh� cho ��i th�y v� tr�m ") 
end; 

function L10_prise() 
Talk(1,"","C� th� , ng��i th�t l� c� m�i . ta th�ng ng��i v� 10 c�p �� t� .") 
DelItem(0) 
SetTask(6,20*256) 
SetRank(32) 
-- script viet hoa By http://tranhba.com  AddMagic(95) 
-- script viet hoa By http://tranhba.com  AddMagic(97) 
add_cy(20) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
AddNote("��ng th�y v� tr�m , tr� v� h��ng du�n ng�m kh�i ph�c m�nh , ho�n th�nh t�m c�y tr�m nhi�m v� , tr� th�nh tam ph�m hoa khi�n cho ") 
Msg2Player("Ch�c m�ng ng��i b� ��ng c�a v� th�y kh�i c�a tam ph�m hoa khi�n cho , h�c ���c th�y kh�i �ao ph�p , th�y kh�i song �ao . ") 
end; 

function L50_get_yes() 
Talk(1,"","M�i s� c�n th�n .") 
	SetTask(6,50*256+10)
AddNote("Nh�n 50 c�p nhi�m v� # v� s�ng th�nh t� ph��ng tr��ng h� vi�n �o�t l�i ng� ��ng Quan �m # ") 
Msg2Player("Nh�n 50 c�p nhi�m v� # v� s�ng th�nh t� ph��ng tr��ng h� vi�n �o�t l�i ng� ��ng Quan �m # ") 
end; 

function L50_prise() 
Talk(1,"","R�t t�t , ng��i qu� nhi�n tr� d�ng song to�n , l�m g�c c�a �� l�m nhi�u l�n chuy�n , th�t kh�ng h� l� �� t� b�n m�n ! ") 
SetTask(6,60*256) 
SetRank(36) 
-- script viet hoa By http://tranhba.com  AddMagic(109) 
add_cy(60) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
Msg2Player("Ch�c m�ng ng��i b� ��ng c�a v� hoa tinh , h�c ���c tuy�t �nh v� c�ng ") 
AddNote("# �o�t l�i ng� ��ng Quan �m , ho�n th�nh 50 c�p nhi�m v� , b� ��ng c�a v� hoa tinh ") 
end; 

function L60_prise() 
Msg2Player("Ng��i ��ng tin/th� cho du�n ng�m kh�i , �em t�t c� chuy�n ��u n�i cho n�ng nghe . ") 
Talk(2,""," l�n n�y ng��i gi�p ta gi�i quy�t b�n m�n chuy�n c�a , l�p c�ng l�n . ch�c m�ng ng��i , ng��i c� th� xu�t s� ","# �a t� ch��ng m�n ! ") 
SetTask(6,70*256) 
SetRank(35) 
SetFaction("") -- script viet hoa By http://tranhba.com  th�i lui ra m�n ph�i 
SetCamp(4) 
SetCurCamp(4) 
DelItem(235) 
AddNote("Ng��i ��ng tin/th� cho du�n ng�m kh�i , �em t�t c� chuy�n ��u n�i cho n�ng nghe , ho�n th�nh xu�t s� nhi�m v� , b� ��ng c�a v� hoa ti�n ") 
Msg2Player("Ch�c m�ng ng��i tr� th�nh hoa ti�n , c� th� xu�t s� ") 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - th� gi�i nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  
function Uworld51_20() 
SetTask(51,20) 
Msg2Player("# �i�u tra ���ng m�t tr�n r�t cu�c x�y ra chuy�n g� , c� bi�n ph�p g� tr� v� sao ? ") 
end 

function Uworld51_prise() 
SetTask(51,255) 
AddMagicPoint(1) 
	Task86_2 = GetByte(GetTask(86),2) + 1
if (Task86_2 > 255) then Task86_2 = 255 end 
Task86 = SetByte(GetTask(86),2,Task86_2) 
SetTask(86,Task86) -- script viet hoa By http://tranhba.com  ghi ch�p nhi�m v� ph�i k� n�ng �i�m t�ng s� 
Msg2Player("Du�n ng�m kh�i b�i v� mu�n b�o ��p , c�m s� ph� kim �an ��a cho ng��i . c�ng phu c�a ng��i gia t�ng 1 �i�m ") 
Msg2Player("Ho�n th�nh r�a s�ch oan khu�t nhi�m v� ") 
AddNote("Ho�n th�nh r�a s�ch oan khu�t nhi�m v� ") 
end 

function no() 
end; 

function Uworld126_talk() 
SetTask(126,30) 
Msg2Player("Du�n ng�m kh�i c�ng kh�ng c� bi�n ph�p t�t h�n , ng��i quy�t ��nh tr� v� th�y ly thu th�y ") 
AddNote("Du�n ng�m kh�i c�ng kh�ng c� bi�n ph�p t�t h�n , ng��i quy�t ��nh tr� v� th�y ly thu th�y ") 
end 

function Uworld126_finish() 
if (GetTask(6) >= 70*256) and (GetTask(6) ~= 75*256) then 
Talk(3,"","H�nh t�u giang h� s� g�p ph�i r�t nhi�u nguy hi�m , n�i n�y ng�m kh�i c� v�n th�y kh�i b� k�p c� th� gi�p ng��i . ","Th�t l� ng��ng ng�ng ","Giang h� con g�i , kh�ng c�n c�u th�c , c�m �i !") 
if (HaveMagic(336) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(336,1) 
end 
if (HaveMagic(337) == -1) then -- script viet hoa By http://tranhba.com  nh�t ��nh ph�i kh�ng c� k� n�ng ��ch m�i cho k� n�ng 
AddMagic(337,1) 
end 
CheckIsCanGet150SkillTask() 
Msg2Player("H�c xong th�y kh�i v� c�ng b�ng t�ng v� �nh , b�ng t�m ti�n t� . ") 
SetTask(126,255) 
else 
Talk(2,"","C�u ng��i kh�ng c�n b�o �n , th�t l� hi�p ngh�a ! ","Du�n s� ph� qu� khen !") 
SetTask(126,245) -- script viet hoa By http://tranhba.com  ��t ���c danh v�ng ��ch thi�t tr� thay ��i l��ng 245 
end 
add_repute = ReturnRepute(30,100,4) -- script viet hoa By http://tranhba.com  danh v�ng t��ng th��ng # l�n nh�t 30 �i�m , t� 100 c�p kh�i m�i c�p �� gi�m 4% 
AddRepute(add_repute) 
Msg2Player("<#> �i tr� ly thu th�y c�ng �o�n t� th�nh �n o�n , nhi�m v� ho�n th�nh . ng��i danh v�ng gia t�ng "..add_repute.."<#> �i�m .") 
AddNote("�i tr� ly thu th�y c�ng �o�n t� th�nh �n o�n , nhi�m v� ho�n th�nh . ") 
end 
