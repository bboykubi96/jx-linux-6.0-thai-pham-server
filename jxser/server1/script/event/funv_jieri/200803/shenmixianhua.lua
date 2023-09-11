--车老太，翠翠08妇女节活动
--
--
Include("\\script\\task\\task_addplayerexp.lua")
if tbclassname == nil then
	tbclassname = {}
end
funv_jieri_shenmi = tbclassname
funv_jieri_shenmi.ndatestart = 8030800
funv_jieri_shenmi.ndateend = 8033124
funv_jieri_shenmi.ntask = 1878
funv_jieri_shenmi.LIMIT_LEVEL = 50
funv_jieri_shenmi.tbitem =
{
	meigui = {g=6,d=1,p=1681,szname="B� hoa h錸g",nexp=0.001,limit=25},
	juhua = {g=6,d=1,p=1682,szname="B� hoa c骳",nmanexp=1000000,nmaleexp=1500000,limit=125},
}
function funv_jieri_shenmi:xianhua()
	local ndate = tonumber(GetLocalDate("%y%m%d%H"))
	if ndate < funv_jieri_shenmi.ndatestart or ndate > funv_jieri_shenmi.ndateend then
		Say("T筸 th阨 ch璦 c� ho箃 ng.",0)
		return
	end		
	Say("Ch糿g hay c竎 h� mu鑞 t苙g ta hoa g� nh�?",3,"Ta mu鑞 t苙g b� hoa h錸g./#funv_jieri_shenmi:zengsongmeigui(1)","Ta mu鑞 t苙g b� hoa c骳./#funv_jieri_shenmi:zengsongjuhua(1)","Tho竧 ra/NoChoice")
end

function funv_jieri_shenmi:zengsongmeigui(sel)
	if self:check_level() == 0 then
		Say("Nh﹏ v藅 ng c蕄 tr猲 50  n筽 th� m韎 c� th� t苙g hoa.",0)
		return
	end
	if self:check_pay() == 0 then
		Say("Nh﹏ v藅 ng c蕄 tr猲 50  n筽 th� m韎 c� th� t苙g hoa.",0)
		return
	end
	local ntaskmeigui = self:getTaskByte(self.ntask,1)
	local tbmeigui = self.tbitem.meigui
	if ntaskmeigui >= tbmeigui.limit then
		Say("M鏸 nh﹏ v藅 ch� c� th� t苙g cho 2 nh﹏ v藅 nhi謒 v� b� 萵 t鑙 產 25 b� hoa h錸g.",0)
		return
	end
	local nmeigui = CalcEquiproomItemCount(tbmeigui.g,tbmeigui.d,tbmeigui.p,-1)
	local nsum = 0
	if nmeigui < 1 then
		Say("B筺 qu猲 mang b� hoa h錸g r錳.",0)
		return
	end
	ConsumeEquiproomItem(1,tbmeigui.g,tbmeigui.d,tbmeigui.p,-1)
	local n_transcount = ST_GetTransLifeCount();
	local nexp = tl_getUpLevelExp((GetLevel()+1), n_transcount) * tbmeigui.nexp
	AddOwnExp(nexp)
	Msg2Player(format("Ch骳 m鮪g, b筺 nh薾 頲 <color=yellow>%d<color> kinh nghi謒",nexp))
	self:addTaskByte(self.ntask,1,1)
end

function funv_jieri_shenmi:zengsongjuhua(sel)
	if self:check_level() == 0 then
		Say("Nh﹏ v藅 ng c蕄 tr猲 50  n筽 th� m韎 c� th� t苙g hoa.",0)
		return
	end
	if self:check_pay() == 0 then
		Say("Nh﹏ v藅 ng c蕄 tr猲 50  n筽 th� m韎 c� th� t苙g hoa.",0)
		return
	end
	local ntaskjuhua = self:getTaskByte(self.ntask,2)
	local tbjuhua = self.tbitem.juhua
	if ntaskjuhua >= tbjuhua.limit then
		Say("M鏸 nh﹏ v藅 ch� c� th� t苙g cho 2 nh﹏ v藅 nhi謒 v� b� 萵 t鑙 產 125 b� hoa c骳.",0)
		return
	end
	local njuhua = CalcEquiproomItemCount(tbjuhua.g,tbjuhua.d,tbjuhua.p,-1)
	local nsum = 0
	if njuhua < 1 then
		Say("B筺 qu猲 mang b� hoa c骳 r錳.",0)
		return
	end
	ConsumeEquiproomItem(1,tbjuhua.g,tbjuhua.d,tbjuhua.p,-1)
	local nexp = 0
	if GetSex() == 0 then
		nexp = tbjuhua.nmanexp
	else
		nexp = tbjuhua.nmaleexp
	end
	AddOwnExp(nexp)
	Msg2Player(format("Ch骳 m鮪g, b筺 nh薾 頲 <color=yellow>%d<color> kinh nghi謒",nexp))
	self:addTaskByte(self.ntask,2,1)
end


function tbclassname:check_level()		--判断等级
	if GetLevel() < tbclassname.LIMIT_LEVEL then
		return 0
	end 
	return 1
end

function tbclassname:check_pay()		--判断充值用户
	if GetExtPoint(0) <= 0 then
		return 0
	end 
	return 1
end

--任务变量字节获得
function tbclassname:getTaskByte(The_Task_ID,theByte)
	return GetByte(GetTask(The_Task_ID),theByte);
end

--任务变量字节增加
function tbclassname:addTaskByte(The_Task_ID,theByte,Inc_Num)
	SetTask(The_Task_ID,SetByte(GetTask(The_Task_ID),theByte,GetByte(GetTask(The_Task_ID),theByte)+Inc_Num));
end