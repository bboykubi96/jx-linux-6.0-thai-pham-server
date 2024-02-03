IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\g7vn\\chuyenmonphai.lua")



function main()
	local szTitle = "Xin ch�o <color=red>"..GetName().."<color> ! Ng��i c� mu�n gia nh�p <color=fire>V� H�n ���ng<color> kh�ng?"
	local tbOpt=
	{
	--"V� ph�i/go_vuhon",
	"Gia nh�p V� H�n/join_vuhon",
	"K�t th�c ��i tho�i./no",
	}
	Say(szTitle, getn(tbOpt), tbOpt)
end

function go_vuhon()
	Msg2Player("Ng�i y�n, ch�ng ta ��n <color=yellow>V� H�n ���ng<color>")
	NewWorld(1042, 1625, 3130)
end

function join_vuhon()
	local FactionNumber = GetLastFactionNumber()
	local nSeries = GetSeries()
	if nSeries ~= 3 then
		Talk(1, "", "Ch� nh�n v�t h� H�a m�i c� th� gia nh�p V� H�n ���ng")
		return
	end
	if FactionNumber >= 0 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i r�i.")
		return
	end
	if GetLevel()<10 then
		Talk(1, "", "H�y t� luy�n t�p th�m ��n c�p 10 r�i quay l�i ��y.")
		return
	end
	local szTitle = "<color=red>"..GetName().."<color> ng��i c� ch�c ch�n mu�n gia nh�p ph�i <color=fire>V� H�n<color> b�n ta kh�ng?"
	local tbOpt ={
			"X�c nh�n!/join_vuhon_sure",
			"Kh�ng./no",
		}
	Say(szTitle, getn(tbOpt), tbOpt)
end

-----------------------------------------------------------------------------------------------------------
function join_vuhon_sure()
	SetFaction("wuhun");
	SetCamp(1);
	SetCurCamp(1);
	SetRank(90);
	SetLastFactionNumber(11);
	SetTask(4406,10*256);
	--add_wh(GetLevel())
	AddMagic(1972,0) --ph� tr� thu�n
	AddMagic(1974,0) -- ph� tr� �ao
	AddMagic(1975,0) --10x
	AddMagic(1964,0) --10x

	AddMagic(1976,0) -- 20x

	AddMagic(1977,0) -- 30x
	AddMagic(1965,0) -- 30x

	AddMagic(1979,0) --40x
	AddMagic(1963,0) --40

	AddMagic(1980,0) --50

	AddMagic(1981,0) --60
	AddMagic(1971,0) --60
	AddMagic(1982,0) -- 60 tran phai

	AddMagic(1983,20) -- 9x
	AddMagic(1967,20) --9x
	
	AddMagic(1984,20) --120

	AddMagic(1985,20) -- 150
	AddMagic(1969,20) -- 150

	AddMagic(1986,20) -- 180

	Msg2Faction("%s t� n�y gia nh�p V� H�n, ��n b�i ki�n c�c v� s� huynh, xin c�c v� chi�u c�!",GetName())
	Msg2Player("Ch�c M�ng Ng��i �� Gia Nh�p Ph�i V� H�n ���c H�u Qu�n")
	Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i <color=fire>V� H�n<color>")
end