Include("\\script\\lib\\awardtemplet.lua")

function main()
	Msg2Player("M� l� bao ng�u nhi�n nh�n ���c")
	tbAwardTemplet:Give(tbAward, 1, {"MOLEBAODIEMKN", "PhanThuongThamGiaHoatDong"})
end

tbAward = {
	
	{szName = "�i�m Kinh Nghi�m", nExp=500000,nRate=50},
	{szName = "�i�m Kinh Nghi�m", nExp=1000000,nRate=40},
	{szName = "�i�m Kinh Nghi�m", nExp=2000000,nRate=9},
	{szName = "�i�m Kinh Nghi�m", nExp=3000000,nRate=0.3},
	{szName = "�i�m Kinh Nghi�m", nExp=4000000,nRate=0.2},
	{szName = "�i�m Kinh Nghi�m", nExp=5000000,nRate=0.1},
}

