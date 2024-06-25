Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

TB_JiangHuXingBaoDian = { 
[32] = { 
szTitleMsg = "<dec> �� tr�i qua nhi�u nh� v�y ��ch giang h� �n o�n , ng��i c� hay kh�ng �� c� m�t gi�p ��ng cam c�ng kh� ho�n n�n ��ch huynh �� t� mu�i . ng��i c� hay kh�ng mu�n mang d�n b�n h� th�nh l�p v�n th� b�t di�t c�ng , c��p l�y b�y ng�n th�nh tr� ��ch quy�n s� h�u , �� cho b�n h� c�ng h��ng th�nh th� ph�n hoa . v�y th� th�nh l�p m�t t� ch�ng ta ��ch bang h�i �em , ph� vi�t m�nh kho�i � �n c�u # nhi n� t�nh tr��ng # c��p thuy�n # c��p th�nh # c��p BOSS~", 
tbOpt = { 
[1] = {"Th�nh l�p bang h�i ", 33}, 
[2] = {"Bang h�i b�n �� ", 34}, 
[3] = {"T� ch�c k�t c�u ", 35}, 
[4] = {"Bang h�i c� kim ", 36}, 
[5] = {"Bang h�i h�ng l�i ", 37}, 
[6] = {"Bang h�i li�n minh ", 38}, 
[7] = {"Bang h�i chu m�c ti�u ", 39}, 
[8] = {"Bang h�i gi�i t�n ", 40} 
}, 
}, 
[33] = { szTitleMsg = "<dec> c� m�t c�i �i�u ki�n sau , ng��i c�ng c� th� �i Hoa S�n (293.218) t�m kim s�n ch��ng m�n nh�n th�nh l�p m�nh bang h�i li�u #<enter>1. nh� ch�i kh�ng ch� n�o ch�c bang h�i # m�n ph�i # t�c m�u �� t�n #<enter>2. c�p b�c #50 c�p <enter>3. danh v�ng tr� gi� 450 tr� l�n , danh v�ng c� th� th�ng qua l�m nhi�m v� ��t ���c , bao g�m tay m�i th�n nhi�m v� <enter>4. th�ng su�t l�c 30 tr� l�n <enter>5. t�ng kim ��i chi�n ��ch chi�n l�i ph�m # nh�c v��ng ki�m # t�ng kim t�ch ph�n � quan ti�p li�u ch� ��i l�y nh�c v��ng h�n chi th�ch , 100 c� nh�c v��ng h�n chi th�ch ��i l�y 1 �em nh�c v��ng ki�m # c�ng c� th� � k� tr�n c�c tr�c ti�p mua nh�c v��ng ki�m l� t�i m� ra l�y ���c #<enter>6. kim ti�n #100 v�n l��ng ",tbOpt = {{"Tr� v� th��ng m�t t�ng ", 32},},}, 
[34] = { szTitleMsg = "<dec> ng��i c� th� � c�c ��i th�nh th� t� r��u ch� s� d�ng ��o c� � ��ng xanh ��nh � khai s�ng m�t t� ch�n ch�nh thu�c v� m�nh ��ch ��c l�p bang h�i b�n �� # nh�m v�o trong tr� ch�i b�y phong c�ch kh�c nhau ��ch th�nh ph� , bang h�i b�n �� c�ng s� c� �i�u b�t ��ng . ",tbOpt = {{"Tr� v� th��ng m�t t�ng ", 32},},}, 
[35] = { szTitleMsg = "<dec> ng��i c� th� b� nhi�m nhi�u nh�t kh�ng v��t qua 7 c� tr��ng l�o , nhi�u nh�t kh�ng v��t qua 56 c� ��i tr��ng . cho ph�p ��i �ng b�t ��ng ch�c v� nhi�u nh�t c� th� bi�n t�p 65 c� danh hi�u , m�i danh hi�u chi�u d�i kh�ng th� v��t qua 4 c� ch� h�n . ",tbOpt = {{"Tr� v� th��ng m�t t�ng ", 32},},}, 
[36] = { szTitleMsg = "<dec> bang h�i c� kim l� m�t c�ng c�ng ��ch h� th�ng , d�ng cho c�t gi� bang h�i ��ch c�ng chung t� s�n . ",tbOpt = {{"Tr� v� th��ng m�t t�ng ", 32},},}, 
[37] = { szTitleMsg = "<dec> ng��i c� th� th�ng qua h�ng l�i ��ch ph��ng th�c cho bang h�i th�nh vi�n ph�n ph�t b� ph�n bang h�i c� kim # c� th� th�ng qua h�ng l�i ph�t ra gi�i m�t ch� ��nh cho tr��ng l�o # ��i tr��ng c�ng bang ch�ng ba c�p b�c chia ra ph�t ra ng�ch �� . ",tbOpt = {{"Tr� v� th��ng m�t t�ng ", 32},},}, 
[38] = { szTitleMsg = "<dec> ng��i c�n c� th� c�ng nh�ng kh�c bang h�i k�t th�nh bang h�i li�n minh . m�i li�n minh trung nh�t ��nh ph�i t�n t�i m�t minh ch� bang h�i , �t nh�t t�n t�i m�t th�nh vi�n bang h�i , nhi�u nh�t c� th� t�n t�i 7 c� th�nh vi�n bang h�i . ",tbOpt = {{"Tr� v� th��ng m�t t�ng ", 32},},}, 
[39] = { szTitleMsg = "<dec> t� h� th�ng ng�u nhi�n � t�ng kim # d� t�u # x�ng quan # long m�ch nhi�m v� ch� h� th�ng trung ch�n l�a m�t . ch� c�n bang h�i c� th� ho�n th�nh n�n m�c ti�u , bang h�i th�nh vi�n c�ng c� th� ��t ���c phong ph� �ch l�i # bang ch� c�n c� th� nh�n l�y BOSS l�nh b�i ch� . ",tbOpt = {{"Tr� v� th��ng m�t t�ng ", 32},},}, 
[40] = { szTitleMsg = "<dec> khi ng��i ��ch bang h�i nh�n s� �t v�i 16 ng��i th�i �i�m s� ti�n v�o kh�o nghi�m k� nga , n�u nh� 3 ng�y b�n trong kh�ng c� ��t t�i 16 ng��i tr� l�n , bang h�i s� gi�i t�n # nh� l�y mu�n �o�n k�t h�o huynh �� c�a m�nh nga . ",tbOpt = {{"Tr� v� th��ng m�t t�ng ", 32},},}, 
}; 

function main() 
local nNpcIndex = GetLastDiagNpc(); 
local szNpcName = GetNpcName(nNpcIndex); 
local tbDailog = DailogClass:new(szNpcName) 
tbDailog.szTitleMsg = "<npc> V� thi�u hi�p kia mu�n gia nh�p bang h�i sao ? " 

G_ACTIVITY:OnMessage("ClickNpc", tbDailog) 

tbDailog:AddOptEntry("Xem tin t�c h� tr� bang h�i ", TongHelp); 
tbDailog:AddOptEntry("M� giao di�n chi�u m� bang h�i ", NeedOpenTongZhaoMu); 

tbDailog:Show() 
end 

function jianghuxing_showdiag(nidx, nbackidx) 
local tb_dailog = {}; 

if (not TB_JiangHuXingBaoDian[nidx].szTitleMsg) then 
print("Error!!There Is No Titlemsg!!"); 
return 
end 

tb_dailog[1] = TB_JiangHuXingBaoDian[nidx].szTitleMsg; 

if (TB_JiangHuXingBaoDian[nidx].tbOpt) then 
for nkey, szopp in TB_JiangHuXingBaoDian[nidx].tbOpt do 
tinsert(tb_dailog, format("%s/#jianghuxing_showdiag(%d)", szopp[1], szopp[2])); 
end 
end 

tinsert(tb_dailog,"K�t th�c ��i tho�i /OnCancel"); 

CreateTaskSay(tb_dailog); 
end 

function OnCancel() 
end 

function NeedOpenTongZhaoMu() 
OpenTongZhaoMu() 
end 

function TongHelp() 
jianghuxing_showdiag(32) 
end 
