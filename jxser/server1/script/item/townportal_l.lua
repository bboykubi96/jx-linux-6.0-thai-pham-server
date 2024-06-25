Include("\\script\\battles\\battlehead.lua")

TOWNPORTAL_MAXCOUNT = 1000 

function main(nItemIdx)
if GetTask(5859)> 0  then
		Say("VËn Tiªu §i Råi H·y SD Th©n Hµnh Phï")
		return 1
	end;
          if GetTask(3920)> 0  then
		Say("Ng­¬i ®ang vËn chuyÓn Bao L­¬ng . Mau di chuyÓn ®Õn §iÓm tËp kÕt ®i.")
		return 1
	end;
if (GetFightState() == 0 or IsDisabledUseTownP() == 1 or GetTaskTemp(200) == 1 ) or ( SubWorldIdx2ID( SubWorld ) >= 387 and SubWorldIdx2ID( SubWorld ) <= 395)then 
Msg2Player("Ng­¬i tr­íc m¾t kh«ng thÓ sö dông trë vÒ thµnh phï #"); 
return 1 
end 

local W,X,Y = GetWorldPos(); 
local nMapId = W; 
for i = 1, getn(tbBATTLEMAP) do 
if ( nMapId == tbBATTLEMAP[i] ) then 
Msg2Player(" ë chç nµy ng­¬i kh«ng thÓ sö dông ®¹o nµy cô "); 
return 1; 
end 
end 
	local n_param = tonumber(GetItemParam(nItemIdx,1)) + 1
local itemname = "<color=yellow>"..GetItemName(nItemIdx).."<color>" 
SetSpecItemParam(nItemIdx,1,n_param) 
SyncItem(nItemIdx) 
if (n_param >= TOWNPORTAL_MAXCOUNT) then 
RemoveItemByIndex(nItemIdx) 
Msg2Player("<#> ngµi ®Ých "..itemname.."<#> ®· sö dông "..TOWNPORTAL_MAXCOUNT.."<#> lÇn , kh«ng thÓ dïng l¹i . ") 
else 
Msg2Player("<#> ngµi ®Ých "..itemname.."<#> cßn cã thÓ sö dông "..(TOWNPORTAL_MAXCOUNT - n_param).."<#> lÇn ") 
end 
UseTownPortal(); 
return 1 
end; 

function GetDesc( nItemIdx ) 
local szDesc = "" 
local n_param = tonumber(GetItemParam( nItemIdx, 1 )) 
szDesc = szDesc..format("\n cßn cã thÓ sö dông <color=yellow>%d<color> lÇn ", (TOWNPORTAL_MAXCOUNT - n_param)); 
return szDesc; 
end