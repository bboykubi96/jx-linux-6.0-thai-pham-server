-- script viet hoa By http://tranhba.com description: ph�i Nga Mi cao nh�n 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/5 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-12) 
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main() 

if allbrother_0801_CheckIsDialog(1) == 1 then 
allbrother_0801_FindNpcTaskDialog(1) 
return 0; 
end 


UTask_em = GetTask(1) 
	if (UTask_em == 40*256+10) then
Talk(1,"","C� chuy�n g� , tr��c ��nh b�i ta nu�i ��ch <color=Red> linh th� <color> l�i n�i .") 
AddNote("T�m ���c m�t �n c� cao nh�n , mu�n ��t ���c s� gi�p �� c�a h�n , mu�n ��nh b�i h�n nu�i ��ch linh th� ") 
	elseif (UTask_em == 40*256+20) then
Say("Mu�n kh�c ph� , c�m huy t�ng danh t�c <color=Red># ph� dung c�m g� �� #<color> �� ��i . b�c h�a n�y hi�n r�i v�o th�nh �� ph� th�i b�nh ti�u c�c trong tay , c� b�n l�nh ng��i li�n l�y t�i ") 
		SetTask(1, 40*256+40)
AddNote("��nh b�i linh th� , ti�p nh�n v� ��n ti�u c�c �em ph� dung c�m g� �� mang v� ") 
Msg2Player("Cao nh�n y�u c�u d�ng ph� dung c�m g� �� ��i tr�m �i�u h��ng ph��ng kh�c ph� ") 
	elseif ((UTask_em == 40*256+60) and (HaveItem(21) == 1)) then						-- script viet hoa By http://tranhba.com �õ�ܽ�ؽ���ͼ
Talk(6, "select","C�i n�y th�t s� l� ph� dung c�m g� �� .","��y th�t l� huy t�ng th�t t�ch , ha ha ha , ta tri�u t� m� t��ng , r�t c�c l�y ���c n�a/r�i !","B�y gi� ng��i c� th� �em # tr�m �i�u h��ng ph��ng # ��ch kh�c ph� cho ta li�u �i ?","C�i n�y ...","Ng��i l� ti�n b�i cao nh�n , c�ng kh�ng th� n�i kh�ng gi� l�i , n�u kh�ng s� b� ng��i trong thi�n h� nh�o b�ng ��ch .","Ta l�i kh�ng n�i kh�ng cho , ��y ch�nh l� kh�c ph� , ng��i c�m �i �i !") 
	elseif ((UTask_em == 40*256+80) and (HaveItem(22) == 0)) then
AddEventItem(22) 
Talk(3,"","Kh�ng th�y tr�m �i�u h��ng ph��ng kh�c ph� a ? b�i v� ng��i kh�ng c�m , kh�ng c�m tr�ch ta ","Ti�n b�i cao nh�n c�n t�i l�a g�t v�n b�i , n�u nh� c�i n�y truy�n �i , danh d� s� ","���c r�i , ta s� ng��i , mau c�m kh�c ph� �i ") 
	elseif (UTask_em >= 40*256+40) and (UTask_em < 40*256+80) then
Talk(1,"","Mu�n kh�c ph� a ? c�m <color=Red>' ph� dung c�m g� �� #'<color> �� ��i .") 
	elseif (UTask_em >= 40*256+80) then
Talk(1,"","Ph� dung c�m g� �� th�t l� hay , nh�n c� ��i c�ng kh�ng n� .") 
else 
Talk(1,"","Ng��i r�i r�nh ch� qu�y r�y ta !") 
end 
end; 

function select() 
DelItem(21) 
AddEventItem(22) 
	SetTask(1, 40*256+80)
AddNote("Ph� dung c�m g� �� ��i tr�m �i�u h��ng ph��ng kh�c ph� . ") 
Msg2Player("��t ���c tr�m �i�u h��ng ph��ng kh�c ph� ") 
end; 
