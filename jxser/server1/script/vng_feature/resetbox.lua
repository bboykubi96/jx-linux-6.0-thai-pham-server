
ResetBox = {}

ResetBox.TSK_TIME_ASSIGN = 2752

ResetBox.WAIT_DATE = 7

ResetBox.TBMONTH =  {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}

function ResetBox:ShowDialog()
	local tbOpt = {}
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	self:CheckExpiredDate()
	
	if (GetTask(self.TSK_TIME_ASSIGN) <= 0) then
		tinsert(tbOpt,"§¨ng ký xãa pass r­¬ng/#ResetBox:AssignResetBox()")
		tinsert(tbOpt,"Xãa Pass R­¬ng Trùc TiÕp/Resetpassbox")
	end
	if (GetTask(self.TSK_TIME_ASSIGN) > 0) then
		if (self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7) == nCurDate) then
			tinsert(tbOpt ,"X¸c nhËn xãa pass r­¬ng/#ResetBox:ConfirmResetBox()")
		end	
		tinsert(tbOpt ,"Xem thêi gian hoµn thµnh xãa pass r­¬ng/#ResetBox:ShowTimeResetBox()")
		tinsert(tbOpt, "Hñy xãa pass r­¬ng/#ResetBox:CancelResetBox()")
	end
	tinsert(tbOpt, "Tho¸t/nothing")
	Say("§¹i hiÖp t×m ta cã viÖc g×?", getn(tbOpt), tbOpt)	
end

function ResetBox:AssignResetBox()
	if GetBoxLockState() >= 1 then
		local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
		SetTask(self.TSK_TIME_ASSIGN, nCurDate)
		local nDate =  self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7)
		local szDate = mod(nDate, 100) .. "-" .. mod(floor(nDate/100), 100) .. "-" .. floor(nDate/10000)
		Talk(1,"","Pass r­¬ng sÏ ®­îc xãa vµo ngµy <color=yellow>" .. szDate  .. "<color>\nNÕu sau 24h ngµy <color=yellow>" .. szDate .. " <color>®¹i hiÖp kh«ng x¸c nhËn th× ®¨ng ký xo¸ pass r­¬ng sÏ bÞ hñy bá!")
		self:WriteLogResetBox("Reset Pass R­¬ng - §¨ng Ký")
	else
		Talk(1,"","<color=yellow>Ng­¬i Kh«ng Cã M· R­¬ng Kh«ng ThÓ Xãa")
	end
end

function ResetBox:CancelResetBox()
	SetTask(self.TSK_TIME_ASSIGN, 0)
	Msg2Player("Hñy bá xãa pass r­¬ng thµnh c«ng!")
	self:WriteLogResetBox("Reset Pass R­¬ng - Hñy §¨ng Ký")
end

function ResetBox:ShowTimeResetBox()
	local nDate =  self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7)
	local szDate = mod(nDate, 100) .. "-" .. mod(floor(nDate/100), 100) .. "-" .. floor(nDate/10000)
	Talk(1, "", "Pass r­¬ng sÏ ®­îc xãa vµo ngµy <color=yellow>" .. szDate  .. "<color>\nNÕu sau 24h ngµy <color=yellow>" .. szDate .. " <color>®¹i hiÖp kh«ng x¸c nhËn th× ®¨ng ký xo¸ pass r­¬ng sÏ bÞ hñy bá!")
end

function ResetBox:ConfirmResetBox()
	GMCancleBoxPassword()
	Msg2Player("§· më pass r­¬ng thµnh c«ng!")
	SetTask(self.TSK_TIME_ASSIGN, 0)
	self:WriteLogResetBox("Reset Pass R­¬ng - Thµnh C«ng Xãa Pass R­¬ng")
end

function ResetBox:CheckExpiredDate()
	if (GetTask(self.TSK_TIME_ASSIGN) <= 0) then
		return
	end
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	if (nCurDate == self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 8)) then
		SetTask(self.TSK_TIME_ASSIGN, 0)
		Msg2Player("Ngµy x¸c nhËn xo¸ pass r­¬ng ®· qu¸ h¹n, xin h·y ®¨ng ký l¹i!")
	end
end

function ResetBox:AnnounceResetBoxDate()
	self:CheckExpiredDate()
	if (GetTask(self.TSK_TIME_ASSIGN) > 0) then
		local nDate =  self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7)
		local szDate = mod(nDate, 100) .. "-" .. mod(floor(nDate/100), 100) .. "-" .. floor(nDate/10000)
		Talk(1, "", "Pass r­¬ng sÏ ®­îc xãa vµo ngµy <color=yellow>" .. szDate  .. "<color>\nNÕu sau 24h ngµy <color=yellow>" .. szDate .. " <color>®¹i hiÖp kh«ng x¸c nhËn th× ®¨ng ký xo¸ pass r­¬ng sÏ bÞ hñy bá!")
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
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Resetpassbox()
	if GetBoxLockState() >= 1 then
		Say("<color=yellow>Ng­¬i Muèn Xãa M· R­¬ng Trùc TiÕp §Ó §¶m B¶o Tµi S¶n Yªu CÇu: 300 Kim Nguyªn B¶o",2,"§óng Ta Lµm Míi L¹i M· R­¬ng Ngay LËp Tøc/xoamaruong","Tho¸t/no")
	else
		Talk(1,"","<color=yellow>Ng­¬i Kh«ng Cã M· R­¬ng Kh«ng ThÓ Xãa")
	end
end

function xoamaruong()
	if CalcEquiproomItemCount(4,2573,1,1) >= 300 then
		GMCancleBoxPassword() Say("<color=fire>Chóc Mõng Ng­¬i §· Xãa M· R­ëng Thµnh C«ng Vui Lßng §Æt L¹i M· R­¬ng Míi",2,"§Æt L¹i MËt KhÈu/PassRuong","Th«i/No")
		ConsumeEquiproomItem(300,4,1496,1,-1)
	else
		Talk(1,"", "<color=red>Ng­¬i Kh«ng §ñ 300 Kim Nguyªn B¶o Xin KiÓm Tra L¹i...!<color>")
	end
end

function PassRuong()
OpenBox()
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ResetBox:WriteLogResetBox(szLogTitle)
	WriteLog(date("%Y%m%d %H%M%S").."\t".. GetAccount().."\t"..GetName().."\t".. szLogTitle)
end
------------------------------------------------------------------------------------------------------------------------------------------