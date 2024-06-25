IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------------
function main()
Say("H·y Lùa Chän Trang B¸ch Khoa Toµn Th",12,
	"B¸ch Khoa Toµn Th­ - Trang Thø 1/TrangThu1",
	"B¸ch Khoa Toµn Th­ - Trang Thø 2/TrangThu2",
	"B¸ch Khoa Toµn Th­ - Trang Thø 3/TrangThu3",
	"B¸ch Khoa Toµn Th­ - Trang Thø 4/TrangThu4",
	"B¸ch Khoa Toµn Th­ - Trang Thø 5/TrangThu5",
	"B¸ch Khoa Toµn Th­ - Trang Thø 6/TrangThu6",
	"B¸ch Khoa Toµn Th­ - Trang Thø 7/TrangThu7",
	"B¸ch Khoa Toµn Th­ - Trang Thø 8/TrangThu8",
	"B¸ch Khoa Toµn Th­ - Trang Thø 9/TrangThu9",
	"B¸ch Khoa Toµn Th­ - Trang Thø 10/TrangThu10",
	"KÕt Thóc §èi Tho¹i/No") return 1
end
------------------------------------------------------------------------------
function TrangThu1()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30192,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i.")
	end
end

function TrangThu2()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30193,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i.")
	end
end

function TrangThu3()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30194,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i.")
	end
end

function TrangThu4()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30195,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i.")
	end
end

function TrangThu5()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30196,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i.")
	end
end

function TrangThu6()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30197,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i.")
	end
end

function TrangThu7()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30198,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i.")
	end
end

function TrangThu8()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30199,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i.")
	end
end

function TrangThu9()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,301200,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i.")
	end
end

function TrangThu10()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30201,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","Hµnh Trang Kh«ng §ñ 20 ¤ Trèng H·y S¾p XÕp L¹i §i.")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------