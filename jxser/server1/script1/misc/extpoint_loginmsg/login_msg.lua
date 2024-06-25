--Th玭g b竜 khi login game edit by mcteam
Include("\\script\\worldrank\\vngglobalvar.lua")
Include("\\script\\worldrank\\vngtop10.lua")
Include("\\script\\worldrank\\xephang.lua")
Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\systemconfig.lua")
Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");

Include("\\script\\bonusvlmc\\head.lua");
Include("\\script\\vonghoa\\item\\head.lua");

LOGINMSG_EXTPOINTID		= 7;
LOGINMSG_BITL			= 1;
LOGINMSG_BITH			= 5; 	--So dong hien thi trong TB_LOGINMSG_BYBIT
TB_LOGINMSG_BYBIT = {
--[1]	= "",
--[2]	= "",
};

function extpoint_loginmsg()
	--XHDauHoi()
	--tbTop10:TinhLucXH(GetName())
	--tbTop10:LuuDSNhanVat()
	--dofile("script/misc/extpoint_loginmsg/login_msg.lua")
	
	if (not SYSCFG_EXTPOINTID7_LOGINMSG) then
		return
	end;
	
	-- 只有越南版本才有此功能
	if (SYSCFG_PRODUCT_REGION_ID ~= DEF_PRODUCT_REGION_VN) then
		return
	end
	SetTask(Task_IsCurUse_VongHoa,0)--set task su dung vong hoa	
	--local nExtP = GetExtPoint(LOGINMSG_EXTPOINTID);
	--if (nExtP ~= 0) then
		--for i = LOGINMSG_BITL, LOGINMSG_BITH do
			--if (GetBit(nExtP, i) == 1 and TB_LOGINMSG_BYBIT[i]) then
				--Msg2Player(TB_LOGINMSG_BYBIT[i])
			--end;
		--end;
	--end;

	for i = LOGINMSG_BITL, LOGINMSG_BITH do
		Msg2Player(TB_LOGINMSG_BYBIT[i])
	end
	
	local nDate = tonumber(date("%Y%m%d"))
	if nDate >=20091201 then
		if GetTask(2657) == 0 then
			for i=2629,2635 do
				SetTask(i,0)
			end	
			SetTask(2657,1)
		end
	end
	
	if IsIPBonus() == 1 and CheckIPBonus() == 1 then
		IpBonus_Close()
		IpBonus_Start()
	else
		if GetSkillState(451) > 0 and GetTask(TSK_Active_x2EXP) ~= 1 then
			--Msg2Player("TinhPN: " .. TSK_Active_x2EXP)
			RemoveSkillState(451)
		end
	end;
end;

if login_add then login_add(extpoint_loginmsg, 2) end
