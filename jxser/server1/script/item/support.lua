Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\mana_head.lua")
function main()
local szTitle = "T�nh n�ng c�ng �i�m c�a V� l�m tinh hoa"
local tbOpt =	{
					
						}
tinsert(tbOpt, 1, {"Tho�t",no})
tinsert(tbOpt, 1, {"T�ng n�i c�ng",AddEnergyPoint})
tinsert(tbOpt, 1, {"Xem �i�m n�i c�ng nh�n v�t",ShowEnergyPoint})
-- tinsert(tbOpt, 1, {"Xem �i�m ti�m n�ng b� tam thu gi�",ShowBanPoint})
-- tinsert(tbOpt, 1, {"Xem �i�m ti�m n�ng b� tam thu gi�",ShowBanPoint})
CreateNewSayEx(szTitle, tbOpt)
-- tinsert(tbOpt, 1, {"Xem th�ng tin nh�n v�t",AddEnergyPoint})
return 1
end
function AddEnergyPoint()
local nMax =  GetProp()
if nMax > 100 then nMax = 100 end
g_AskClientNumberEx(1,nMax, format("Nh�p s� (1-%d)", nMax), {cEnergy.GetNumberFromClient,{cEnergy} })
end
cEnergy = {}
function cEnergy:GetNumberFromClient(nNumber)
if nNumber > GetProp() then
return 
end
AddProp(-nNumber)
local nPoint = GetTask(3021)+nNumber
SetTask(3021,nPoint)
UpdateManaPoint(nPoint)
end
function ShowEnergyPoint()
local nPoint = GetTask(3021)
if nPoint == 0 then
Say("Ng��i kh�ng c� t�ng �i�m n�i c�ng.",0)
end
Say(format("Ng��i �� t�ng %d �i�m v�o n�i c�ng",nPoint),0)
end
function ShowBanPoint()
local nBlock = GetTask(3022)
if nBlock == 0 then
return Say("Ng��i kh�ng c� �i�m ti�m n�ng b� thu h�i. ",0)
end
Say(format("Ng��i �ang b� tam gi� %d ti�m n�ng. Vui l�ng li�n h� GM �� bi�t th�m chi ti�t",nBlock ),0)
-- end
end