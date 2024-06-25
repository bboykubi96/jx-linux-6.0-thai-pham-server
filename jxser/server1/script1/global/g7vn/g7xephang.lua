XepHangG7VN = {}


function XepHangServerG7VN()

if tbTemp == nil then
	tbTemp = {}
end

local flag = 0
for i=1,getn(tbTemp) do
	local tbcon = tbTemp[i]
	if tbcon[1] == GetName() then
		tbcon[2] = GetLevel()
		flag = 1
	end
end

if flag == 0 then
	tinsert(tbTemp, {GetName(), GetLevel()})
end

sort(tbTemp, function (a, b) return(a[2] > b[2]) end)

for i=1,getn(tbTemp) do
local tbcon = tbTemp[i]
Msg2Player("TOP ".. i .. ": " .. tbcon[1] .. " c p: " .. tbcon[2] .."")

if tbcon[1] == GetName() and i<100 then
	SetRank(81+i)	
end

end

end

