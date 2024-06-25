

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
	tinsert(tbSay,"NhÀn danh hi÷u G7VN VIP hπng "..hangtichluy.." ./NhanDanhHieuG7VNVIP")
	--tinsert(tbSay,"NhÀn ≠u Æ∑i G7VN VIP hπng "..hangtichluy.." ./NhanUuDaiG7VNVIP")
	tinsert(tbSay,"K?thÛc ÆËi thoπi ./Quit")
	Say("ChÛc mıng Æπi hi÷p Æ∑ Æπt Æ≠Óc danh hi÷u G7VN VIP", getn(tbSay), tbSay)
else
	Talk(4,"",
	"Danh hi÷u G7VN VIP l?g?vÀy?",
	"MÁi l«n nπp th?tµi kho∂n game s?Æ≠Óc t›ch lÚy Æi”m nπp, <color=yellow> 15h00 th?2 <color> hµng tu«n s?ch‰n ra 3 danh hi÷u hπng 1, hπng 2, hπng 3 cho <color=yellow>3 ng≠Íi<color> c?s?Æi”m t›ch lÚy cao nh t trong tu«n",
	"Sau khi thÍi gian tÊng k’t v?t◊m ra <color=yellow>TOP 3<color> Æi”m t›ch lÚy s?<color=yellow>chuy”n v?0<color> cho t t c?c∏c tµi kho∂n game",
	"N’u trong danh s∏ch c?<color=yellow>nhi“u tµi kho∂n cÔng Æi”m t›ch lÚy<color> s?Æ≠Óc x’p cÔng hπng"
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

Msg2Player("<color=yellow>ChÛc mıng Æπi hi÷p Æ∑ nhÀn Æ≠Óc danh hi÷u VIP G7VN hπng " ..hangtichluy.."<color>")

local n_title = danhieuID
local nTime	= 10 * 1000000 + 10 * 10000
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)

end