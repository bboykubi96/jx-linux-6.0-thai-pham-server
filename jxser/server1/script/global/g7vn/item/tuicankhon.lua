IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")

nWidth = 4
nHeight = 6
nFreeItemCellLimit = 1

Include("\\script\\global\\g7vn\\g7configall.lua")

function main(nIndexItem)

	--dofile("script/global/g7vn/item/tuicankhon.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	--do Say("T�m th�i ch�a s� ��ng d��c") return 1 end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	

	local tasknv1 = GetTask(idtaskgiftcodet92015)
	local tasknv2 = GetTask(idtaskCodetanthuG7nv2)
	local tasknv3 = GetTask(idtaskCodetanthuG7nv3)
	local tasknv4 = GetTask(idtaskCodetanthuG7nv4)
	local tasknv5 = GetTask(idtaskCodetanthuG7nv5)
	local tasknv6 = GetTask(idtaskCodetanthuG7nv6)
	local tasknv7 = GetTask(idtaskCodetanthuG7nv7)

	if tasknv1 == 0 and tasknv2 == 0 then
			Say("��i hi�p v�n ch�a ho�n th�nh nhi�m v� GIFTCODE trong chu�i nhi�m v� t�n th�, xem h��ng d�n chung v� th�c hi�n")
			return 1
	end

	if tasknv1 == 1 and tasknv2 == 0 and tasknv3 == 0 then
			Say("G�p V� L�m Truy�n Nh�n t�i 7 ��i th�nh th� ��i tho�i v� <color=yellow>ch�n ch�c n�ng nh�n �i�m ph�c duy�n<color>")
			return 1
	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 0 and tasknv4 == 0 then
			Say("��i hi�p ��n g�p D� T�u <color=yellow>ho�n th�nh li�n ti�p 2 nhi�m v� kh�ng h�y<color>")
			return 1
	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 1 and tasknv4 == 0 then
			Say("Ti�p theo h�y th�c hi�n nhi�m v� t�n th� th�n, �i�m <color=yellow>danh v�ng ��t ���c tr�n 50 �i�m<color>")
			return 1
	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 1 and tasknv4 == 1 and tasknv5 == 0 and tasknv6 == 0 then
		Say("Tham gia 1 tr�n T�ng Kim c� g�ng <color=yellow>��t ���c 1000 �i�m t�ch l�y tr� l�n <color> quay v� g�p npc h� tr� t�n th� tr� nhi�m v�")
		return 1
	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 1 and tasknv4 == 1 and tasknv5 == 1 and tasknv6 == 0 and tasknv7 == 0 then
		Say("S� d�ng 200 ti�n ��ng t�m mua T�n Th� ��n trong k� tr�n c�c �� tu luy�n n�i c�ng")
		return 1
	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 1 and tasknv4 == 1 and tasknv5 == 1 and tasknv6 == 1 and tasknv7 == 0 then

		local mlevel = GetLevel()
		local mtsinh = ST_GetTransLifeCount()

		if ST_GetTransLifeCount() < 1 then
			Say("Nh�n v�t tr�ng sinh 1 tr� l�n m�i s� d�ng ���c")
			return 1
		end

		if GetLevel() < 119 and ST_GetTransLifeCount() == 1 then
			local nAddLevel = 119 - mlevel
			ST_LevelUp(nAddLevel)
		end

		Earn(5000000) -- 500 van

		local tbAward = 
		{	
				{szName="An bang tinh th�ch h�ng li�n",tbProp={0,164},nCount=1,nQuality = 1,nBindState = -2},
				{szName="An bang c�c hoa th�ch ch� ho�n",tbProp={0,165},nCount=1,nQuality = 1,nBindState = -2},
				{szName="An bang k� huy�t th�c gi�i ch�",tbProp={0,167},nCount=1,nQuality = 1,nBindState = -2},
				{szName="An bang �i�n th�ch ng�c b�i",tbProp={0,166},nCount=1,nQuality = 1,nBindState = -2},
				{szName = "B�n Ti�u"				,tbProp={0,10,6,1,5,0},nCount=1,nBindState = -2},
				{szName = "T�y T�y Kinh"		,tbProp={6,1,22,1,0,0},nCount=5,nBindState = -2},
				{szName = "V� L�m M�t T�ch"		,tbProp={6,1,26,1,0,0},nCount=5,nBindState = -2},
		}
		tbAwardTemplet:Give(tbAward, 1, {"TuiCanKhonG7", "TuiCanKhonG7"})

		local tbAwardngaunhien = 
		{	
				{szName = "Ti�n Th�o L� ��c bi�t",											tbProp={6,1,1181,1,0,0},nCount=15,nBindState = -2,nRate=25,},
				{szName = "N�n B�t tr�n ph�c nguy�t",										tbProp = {6, 1, 1817, 1, 0, 0},nCount=7,nRate=1,nBindState = -2,nRate=15,},	
				{szName = "M�t n� v��ng gi�",														tbProp={0,11,561,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*15,nRate=15,},
			--	{szName = "C�n kh�n song tuy�t b�i",										tbProp = {6,1,2219,1,0,0},nBindState = -2,nCount=1,nRate=15},
				{szName = "Nh�t k� c�n kh�n ph�",											tbProp = {6,1,2126,1,0,0},nBindState = -2,nCount=1,nRate=15},
				{szName = "Phi�n V� ",																tbProp={0,10,7,1,0,0},nCount=1,nRate=15,nExpiredTime=60*24*30,nBindState = -2},
		}
		tbAwardTemplet:Give(tbAwardngaunhien, 1, {"TuiCanKhonG7NgauNhien", "TuiCanKhonG7NgauNhien"})

		SetTask(idtaskCodetanthuG7nv7, 1)

	end

	if tasknv1 == 1 and tasknv2 == 1 and tasknv3 == 1 and tasknv4 == 1 and tasknv5 == 1 and tasknv6 == 1 and tasknv7 == 1 then
		Say("Ch�c m�ng ��i hi�p �� ho�n th�nh chu�i nhi�m v� t�n th� m�i 2016")
		return 1
	end

end
