IncludeLib("ITEM")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------------
function main()
Say("H�y L�a Ch�n Trang B�ch Khoa To�n Th",12,
	"B�ch Khoa To�n Th� - Trang Th� 1/TrangThu1",
	"B�ch Khoa To�n Th� - Trang Th� 2/TrangThu2",
	"B�ch Khoa To�n Th� - Trang Th� 3/TrangThu3",
	"B�ch Khoa To�n Th� - Trang Th� 4/TrangThu4",
	"B�ch Khoa To�n Th� - Trang Th� 5/TrangThu5",
	"B�ch Khoa To�n Th� - Trang Th� 6/TrangThu6",
	"B�ch Khoa To�n Th� - Trang Th� 7/TrangThu7",
	"B�ch Khoa To�n Th� - Trang Th� 8/TrangThu8",
	"B�ch Khoa To�n Th� - Trang Th� 9/TrangThu9",
	"B�ch Khoa To�n Th� - Trang Th� 10/TrangThu10",
	"K�t Th�c ��i Tho�i/No") return 1
end
------------------------------------------------------------------------------
function TrangThu1()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30192,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i.")
	end
end

function TrangThu2()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30193,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i.")
	end
end

function TrangThu3()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30194,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i.")
	end
end

function TrangThu4()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30195,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i.")
	end
end

function TrangThu5()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30196,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i.")
	end
end

function TrangThu6()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30197,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i.")
	end
end

function TrangThu7()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30198,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i.")
	end
end

function TrangThu8()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30199,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i.")
	end
end

function TrangThu9()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,301200,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i.")
	end
end

function TrangThu10()
	if (CalcFreeItemCellCount() >= 20) then
		AddItem(6,1,30201,1,0,0)
		ConsumeEquiproomItem(1,6,1,30190,-1)
	else
		Talk(1,"","H�nh Trang Kh�ng �� 20 � Tr�ng H�y S�p X�p L�i �i.")
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------