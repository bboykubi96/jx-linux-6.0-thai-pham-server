
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
function main()
dofile("script/global/g7vn/item/huyetchienchieuthu.lua")

local huyetchien = CalcEquiproomItemCount(6,1,1234,-1)
if huyetchien<1 then
	Say("Hµnh trang cÇn cã 1 HuyÕt ChiÕn LÔ Bao.")
	return
else
SetTask(3002,GetTask(3002)+10000)
Msg2Player("§¹i HiÖp nhËn ®­îc 10.000 ®iÓm HuyÕt ChiÕn.")
end

end

