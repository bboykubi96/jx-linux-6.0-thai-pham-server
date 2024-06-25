Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\mana_head.lua")
function main()
local szTitle = "Tİnh n¨ng céng ®iÓm cña Vâ l©m tinh hoa"
local tbOpt =	{
					
						}
tinsert(tbOpt, 1, {"Tho¸t",no})
tinsert(tbOpt, 1, {"T¨ng néi c«ng",AddEnergyPoint})
tinsert(tbOpt, 1, {"Xem ®iÓm néi c«ng nh©n vËt",ShowEnergyPoint})
-- tinsert(tbOpt, 1, {"Xem ®iÓm tiÒm n¨ng bŞ tam thu gi÷",ShowBanPoint})
-- tinsert(tbOpt, 1, {"Xem ®iÓm tiÒm n¨ng bŞ tam thu gi÷",ShowBanPoint})
CreateNewSayEx(szTitle, tbOpt)
-- tinsert(tbOpt, 1, {"Xem th«ng tin nh©n vËt",AddEnergyPoint})
return 1
end
function AddEnergyPoint()
local nMax =  GetProp()
if nMax > 100 then nMax = 100 end
g_AskClientNumberEx(1,nMax, format("NhËp sè (1-%d)", nMax), {cEnergy.GetNumberFromClient,{cEnergy} })
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
Say("Ng­¬i kh«ng cã t¨ng ®iÓm néi c«ng.",0)
end
Say(format("Ng­¬i ®· t¨ng %d ®iÓm vµo néi c«ng",nPoint),0)
end
function ShowBanPoint()
local nBlock = GetTask(3022)
if nBlock == 0 then
return Say("Ng­¬i kh«ng cã ®iÓm tiÒm n¨ng bŞ thu håi. ",0)
end
Say(format("Ng­¬i ®ang bŞ tam gi÷ %d tiÒm n¨ng. Vui lßng liªn hÖ GM ®Ó biÕt thªm chi tiÕt",nBlock ),0)
-- end
end