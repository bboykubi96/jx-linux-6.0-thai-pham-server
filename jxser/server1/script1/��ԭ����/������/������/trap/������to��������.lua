-- script viet hoa By http://tranhba.com  Trung Nguy�n b�c khu ph�i Thi�u l�m to Thi�u L�m m�t th�t 
-- script viet hoa By http://tranhba.com Trap ID# Trung Nguy�n b�c khu 67 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function main(sel) 
UTask_sl = GetTask(7) 
if (GetSeries() == 0) and (GetFaction() == "shaolin") then 
		if (UTask_sl == 40*256+10) then
SetTaskTemp(43,0) -- script viet hoa By http://tranhba.com  t�m th�i thay ��i l��ng t�m ��nh v� 43 , mu�n ba v�n �� ��p ��i v�i # t�m th�i thay ��i l��ng tr� gi� l� 3# l�i v�a ti�n v�o m�t th�t . 
			Talk(1,"L40_sele1_1","Tr��c Th�ch m�n c� kh�c m�y h�ng ch�: Mu�n v�o m�t th�t, ph�i tr� l�i 3 c�u h�i d��i ��y!")
		elseif (UTask_sl >= 40*256+10) then
NewWorld(113, 1675, 3361) 
else 
Msg2Player("C# #a c# b b�c ph#, kh t�n g ## v k� ! ") 
end 
else 
Msg2Player("N b�i #y l?c# #a c# b b�c ph#, ng#i ngo nh�ng kh t�n g ## v k� ! ") 
end 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ��y l� v�t g� ? 
end; 

function L40_sele1_1() 
Say("C# th?nh nh� : N# x# # ch� g Huy th�ch Trang mang t?Thi y�t Tr b� b?kinh l? ",2,"#i Th t��ng Ph# Kinh /L40_S1_correct1","Ti# Th t��ng Ph# Kinh /L40_sele1_2") 
end; 

function L40_S1_correct1() 
	SetTaskTemp(43,GetTaskTemp(43) + 1)		-- script viet hoa By http://tranhba.com  ���һ������ֵ��1������ȫ�Է��ɽ���
L40_sele1_2() 
end; 

function L40_sele1_2() 
Say("C# th?2: X?L?c# Ph# t?l?",2,"Sau khi Ph# T?v?c# Ni# B y�u t?#ng h# th y�u h /L40_sele1_3","Do ch v�n h th# Ph# T?thi# ch# m?th y�u h /L40_S1_correct2") 
end; 

function L40_S1_correct2() 
	SetTaskTemp(43,GetTaskTemp(43) + 1)		-- script viet hoa By http://tranhba.com  ���һ������ֵ��1������ȫ�Է��ɽ���
L40_sele1_3() 
end; 

function L40_sele1_3() 
Say("C# th?3: Ph# ph t�nh c# b b�c t?l?thu nhu�n :",3,"Thi th�ch T t�n g /L40_S1_correct3","M# T t�n g /L40_sele1_result","Lu# T t�n g /L40_sele1_result") 
end; 

function L40_S1_correct3() 
	SetTaskTemp(43,GetTaskTemp(43) + 1)		-- script viet hoa By http://tranhba.com  ���һ������ֵ��1������ȫ�Է��ɽ���
L40_sele1_result() 
end; 

function L40_sele1_result() 
if (GetTaskTemp(43) >= 3) then 
SetTaskTemp(43,0) -- script viet hoa By http://tranhba.com  m�i l�n ti�n v�o mu�n n�ng ��nh hai c�a ��ch kh�u quy�t 
Talk(1,"","Tr?l �ch #ng 3 #p #, th ��ng h m t�n l# t ch�m chuy# #ng m?ra 1 l# #") 
NewWorld(113, 1675, 3361); 
else 
SetTaskTemp(43,0) -- script viet hoa By http://tranhba.com  m�i l�n ti�n v�o mu�n n�ng ��nh hai c�a ��ch kh�u quy�t 
Talk(1,"","Tr?l �ch #ng 3 #p #, nh#g h# nh?th ��ng h m t�n v th��ng tr?tr?") 
-- script viet hoa By http://tranhba.com  SetPos() -- script viet hoa By http://tranhba.com  �em nh� ch�i d�i ra trap �i�m 
end 
end; 
