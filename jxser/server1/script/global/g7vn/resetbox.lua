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
		tinsert(tbOpt ,"§¨ng ký xãa pass r­¬ng/#ResetBox:AssignResetBox()")
	end
	if (GetTask(self.TSK_TIME_ASSIGN) > 0) then
		if (self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7) == nCurDate) then
			tinsert(tbOpt ,"X¸c nhËn xãa pass r­¬ng/#ResetBox:ConfirmResetBox()")
		end
		tinsert(tbOpt ,"Xem thêi gian hoµn thµnh xãa pass r­¬ng/#ResetBox:ShowTimeResetBox()")
		tinsert(tbOpt, "Hñy xãa pass r­¬ng/#ResetBox:CancelResetBox()")
	end
	tinsert(tbOpt, "Ta Muèn ChuyÓn Giíi TÝnh/chuyengioi")
	tinsert(tbOpt, "Tho¸t/nothing")


	--CreateNewSayEx("§¹i hiÖp t×m ta cã viÖc g×?", tbOpt)
	Say("§¹i hiÖp t×m ta cã viÖc g×?", getn(tbOpt), tbOpt)	
end

function ResetBox:AssignResetBox()
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	SetTask(self.TSK_TIME_ASSIGN, nCurDate)
	local nDate =  self:GetNextDate(GetTask(self.TSK_TIME_ASSIGN), 7)
	local szDate = mod(nDate, 100) .. "-" .. mod(floor(nDate/100), 100) .. "-" .. floor(nDate/10000)
	Talk(1, "", "Pass r­¬ng sÏ ®­îc xãa vµo ngµy <color=yellow>" .. szDate  .. "<color>\nNÕu sau 24h ngµy <color=yellow>" .. szDate .. " <color>®¹i hiÖp kh«ng x¸c nhËn th× ®¨ng ký xo¸ pass r­¬ng sÏ bÞ hñy bá!")
	self:WriteLogResetBox("Reset Pass R­¬ng - §¨ng Ký")
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

function muabangxu(soxu)

	local nCurTD = CalcEquiproomItemCount(4,417,1,1)--so xu tren hanh trang
	if (nCurTD < soxu) then
		Say("Kh¸ch quan kh«ng mang ®ñ "..soxu.." TiÒn §ång!", 0)
		return -1;
	end

	if (ConsumeEquiproomItem(soxu,4,417,1,1)~= 1) then--tru xu tren hanh trang 1 thanh cong khac 1 that bai
		Msg2Player("Trõ tiÒn ®ång thÊt b¹i !")
		return -1;
	end
	
	return 1;--du dieu kien mua

end;

function ResetBox:ConfirmResetBox()
	--if(muabangxu(500) == 1) then
		GMCancleBoxPassword()
		Msg2Player("§· më pass r­¬ng thµnh c«ng!")
		SetTask(self.TSK_TIME_ASSIGN, 0)
		self:WriteLogResetBox("Reset Pass R­¬ng - Thµnh C«ng Xãa Pass R­¬ng")
	--end
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

function ResetBox:WriteLogResetBox(szLogTitle)
	WriteLog(date("%Y%m%d %H%M%S").."\t".. GetAccount().."\t"..GetName().."\t".. szLogTitle)
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function chuyengioi()
	local szTitle = "<npc>Xin Chµo "..myplayersex().." Cã Muèn ChuyÓn\nGiíi TÝnh Kh«ng Ta SÏ Gióp Ng­¬i Thay Da §æi ThÞt Lµm 1 Dung M¹o Hoµn Toµn Míi...!"
	local tbOpt =
	{
		{"ChuyÓn Nam Thµnh N÷", Nam_To_Nu},
		{"ChuyÓn N÷ Thµnh Nam", Nu_To_Nam},
		{"Tho¸t",},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
------------------------------------Nam Sang N÷-----------------------------------------------------------------------------------------------------------------------
function Nam_To_Nu()
local n_fac = GetLastFactionNumber();
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
if n_fac == 0 then
	Talk(1,"","<bclr=violet>Ph¸i ThiÕu L©m Kh«ng ThÓ ChuyÓn Giíi")
return end
	if (GetSex() == 0) then
		--if(nSilverCount >= 300) then
			SetSex(1) ConsumeEquiproomItem(300,4,417,1,1) KickOutSelf() Msg2Player("<color=green>Chóc Mõng "..myplayersex().." §· ChuyÓn Giíi TÝnh Thµnh C«ng...!<color>")
		--else
		--	Talk(1,"","<color=red>Xin Lçi "..myplayersex().." Kh«ng Mang §ñ 300 Xu\n                                Cßn ThiÕu "..300-nSilverCount.." Xu...!")
		--end
	else	
		Talk(1, "", "<color=green>"..myplayersex().." §ang Lµ <color=red>Giíi TÝnh N÷<color> Råi\n                                 Kh«ng ThÓ TiÕn Hµnh<color>")
	end
end
-------------------------------------N÷ Sang Nam-----------------------------------------------------------------------------------
function Nu_To_Nam()
local n_fac = GetLastFactionNumber();
local nSilverCount = CalcEquiproomItemCount(4, 417, 1, 1) ;
if n_fac == 4 or n_fac == 5 then
	Talk(1,"","<bclr=violet>Ph¸i Nga My - Thóy Yªn\n                             Kh«ng ThÓ ChuyÓn Giíi")
return end
	if (GetSex() == 1) then
		--if(nSilverCount >= 300) then
			SetSex(0) ConsumeEquiproomItem(300,4,417,1,1) KickOutSelf() Msg2Player("<color=green>Chóc Mõng "..myplayersex().." §· ChuyÓn Giíi TÝnh Thµnh C«ng...!<color>")
		--else
		--	Talk(1,"","<color=red>Xin Lçi "..myplayersex().." Kh«ng Mang §ñ 300 Xu\n                                Cßn ThiÕu "..300-nSilverCount.." Xu...!")
		--end
	else	
		Talk(1, "", "<color=green>"..myplayersex().." §ang Lµ <color=red>Giíi TÝnh Nam<color> Råi\n                                 Kh«ng ThÓ TiÕn Hµnh<color>")
	end
end
