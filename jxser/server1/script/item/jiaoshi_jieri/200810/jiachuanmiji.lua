-- script viet hoa By http://tranhba.com  gia truyÒn bİ tŞch 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\jiaoshi_jieri\\200810\\lib\\lib.lua")
Include("\\script\\event\\jiaoshi_jieri\\200810\\taskctrl.lua")
Include("\\script\\lib\\pay.lua")
local tbAwardList = 
{ 
[1] = {nExp = 1000000}, 
[2] = 
{ 
{szName=" an bang b¨ng tinh gi©y chuyÒn ", nQuality=1, nRate=0.002, tbProp={0, 164}}, 
{szName=" an bang m¸u gµ th¹ch chiÕc nhÉn ", nQuality=1, nRate=0.005, tbProp={0, 167}}, 
{szName=" an bang hoa cóc th¹ch chiÕc nhÉn ", nQuality=1, nRate=0.005, tbProp={0, 165}}, 
{szName=" an bang ®iÒn hoµng th¹ch ngäc béi ", nQuality=1, nRate=0.01, tbProp={0, 166}}, 
{szName=" ®Şnh n­íc « ghÕ sa lon quan ", nQuality=1, nRate=0.005, tbProp={0, 160}}, 
{szName=" ®Şnh n­íc lôa máng xanh tr­êng sam ", nQuality=1, nRate=0.008, tbProp={0, 159}}, 
{szName=" ®Şnh n­íc ng©n tµm ®ai l­ng ", nQuality=1, nRate=0.2, tbProp={0, 163}}, 
{szName=" ®Şnh n­íc xİch quyªn mÒm ngoa ", nQuality=1, nRate=0.05, tbProp={0, 161}}, 
{szName=" ®Şnh n­íc tö ®»ng hé cæ tay ", nQuality=1, nRate=0.2, tbProp={0, 162}}, 
{szName=" nhu t×nh c©n qu¾c nghª th­êng ", nQuality=1, nRate=0.002, tbProp={0, 190}}, 
{szName=" nhu t×nh tuÖ t©m ngäc béi ", nQuality=1, nRate=0.01, tbProp={0, 193}}, 
{szName=" nhu t×nh ph­îng nghi chiÕc nhÉn ", nQuality=1, nRate=0.2, tbProp={0, 192}}, 
{szName=" nhu t×nh thôc n÷ gi©y chuyÒn ", nQuality=1, nRate=0.15, tbProp={0, 191}}, 
{szName=" hiÖp cèt t×nh nghÜa kÕt ", nQuality=1, nRate=0.01, tbProp={0, 189}}, 
{szName=" hiÖp cèt thiÕt huyÕt sam ", nQuality=1, nRate=0.1, tbProp={0, 186}}, 
{szName=" hiÖp cèt ®an t©m giíi ", nQuality=1, nRate=0.1, tbProp={0, 188}}, 
{szName=" hiÖp cèt ®a t×nh hoµn ", nQuality=1, nRate=0.5, tbProp={0, 187}}, 
{szName="3 cÊp huyÒn tinh qu¸ng th¹ch ", nRate=5, tbProp={6, 1, 147, 3, 0, 0}}, 
{szName="4 cÊp huyÒn tinh qu¸ng th¹ch ", nRate=3, tbProp={6, 1, 147, 4, 0, 0}}, 
{szName="5 cÊp huyÒn tinh qu¸ng th¹ch ", nRate=2, tbProp={6, 1, 147, 5, 0, 0}}, 
{szName=" vâ l©m bİ tŞch ", nRate=0.1, tbProp={6, 1, 26, 1, 0, 0}}, 
{szName=" TÈy Tñy Kinh ", nRate=0.1, tbProp={6, 1, 22, 1, 0, 0}}, 
} 
} 

function main(nItemIndex) 
jiaoshi0810_ResetTask() 
local nDate = tonumber(GetLocalDate("%Y%m%d")) 
if nDate >= GetItemParam(nItemIndex, 1) then 
Talk(1,"","Nªn vËt phÈm ®· qua kú "); 
return 0 
end 
if GetLevel() < 50 or IsCharged() == 0 then 
Talk(1, "","ChØ cã 50 cÊp trë lªn ®· sung trŞ gi¸ nhµ ch¬i míi cã thÓ sö dông nªn ®¹o cô .") 
return 1 
end 
local nCurExp = GetTask(jiaoshi0810_TSK_ExpLimit) 
if nCurExp >= jiaoshi0810_MaxExpLimit then 
Talk(1, "", format("Mçi nh©n vËt sö dông nªn vËt phÈm nhiÒu nhÊt chØ ®¹t ®­îc %s kinh nghiÖm .", jiaoshi0810_TransferDigit2CnNum(jiaoshi0810_MaxExpLimit))) 
return 1; 
end 
tbAwardTemplet:GiveAwardByList(%tbAwardList, "use "..GetItemName(nItemIndex)) 
	SetTask(jiaoshi0810_TSK_ExpLimit, nCurExp + %tbAwardList[1].nExp)
end
