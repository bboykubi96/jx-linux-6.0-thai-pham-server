IncludeLib("SETTING");
Include("\\script\\task\\task_addplayerexp.lua")  --给玩家累加经验的公共函数
Include("\\script\\lib\\pay.lua")

Include("\\script\\global\\g7vn\\g7configall.lua")

function main( nItemIndex )
    
	--dofile("script/item/tianshanxuelian.lua"
	--dofile("script/global/g7vn/g7configall.lua")
	
	if DangDuaTop == 1 then
		Say("ng trong qu� tr譶h 畊a top, kh玭g th� th鵦 hi謓 thao t竎 n祔")
		return 1
	end

	local nTransLife = ST_GetTransLifeCount()	
	if (nTransLife >= 1) then
		Say("Nh﹏ v藅  tr飊g sinh kh玭g th� s� d鬾g", 0)
		return 1
	end

    local nPLev = GetLevel()
    if nPLev >= 80  or nPLev < 1 or IsCharged() < 1 then
        Say("Ch� c� nh﹏ v藅 c蕄  t� 1 n 79 c� th� s� d鬾g.", 0)
        return 1
    end
    local nAddLevel = 80 - nPLev
    ST_LevelUp(nAddLevel)

    --tl_addPlayerExp(1433042000)
	nPLev = GetLevel()
	--Msg2Player(format("Ch骳 m鮪g b筺, ng c蕄 hi謓 t筰 c馻 b筺 l� %d.",nPLev))
	WriteLog(format("[S� d鬾g Thi猲 S琻 Tuy誸 Li猲]\t%s\tName:%s\tAccount:%s\t v鮝 ╪ 頲 1 Thi猲 S琻 Tuy誸 Li猲.",
			GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount()));
	Msg2SubWorld("Ch骳 m鮪g i hi謕 <color=green>"..GetName().."<color>  s� d鬾g <color=yellow>Thi猲 S琻 Tuy誸 Li猲<color> t筰 npc Ti觰 Phng (Tng Dng 195/201)")
end
--
