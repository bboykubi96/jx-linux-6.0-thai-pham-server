Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\namcung\\namcung_gm.lua")
Include("\\script\\global\\namcung\\hotrothem.lua")

function main()
	str = "Ch�o m�ng c�c b�n �� tham gia th� gi�i <color=red>V� L�m Truy�n K�<color> ���c ph�t tri�n b�i <color=green>Nam Cung Nh�t Thi�n<color> m�i chi ti�t xin li�n h� <color=green>Https://www.facebook.com/nhatthienpro<color> �� nh�n ���c s� h� tr� khi c�n thi�t."
	AddGlobalCountNews(str, 2)
	local szTitle = "<npc>H� tr� GM. C�u Ni�n T��ng Ph�ng.Hoan ngh�nh c�c anh h�ng h�o ki�t... ! <enter>Script GM By <color=green>Nam Cung Nh�t Thi�n<color> clbgamesvn.com"
	local tbOpt =
	{
		{"H� tr� Test", nacu},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function nacu()
dialog_main()
end

