IncludeLib("SETTING"); 
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\shengdan_jieri\\200811\\head.lua");

tb_redbox_item = 
{ 
{szName=" gi�ng sinh sao ", tbProp={6, 1, 1847, 1, 0, 0}, nRate = 100, nExpiredTime = 20090105}, 
}; 

function main() 
if (CalcFreeItemCellCount() < 1) then 
Msg2Player("��i hi�p ��ch trang b� ch�a �� ch� tr�ng !"); 
return 1; 
end 
tbAwardTemplet:GiveAwardByList(tb_redbox_item, "2008 gi�ng sinh ho�t ��ng - m�u �� h�p qu� "); 
end 

function getredbox() 
if (ST_GetOffliveState() == 0) then 
local ndate = tonumber(GetLocalDate("%Y%m%d")); 

if (ndate < 20090105) then 
if (CalcFreeItemCellCount() < 1) then 
Msg2Player("��i hi�p ��ch trang b� �� ��y ."); 
else 

local _tbItem = {szName=" m�u �� h�p qu� ", tbProp={6, 1, 1842, 1, 0, 0}, nExpiredTime = 20090105} 

tbAwardTemplet:GiveAwardByList(_tbItem, "shengdan0811 tuoguan"); 
end 
end 

end 
end