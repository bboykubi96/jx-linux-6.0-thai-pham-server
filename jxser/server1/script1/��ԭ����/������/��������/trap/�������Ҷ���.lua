-- script viet hoa By http://tranhba.com  Thi�u L�m ph�a sau n�i m�t th�t hai c�a trap 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-04) 

function main(sel) 
UTask_sl = GetTask(7) 
UTask_sl40tmp = GetTaskTemp(43) 
	if (UTask_sl >= 40*256+20) and (UTask_sl < 50*256) then		-- script viet hoa By http://tranhba.com  �����������в��ܽ��룬����ÿ�ν��붼Ҫ�ش�����
		Say("Kh�u quy�t m� th�ch m�n l�: ",4,"�n Ma Ni B�t M� H�ng /L40_S2_wrong","H�ng B�i M� Ma Ni �n /L40_S2_wrong","B�t M� Ni H�ng �n Ma /L40_S2_wrong","�n B�t Ni Ma M� H�ng. /L40_S2_correct")
else 
Talk(1,"","B# l y�t #y m# l# th ��ng h m t�n , nh#g th ��ng h m t�n tr# tr#t kh t�n g c?m# ## t# n k� .") 
-- script viet hoa By http://tranhba.com  SetPos() -- script viet hoa By http://tranhba.com  �em nh� ch�i d�i ra trap �i�m 
end 
-- script viet hoa By http://tranhba.com  AddTermini(47) -- script viet hoa By http://tranhba.com  ��y l� v�t g� ? 
end; 

function L40_S2_correct() 
Talk(1,"","Kh# quy# v t��ng ni# xong, th ��ng h m t�n t?t?m?ra.") 
-- script viet hoa By http://tranhba.com  NewWorld(74, 2040 ,3259) -- script viet hoa By http://tranhba.com  ch� ��i cung c�p b�n �� t�a �� 
end; 

function L40_S2_wrong() 
Talk(1,"","Sau khi #c kh# quy# xong, th ��ng h m t�n v th��ng kh t�n g c?ph# #g g?h#, kh t�n g bi# c?nh?nh# kh# quy# kh t�n g?") 
-- script viet hoa By http://tranhba.com  SetPos() -- script viet hoa By http://tranhba.com  �em nh� ch�i d�i ra trap �i�m 
end; 
