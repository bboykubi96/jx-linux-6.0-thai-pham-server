if MODEL_GAMESERVER == 1 then 
IncludeLib("TONG") 
	Include("\\script\\tong\\tong_header.lua")
end 

function main(nItem) 
local _Name, nTongID = GetTongName() 
if(nTongID == 0) then 
Msg2Player("Ng��i kh�ng c� � ��y bang h�i trung , kh�ng c�ch n�o s� d�ng ��o n�y c� "); 
return 1 
end 
local figure = TONGM_GetFigure(nTongID, GetName()) 
if (figure == TONG_MASTER or figure == TONG_ELDER)then 
Say("<#> bang h�i m�t n� c� th� �em bang h�i to�n th� � tuy�n th�nh vi�n bi�n th�nh c�ng b� d�ng 3 canh gi� , mu�n s� d�ng sao ? ", 2, " �/d� , ch�ng ta mu�n th�ng nh�t trang ph�c /#yes("..nItem..")","Tr��c kh�ng s� d�ng /no"); 
return 1 
else 
Msg2Player("Ng��i v�a kh�ng ph�i l� bang ch� l�i kh�ng ph�i l� tr��ng l�o , kh�ng c�ch n�o s� d�ng ��o n�y c� "); 
return 1 
end 
end 

function yes(nItem) 
local a,b = GetTongName(); 
if(b == 0) then 
Msg2Player("Ng��i kh�ng c� � ��y bang h�i trung , kh�ng c�ch n�o s� d�ng ��o n�y c� "); 
return 1 
end 
local figure = TONGM_GetFigure(b, GetName()) 
if (figure ~= TONG_MASTER and figure ~= TONG_ELDER)then 
Msg2Player("Ng��i v�a kh�ng ph�i l� bang ch� l�i kh�ng ph�i l� tr��ng l�o , kh�ng c�ch n�o s� d�ng ��o n�y c� "); 
return 1 
end 
local name = GetName(); 
local nfeature = GetItemParam(nItem, 1); 
if RemoveItemByIndex(nItem) ~= 1 then 
return 
end 
TONG_ChangeAllMemberFeature(b,nfeature,194400) 
Msg2Tong(b, name.." s� d�ng bang h�i m�t n� , � tuy�n bang h�i th�nh vi�n bi�n th�nh c�ng b� d�ng , k�o d�i 3 gi� "); 
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