-- script viet hoa By http://tranhba.com  d� thi l�u tr�nh 
-- script viet hoa By http://tranhba.com 1# c�ng ch� nh�p kh�u ��ch Npc ��i tho�i , l�a ch�n ti�n v�o th� m�y c� chi�n khu 
-- script viet hoa By http://tranhba.com 2# n�u nh� ph� h�p �i�u ki�n d� thi l� ti�n v�o chi�n khu b�n trong # kh�c m�t t�m b�n �� # , c�ng l�y 0 tr�n doanh m� th�c ti�n v�o 
-- script viet hoa By http://tranhba.com 3# nh� ch�i c�ng hai b�n Npc ��i tho�i , t� do l�a ch�n tham d� ��ch tr�n doanh . 
-- script viet hoa By http://tranhba.com 4# nh� ch�i Pk t� vong sau �em t� ��ng b� v�n ra s�n b�n ngo�i , nh�ng � b�n ��a �� b�n trong 
-- script viet hoa By http://tranhba.com 5# khi nh� ch�i t� vong l�c , s� t� ��ng h��ng c�ng b�n �� ��ch t�t c� nh� ch�i c�ng b� tr��c m�t ��ch chi�n hu�ng . 
-- script viet hoa By http://tranhba.com 6# n�u nh� c� th� , c� th� t� Npc ��i tho�i trung hi�u r� tr��c m�t ��ch t�ng ��ng h�ng th� 
-- script viet hoa By http://tranhba.com 7# tranh t�i c� th� d�a theo c�p b�c chia l�m c�c lo�i cu�c so t�i tr�ng 
-- script viet hoa By http://tranhba.com  v�o chi�n khu ��ch Npc# l�a ch�n tr�n doanh ��ch Npc 
Include("\\script\\missions\\citywar_arena\\head.lua");
MapTab = {}; 
MapTab[1]= {213, 1633, 3292}; 
MapTab[2]= {214, 1633, 3292}; 
MapTab[3]= {215, 1633, 3292}; 
MapTab[4]= {216, 1633, 3292}; 
MapTab[5]= {217, 1633, 3292}; 
MapTab[6]= {218, 1633, 3292}; 
MapTab[7]= {219, 1633, 3292}; 
MapTab[8]= {220, 1633, 3292}; 
MapCount = getn(MapTab); 

function main() 
-- script viet hoa By http://tranhba.com  thi�t tr� tr� v� �i�m 
M,X,Y = GetWorldPos(); 
SetTask(300, M); 
SetTask(301, X); 
SetTask(302, Y); 
Say("Ng��i ngh� ti�n v�o cu�c so t�i tr�ng khi�u chi�n sao ?", 9,"��u tr�ng 1/EnterBattle","��u tr�ng 2 /EnterBattle","��u tr�ng 3 /EnterBattle","��u tr�ng 4 /EnterBattle","��u tr�ng 5 /EnterBattle","��u tr�ng 6 /EnterBattle","��u tr�ng 7 /EnterBattle","��u tr�ng 8 /EnterBattle","Kh�ng �i /OnCancel"); 
end; 

function EnterBattle(nBattleId) 
SetFightState(0) 
	NewWorld(MapTab[nBattleId + 1][1], MapTab[nBattleId + 1][2], MapTab[nBattleId + 1][3]);
end; 

function OnHelp() 
Talk(8, "","Bang h�i l�i ��i l� tr�n giang h� c� bang h�i gi�a so t�i v� ngh� ��ch ��a ph��ng # ��y l� m�t c�ng b�nh c�nh tranh ��ch v� ��i/s�n nh�y ","Mu�n tham gia bang h�i l�i ��i , tr��c ph�i t�i h��ng ta th�n th�nh # th�n th�nh ng��i ph�i l� tranh t�i bang h�i ��ch bang ch� #","H�p th�nh ��i sau song ph��ng ��i tr��ng mu�n t�i ghi danh . song ph��ng bang ch� m�i ng��i mu�n ��ng I ng�n v�n l��ng ti�n ��t c�c . ","N�p ti�n ��t c�c sau , tranh t�i th�n th�nh li�n ho�n th�nh . � 2 c� ban c� th� so v�i cu�c so t�i trong l�c kh�ng th� ghi danh ","Th�n th�nh th�nh c�ng , song ph��ng ��i vi�n c� 10 ph�t gia nh�p tranh t�i . sau tranh t�i �em ch�nh th�c b�t ��u !","Th�ng b�i �em k� v�o song ph��ng tranh t�i t�ch ph�n . m�i v� bang h�i th�nh vi�n �em ��i ph��ng ��nh tr�ng th��ng ��ch �em c� 3 c� t�ch ph�n , ��i ph��ng b� kh�u tr� 1 c� t�ch ph�n ","Tranh t�i k�t th�c , t�ch ph�n cao bang h�i �em l�y ���c th�ng l�i #","Ngo�i ra , tranh t�i trung c� v�a kh�ng c� th�nh vi�n n�a tranh t�i l� th�ng l�i thu�c v� m�t m�t kh�c " ,"Th�ng l�i bang h�i �em c� th� thu h�i �� n�p ��ch 1 ng�n v�n l��ng , ngo�i ra , c�n c� th� l�y ���c 800 v�n l��ng ��ch t��ng th��ng c�ng 1 v�n 2 ng�n �i�m bang h�i kinh nghi�m . th�t b�i bang h�i kh�ng th� d�n tr� v� �� n�p ��ch ph� d�ng , c�n ph�i kh�u tr� 1 v�n 4 ng�n �i�m bang h�i kinh nghi�m "); 
end; 

function OnCancel() 

end; 
