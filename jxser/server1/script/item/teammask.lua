function main(nItem) 
Say("<#> ��i ng� m�t n� c� th� �em ��i ng� to�n th� th�nh vi�n bi�n th�nh c�ng b� d�ng 2 canh gi� , mu�n s� d�ng sao ? ", 2, " �/d� , ch�ng ta mu�n th�ng nh�t trang ph�c /#yes("..nItem..")","Tr��c kh�ng s� d�ng /no"); 
return 1 
end 

function yes(nItem) 
if(GetTeamSize() <= 0) then 
Msg2Player("Ng��i kh�ng c� � ��y trong ��i ng� , kh�ng c�ch n�o s� d�ng ��o n�y c� "); 
return 1 
end 
local teamid = GetTeam(); 
local name = GetName() 
local nfeature = GetItemParam(nItem, 1); 
if RemoveItemByIndex(nItem) ~= 1 then 
return 
end 
ChangeTeamFeature(teamid, nfeature, 129600); 
Msg2Team(name.." s� d�ng ��i ng� m�t n� , ��i vi�n bi�n th�nh c�ng b� d�ng , k�o d�i 2 gi� "); 
end 

function GetDesc(nItem) 
local nNpcSettingIdx = GetItemParam(nItem, 1) 
local nAction = random(0, 13) 
local szSpr = GetMaskActionSpr(nNpcSettingIdx, nAction) 
if (not szSpr)then 
return "" 
end 
return "<spr="..szSpr..">" 
end 

function no() 
end