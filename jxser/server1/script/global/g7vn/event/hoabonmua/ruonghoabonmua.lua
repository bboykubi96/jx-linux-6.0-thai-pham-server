
Include("\\script\\lib\\awardtemplet.lua")
function main()
dofile("script/global/g7vn/event/hoabonmua/ruonghoabonmua.lua")
local tbaward={
{szName="Bã Hoa Bèn Mïa",tbProp={6,1,30330,1,0,0},nCount=50},
}

tbAwardTemplet:Give(tbaward, 1, {"NhanHoTroTanThu", "NhanHoTroTanThu"})

end
