--T�y t�y ��o edit by McTeam

Include("\\script\\missions\\clearskill\\clearhole.lua");

function main() 
-- script viet hoa By http://tranhba.com  phi ph�p tr�ng th�i 
if (CSP_CheckValid() == 0) then 
CSP_WriteLog("Ti�n v�o t�y t�y ��o kh�ng b�nh th��ng . "); 
Say("GM: <color=red> ng��i kh�ng th� v�o t�y t�y ��o , �� b� h� th�ng ghi ch�p , xin/m�i �i t�m ng��i ph�c v� �i�u ch�nh h�o ! <color> ", 1,"R�i kh�i ��o t�y tu� /LeaveHere_yes") 
return -1; 
end 

nLevel = GetLevel(); 
if (nLevel < CSP_NEEDLEVEL) then 
Talk(1, "","C�p b�c c�a ng��i c�n ch�a ��t t�i "..CSP_NEEDLEVEL.." kh�ng th� r�i �i ��o t�y tu� . ") 
return -1; 
end 

nType = GetTask(CSP_TID_ClearType); 
if (nType == CSP_CTYPE_SKILL) then  
local tbOpt = 
{ 
" T�y �i�m k� n�ng /DoClearSkill", 
" T�y �i�m ti�m n�ng /add_prop", 
" Kh�ng t�y /OnCancel", 
" Li�n quan t�i t�y t�y /Help", 
" R�i kh�i n�i qu� qu�i n�y /LeaveHere", 
} 
Say("Ng��i ch� c� th� t�y <color=blue> �i�m k� n�ng <color>. ��ng � t�y sao ? ", getn(tbOpt), tbOpt) 
elseif (nType == CSP_CTYPE_PROP) then 
local tbOpt = 
{ 
" T�y �i�m ti�m n�ng /DoClearProp", 
" T�ng �i�m ti�m n�ng /add_prop", 
" Kh�n t�y /OnCancel", 
" Li�n quan t�i t�y t�y /Help", 
" R�i kh�i n�i qu� qu�i n�y /LeaveHere", 
} 
Say("Ng��i ch� c� th� t�y <color=blue> �i�m ti�m n�ng <color>. ��ng � t�y sao ? ", getn(tbOpt), tbOpt) 
else -- script viet hoa By http://tranhba.com  if (nType == CSP_NEEDJEWEL_ALL) then 
local tbOpt = 
{ 
" T�y �i�m k� n�ng /DoClearSkill", 
" T�y �i�m ti�m n�ng /DoClearProp", 
" T�ng �i�m ti�m n�ng /add_prop", 
" Kh�ng t�y /OnCancel", 
" Li�n quan t�i t�y t�y /Help", 
" R�i kh�i n�i qu� qu�i n�y /LeaveHere", 
} 
Say("Ng��i ��ng � t�y t�y sao ? ", getn(tbOpt),tbOpt) 
end; 
end 

function add_prop() 
Say("N�i r� # ng��i ngh� m�nh k� n�ng g� tr� gi� ?", 4, 
" T�ng s�c m�nh /add_prop_str", 
" T�ng th�n ph�p /add_prop_dex", 
" T�ng sinh kh� /add_prop_vit", 
" T�ng n�i c�ng /add_prop_eng") 
end 

function add_prop_str() 
AskClientForNumber("enter_str_num", 0, GetProp(),"Xin/m�i ��a v�o l�c l��ng tr� s� : "); 
end 

function add_prop_dex() 
AskClientForNumber("enter_dex_num", 0, GetProp(),"Xin/m�i ��a v�o th�n ph�p tr� s� : "); 
end 

function add_prop_vit() 
AskClientForNumber("enter_vit_num", 0, GetProp(),"Xin/m�i ��a v�o ngo�i c�ng tr� s� :"); 
end 

function add_prop_eng() 
AskClientForNumber("enter_eng_num", 0, GetProp(),"H�n ��a v�o n�i c�ng tr� s� : "); 
end 

function enter_str_num(n_key) 
if (n_key < 0 or n_key > GetProp()) then 
return 
end 
AddStrg(n_key); 
end 

function enter_dex_num(n_key) 
if (n_key < 0 or n_key > GetProp()) then 
return 
end 
AddDex(n_key); 
end 

function enter_vit_num(n_key) 
if (n_key < 0 or n_key > GetProp()) then 
return 
end 
AddVit(n_key); 
end 

function enter_eng_num(n_key) 
if (n_key < 0 or n_key > GetProp()) then 
return 
end 
AddEng(n_key); 
end 

function DoClearSkill() 
Say("Ng��i ��ng � t�y k� n�ng ��ng gi� sao ? ", 2,"T�y k� n�ng tr� gi� /DoClearSkillCore","Kh�ng t�y /OnCancel") 
end 
function DoClearSkillCore() 
-- script viet hoa By http://tranhba.com  if (Pay(100000) == 0) then 
-- script viet hoa By http://tranhba.com  Say("Th�ch minh # th�t xin l�i , m�i l�n t�y t�y c�n 10 v�n l��ng , tr�n ng��i ng��i mang ��ch kh�ng �� ti�n . ", 0) 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 

i = HaveMagic(210) -- script viet hoa By http://tranhba.com  khinh c�ng kh�c thao t�c 
j = HaveMagic(400) -- script viet hoa By http://tranhba.com  � c��p c�a ng��i gi�u gi�p ng��i ngh�o kh� � kh�c thao t�c 
n = RollbackSkill() -- script viet hoa By http://tranhba.com  thanh tr� k� n�ng c�ng tr� v� t�t c� k� n�ng �i�m # bao g�m khinh c�ng ch� ��c th� k� n�ng # 
x = 0 
	if (i ~= -1) then x = x + i end		-- script viet hoa By http://tranhba.com  �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ����µ�������������
	if (j ~= -1) then x = x + j end
rollback_point = n - x -- script viet hoa By http://tranhba.com  �em k� n�ng �i�m l�m � kh�ng �i�m ��m ho�n tr� , nh�ng tr��c kh�u tr� khinh c�ng ch� 
	if (rollback_point + GetMagicPoint() < 0) then		-- script viet hoa By http://tranhba.com  ���ϴ���˸���������0��Ϊ�Ժ���ϴ�㱣����
rollback_point = -1 * GetMagicPoint() 
end 
AddMagicPoint(rollback_point) 
if (i ~= -1) then AddMagic(210,i) end -- script viet hoa By http://tranhba.com  n�u nh� h�c qua khinh c�ng l� th�m tr� v� nguy�n c� c�p b�c 
if (j ~= -1) then AddMagic(400,j) end -- script viet hoa By http://tranhba.com  n�u nh� h�c qua � c��p c�a ng��i gi�u gi�p ng��i ngh�o kh� � gi�ng nhau x� l� 
Msg2Player("T�y t�y th�nh c�ng # ng��i �� c� th� ph�n ph�i �i�m "..rollback_point.."# k� n�ng �i�m c� th� l�n n�a ph�n ph�i . ") 
Talk(1,"KickOutSelf","T�y t�y th�nh c�ng # ng��i �� c� th� ph�n ph�i �i�m "..rollback_point.." k� n�ng �i�m c� th� l�n n�a ph�n ph�i . ") 
end; 

function DoClearProp() 
Say("Ng��i ��ng � t�y �i�m ti�m n�ng sao ? ", 2,"T�y �i�m ti�m n�ng /DoClearPropCore","Kh�ng t�y /OnCancel") 
end 

function DoClearPropCore() 
base_str = {35,20,25,30,20} -- script viet hoa By http://tranhba.com  ng� h�nh nh�n v�t tr�i sanh thu�c t�nh tr� gi� 
base_dex = {25,35,25,20,15} 
base_vit = {25,20,25,30,25} 
base_eng = {15,25,25,20,40} 
		player_series = GetSeries() + 1

Utask88 = GetTask(88) 
		AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))			-- script viet hoa By http://tranhba.com  ���ѷ���Ǳ�����ã�task(88)��������ֱ�ӽ��������������ȣ�
		AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
		AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
		AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
end; 

function OnCancel() 
end; 

function Help() 
strHelp = 
{ 
" T�y t�y sau , ng��i c� th� �i ra b�n ngo�i ��nh m�c nh�n , ho�c l� �o�n th� c�ng nhau v�o s�n ��ng th�c h�nh chi�n ��u , sau �� r�i �i ��o m�i c� th� coi nh� l� ho�n th�nh . ", 
" Ch� c�n ng��i kh�ng r�i �i ��o , ta �em tr� gi�p ng��i t�y t�y ?", 
" B�n ngo�i c� c�i c�c g� (3000 sinh l�c ) ; bao c�t (10000 sinh l�c ) ; m�c nh�n #30000 sinh l�c ) �� cho ng��i ta th�c h�nh t�y t�y hi�u qu� !", 
" N�u nh� mu�n tranh t�i , c� th� v�o n�i ��ng , m�c d� c� th�t b�i , c�ng s� kh�ng c� c�i g� t�n th�t ", 
" N�u nh� trong s�n ��ng c�ng r�t h�p , nhi�u nh�t c�ng ch� ch�a 20 ng��i , cho n�n n�u nh� �� �� ng��i c�ng kh�ng c�n ti�n v�o . ", 
" N�u nh� trong s�n ��ng c�ng r�t h�p , nhi�u nh�t c�ng ch� ch�a 20 ng��i , cho n�n n�u nh� �� �� ng��i c�ng kh�ng c�n ti�n v�o . ", 
" Cu�i c�ng , l�c n�o c�m gi�c k� n�ng �i�m �� r�i s� t�i t�m ta , ta s� d�n ng��i tr� v� ch� c� " 
} 
Talk(7, "", strHelp[1], strHelp[2], strHelp[3], strHelp[4], strHelp[5], strHelp[6], strHelp[7]); 
end; 

function LeaveHere() 
Say("Ng��i cho r�ng �� t�y t�y xong r�i a ? c� mu�n r�i �i sao ? ",2,"Mu�n r�i �i /LeaveHere2","Nhi�m v� nghi�m t�c suy ngh� m�t ch�t /OnCanCel") 
end 

function LeaveHere2() 
Say("R�i �i t�y t�y ��o , n�u nh� mu�n tr� v� �em r�t kh� , ng��i nh� c� ki�n quy�t r�i �i a ? ", 2,"Ta th�t mu�n r�i �i c�i n�y ��a ph��ng qu� qu�i /LeaveHere_yes","�� ta suy ngh� l�i /OnCanCel") 
end 

function LeaveHere_yes() 
W,X,Y = GetWorldPos(); 
LeaveTeam() 
CSP_LeaveClearMap(W); 
end 
