Include("\\script\\dailogsys\\dailogsay.lua")
ResetBox = {}

ResetBox.TSK_TIME_ASSIGN = 2752

ResetBox.WAIT_DATE = 7

ResetBox.TBMONTH =  {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}

function ResetBox:ShowDialog()
	local tbOpt = {}
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	self:CheckExpiredDate()
	
	if (GetTask(self.TSK_TIME_ASSIGN) <= 0) then
		tinsert(tbOpt ,"��ng k� x�a pass r��ng/#ResetBox:AssignResetBox()")
	end
	if (GetTask(self.TSK_TIME_ASSIGN) > 0) then
		if (self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7) == nCurDate) then
			tinsert(tbOpt ,"X�c nh�n x�a pass r��ng/#ResetBox:ConfirmResetBox()")
		end
		tinsert(tbOpt ,"Xem th�i gian ho�n th�nh x�a pass r��ng/#ResetBox:ShowTimeResetBox()")
		tinsert(tbOpt, "H�y x�a pass r��ng/#ResetBox:CancelResetBox()")
	end
	tinsert(tbOpt, "Ta Mu�n Chuy�n Gi�i T�nh/chuyengioi")
	tinsert(tbOpt, "Tho�t/nothing")


	--CreateNewSayEx("��i hi�p t�m ta c� vi�c g�?", tbOpt)
	Say("��i hi�p t�m ta c� vi�c g�?", getn(tbOpt), tbOpt)	
end

function ResetBox:AssignResetBox()
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	SetTask(self.TSK_TIME_ASSIGN, nCurDate)
	local nDate =  self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7)
	local szDate = mod(nDate, 100) .. "-" .. mod(floor(nDate/100), 100) .. "-" .. floor(nDate/10000)
	Talk(1, "", "Pass r��ng s� ���c x�a v�o ng�y <color=yellow>" .. szDate  .. "<color>\nN�u sau 24h ng�y <color=yellow>" .. szDate .. " <color>��i hi�p kh�ng x�c nh�n th� ��ng k� xo� pass r��ng s� b� h�y b�!")
	self:WriteLogResetBox("Reset Pass R��ng - ��ng K�")
end

function ResetBox:CancelResetBox()
	SetTask(self.TSK_TIME_ASSIGN, 0)
	Msg2Player("H�y b� x�a pass r��ng th�nh c�ng!")
	self:WriteLogResetBox("Reset Pass R��ng - H�y ��ng K�")
end

function ResetBox:ShowTimeResetBox()
	local nDate =  self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7)
	local szDate = mod(nDate, 100) .. "-" .. mod(floor(nDate/100), 100) .. "-" .. floor(nDate/10000)
	Talk(1, "", "Pass r��ng s� ���c x�a v�o ng�y <color=yellow>" .. szDate  .. "<color>\nN�u sau 24h ng�y <color=yellow>" .. szDate .. " <color>��i hi�p kh�ng x�c nh�n th� ��ng k� xo� pass r��ng s� b� h�y b�!")
end

function muabangxu(soxu)

	local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
	if (nCurTD < soxu) then
		Say("Kh�ch quan kh�ng mang �� "..soxu.." Ti�n ��ng!", 0)
		return -1;
	end

	if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
		Msg2Player("Tr� ti�n ��ng th�t b�i !")
		return -1;
	end
	
	return 1;--du dieu kien mua

end;

function ResetBox:ConfirmResetBox()
	--if(muabangxu(500) == 1) then
		GMCancleBoxPassword()
		Msg2Player("�� m� pass r��ng th�nh c�ng!")
		SetTask(self.TSK_TIME_ASSIGN, 0)
		self:WriteLogResetBox("Reset Pass R��ng - Th�nh C�ng X�a Pass R��ng")
	--end
end

function ResetBox:CheckExpiredDate()
	if (GetTask(self.TSK_TIME_ASSIGN) <= 0) then
		return
	end
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	if (nCurDate == self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 8)) then
		SetTask(self.TSK_TIME_ASSIGN, 0)
		Msg2Player("Ng�y x�c nh�n xo� pass r��ng �� qu� h�n, xin h�y ��ng k� l�i!")
	end
end

function ResetBox:AnnounceResetBoxDate()
	self:CheckExpiredDate()
	if (GetTask(self.TSK_TIME_ASSIGN) > 0) then
		local nDate =  self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7)
		local szDate = mod(nDate, 100) .. "-" .. mod(floor(nDate/100), 100) .. "-" .. floor(nDate/10000)
		Talk(1, "", "Pass r��ng s� ���c x�a v�o ng�y <color=yellow>" .. szDate  .. "<color>\nN�u sau 24h ng�y <color=yellow>" .. szDate .. " <color>��i hi�p kh�ng x�c nh�n th� ��ng k� xo� pass r��ng s� b� h�y b�!")
	end
end

function ResetBox:GetNextDate(oldday, num)
	local nDay = tonumber(oldday)
	local nYear = floor(nDay / 10000)
	local nMonth = floor((nDay - nYear * 10000) / 100)
	nDay = nDay - nYear * 10000 - nMonth * 100 
	nDay = nDay + num
	while (nDay > self.TBMONTH[nMonth]) do
		nDay = nDay - self.TBMONTH[nMonth]
		if (nMonth == 12) then
			nMonth = 1
			nYear = nYear + 1
		else
			nMonth = nMonth + 1
		end
	end
	return (nYear * 10000 + nMonth * 100 + nDay)
end

function nothing()

end

function ResetBox:WriteLogResetBox(szLogTitle)
	WriteLog(date("%Y%m%d %H%M%S").."\t".. GetAccount().."\t"..GetName().."\t".. szLogTitle)
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function chuyengioi()
	local szTitle = "<npc>Xin Ch�o "..myplayersex().." C� Mu�n Chuy�n\nGi�i T�nh Kh�ng Ta S� Gi�p Ng��i Thay Da ��i Th�t L�m 1 Dung M�o Ho�n To�n M�i...!"
	local tbOpt =
	{
		{"Chuy�n Nam Th�nh N�", Nam_To_Nu},
		{"Chuy�n N� Th�nh Nam", Nu_To_Nam},
		{"Tho�t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
------------------------------------Nam Sang N�-----------------------------------------------------------------------------------------------------------------------
function Nam_To_Nu()
local n_fac = GetLastFactionNumber();
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
if n_fac == 0 then
	Talk(1,"","<bclr=violet>Ph�i Thi�u L�m Kh�ng Th� Chuy�n Gi�i")
return end
	if (GetSex() == 0) then
		--if(nSilverCount >= 300) then
			SetSex(1) ConsumeEquiproomItem(300,4,417,1,1) KickOutSelf() Msg2Player("<color=green>Ch�c M�ng "..myplayersex().." �� Chuy�n Gi�i T�nh Th�nh C�ng...!<color>")
		--else
		--	Talk(1,"","<color=red>Xin L�i "..myplayersex().." Kh�ng Mang �� 300 Xu\n                                C�n Thi�u "..300-nSilverCount.." Xu...!")
		--end
	else	
		Talk(1, "", "<color=green>"..myplayersex().." �ang L� <color=red>Gi�i T�nh N�<color> R�i\n                                 Kh�ng Th� Ti�n H�nh<color>")
	end
end
-------------------------------------N� Sang Nam-----------------------------------------------------------------------------------
function Nu_To_Nam()
local n_fac = GetLastFactionNumber();
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
if n_fac == 4 or n_fac == 5 then
	Talk(1,"","<bclr=violet>Ph�i Nga My - Th�y Y�n\n                             Kh�ng Th� Chuy�n Gi�i")
return end
	if (GetSex() == 1) then
		--if(nSilverCount >= 300) then
			SetSex(0) ConsumeEquiproomItem(300,4,417,1,1) KickOutSelf() Msg2Player("<color=green>Ch�c M�ng "..myplayersex().." �� Chuy�n Gi�i T�nh Th�nh C�ng...!<color>")
		--else
		--	Talk(1,"","<color=red>Xin L�i "..myplayersex().." Kh�ng Mang �� 300 Xu\n                                C�n Thi�u "..300-nSilverCount.." Xu...!")
		--end
	else	
		Talk(1, "", "<color=green>"..myplayersex().." �ang L� <color=red>Gi�i T�nh Nam<color> R�i\n                                 Kh�ng Th� Ti�n H�nh<color>")
	end
end
