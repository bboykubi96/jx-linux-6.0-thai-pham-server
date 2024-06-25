

local tbAccTichLuyVip = 
{
	{"", 1 },
	{"", 2 },
	{"", 3 },
	{"", 3 },
}

function GetHangTichLuy()
	local accName = GetAccount()
	for i=1, getn(%tbAccTichLuyVip) do
		if accName == %tbAccTichLuyVip[i][1] then
		return %tbAccTichLuyVip[i][2]
		end
	end
	return 0
end

function TichLuyVipShowDialog()
local hangtichluy = GetHangTichLuy()
if hangtichluy ~= 0 then
	local tbSay = {}
	tinsert(tbSay,"Nh�n danh hi�u G7VN VIP h�ng "..hangtichluy.." ./NhanDanhHieuG7VNVIP")
	--tinsert(tbSay,"Nh�n �u ��i G7VN VIP h�ng "..hangtichluy.." ./NhanUuDaiG7VNVIP")
	tinsert(tbSay,"K?th�c ��i tho�i ./Quit")
	Say("Ch�c m�ng ��i hi�p �� ��t ���c danh hi�u G7VN VIP", getn(tbSay), tbSay)
else
	Talk(4,"",
	"Danh hi�u G7VN VIP l?g?v�y?",
	"M�i l�n n�p th?t�i kho�n game s?���c t�ch l�y �i�m n�p, <color=yellow> 15h00 th?2 <color> h�ng tu�n s?ch�n ra 3 danh hi�u h�ng 1, h�ng 2, h�ng 3 cho <color=yellow>3 ng��i<color> c?s?�i�m t�ch l�y cao nh�t trong tu�n",
	"Sau khi th�i gian t�ng k�t v?t�m ra <color=yellow>TOP 3<color> �i�m t�ch l�y s?<color=yellow>chuy�n v?0<color> cho t�t c?c�c t�i kho�n game",
	"N�u trong danh s�ch c?<color=yellow>nhi�u t�i kho�n c�ng �i�m t�ch l�y<color> s?���c x�p c�ng h�ng"
	)
end

end



function NhanUuDaiG7VNVIP()

local hangtichluy = GetHangTichLuy()

if hangtichluy == 1 then
AddSkillState(512,20,1,60*60*18)
AddSkillState(527,5,1,60*60*18)
AddSkillState(546,1,1,60*60*18)

AddSkillState(313,5,1,60*60*18)
AddSkillState(314,12,1,60*60*18)
end

if hangtichluy == 2 then
AddSkillState(512,20,1,60*60*18)
AddSkillState(527,5,1,60*60*18)
AddSkillState(546,1,1,60*60*18)
end

if hangtichluy == 3 then
AddSkillState(512,20,1,60*60*18)
end

end

function NhanDanhHieuG7VNVIP()

local hangtichluy = GetHangTichLuy()

if hangtichluy == 0 then
	return
end

local danhieuID = 7001

if hangtichluy == 2 then
danhieuID = 7002
end

if hangtichluy == 3 then
danhieuID = 7003
end

Msg2Player("<color=yellow>Ch�c m�ng ��i hi�p �� nh�n ���c danh hi�u VIP G7VN h�ng " ..hangtichluy.."<color>")

local n_title = danhieuID
local nTime	= 10 * 1000000 + 10 * 10000
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)

end