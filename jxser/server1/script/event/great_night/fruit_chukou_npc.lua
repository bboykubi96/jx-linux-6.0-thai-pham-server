--双龙洞出口NPC会话脚本


function main()
	local tbDialog =
	{
		--"<desc><npc>你打算让我送你出去吗？",
	  	"R阨 kh醝 khu v鵦/return_city",
	  	"L竧 n鱝 quay l筰 /no",
	}
	--CreateTaskSay(tbDialog)
	Describe("<color=yellow>Ngi truy襫 t鑞g Chi課 Long чng: <color>ngi nh nh� ta a ngi ra �?",getn(tbDialog), unpack(tbDialog))
end;

function no()
end

function return_city()
	UseTownPortal()--同使用回城符的效果
--	nCityIndex = 2 --回成都
--	if (nCityIndex == 1) then
--		NewWorld(1, 1557, 3112) -- 凤翔		
--	elseif (nCityIndex == 2) then
--		NewWorld(11, 3193, 5192) -- 成都	
--	elseif (nCityIndex == 3) then
--		NewWorld(162, 1669, 3129) -- 大理	
--	elseif (nCityIndex == 4) then
--		NewWorld(37, 1598, 3000) -- 汴京
--	elseif (nCityIndex == 5) then
--		NewWorld(78, 1592, 3377) -- 襄阳
--	elseif (nCityIndex == 6) then
--		NewWorld(80, 1670, 2996) -- 扬州		
--	elseif (nCityIndex == 7) then
--		NewWorld(176, 1603, 2917) -- 临安
--	else
--		Msg2Player("系统出现错误！请找客服人员确认解决问题");
--	end	
end



