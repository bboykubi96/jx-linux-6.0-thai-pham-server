IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")

nWidth = 4
nHeight = 6
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/tanthudon.lua")
	--do Say("T�m th�i ch�a s� ��ng d��c") return 1 end

	if GetTask(1403) == 1 then
		Say("��i hi�p ch�a nh�n nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� nh�p m�n, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� nh�p m�n trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng nh�n nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 1, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 1 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 2, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 2 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 3, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 3 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 4, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 4 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 10 then
		Say("��i hi�p ch�a ho�n th�nh nhi�m v� T�n Th� 4, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 4 trong Phong V�n L�nh B�i")
		return 1
	end
	if GetTask(1403) == 11 then
		Say("��i hi�p ch�a nh�n nhi�m v� T�n Th� 5, b�m chu�t ph�i ch�n ch�c n�ng ho�n th�nh nhi�m v� T�n Th� 5 trong Phong V�n L�nh B�i")
		return 1
	end

	if GetTask(1403) == 12 then--da nhan nhiem vu tan thu 4 chua su dung tan thu don
		local thuongpvlb = 
				{
				{szName = "V� L�m M�t T�ch",tbProp={6,1,26,1,0,0},nCount=3, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "T�y T�y Kinh",tbProp={6,1,22,1,0,0},nCount=3, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "Tinh h�ng b�o th�ch",	tbProp={4,353,1,1,0,0},nCount=6,nBindState = -2},
				{szName = "H�ng �nh 1", tbProp={0,204}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "H�ng �nh 2", tbProp={0,205}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "H�ng �nh 3", tbProp={0,206}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "H�ng �nh 4", tbProp={0,207}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "��i Th�nh B� K�p 90",	tbProp={6,1,2424,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*30},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlb, "Thuong PVLB Tan Thu 5");
			local thuongpvlbab = 
			{
				{szName = "An Bang 1", tbProp={0,164}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30, nRate=25},
				{szName = "An Bang 2", tbProp={0,165}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30,nRate=25},
				{szName = "An Bang 3", tbProp={0,166}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30,nRate=25},
				{szName = "An Bang 4", tbProp={0,167}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30,nRate=25},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlbab, "Thuong PVLB Tan Thu 5 AB");

		AddRepute(300)
		SetTask(1403,13)--da su dung tan thu don
		Say("Ch�c m�ng ��i hi�p "..GetName().." �� s� d�ng th�nh c�ng T�n Th� ��n m�t trong c�c nhi�m v� c�a Phong V�n L�nh B�i")
		Msg2SubWorld("Ch�c m�ng ��i hi�p "..GetName().." �� s� d�ng th�nh c�ng T�n Th� ��n m�t trong c�c nhi�m v� c�a Phong V�n L�nh B�i")
		return 0
	end

	if GetTask(1403) > 12 then
		Say("M�i nh�n v�t ch� ���c s� d�ng v�t ph�m T�n Th� ��n 1 l�n")
		return 1
	end

end
