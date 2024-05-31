Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
-----------------------------------------------------
--------------------------------------------------------

function main()
dofile("script/global/g7vn/item/duatopevent.lua")
if CalcFreeItemCellCount() < 5 then
		return Talk(1,"","H·y S¾p XÕp L¹i Hµnh Trang")
	end
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if nDate ~= GetTask(3019) then
		SetTask(3019,nDate)
		SetTask(3020,0)
	end
	if GetTask(3020)>0 and nDate==GetTask(3019) then
		Say("Mçi ngµy chØ sö dông ®­îc 1 r­¬ng")
		return 1
	end
	AddOwnExp(30000000)
	SetTask(3020,GetTask(3020)+1)
	local nDate2 = tonumber(GetLocalDate("%Y%m%d"));
	SetTask(3019,nDate2)
end





