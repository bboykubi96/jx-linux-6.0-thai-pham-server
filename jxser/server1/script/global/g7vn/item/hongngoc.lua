Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\titlefuncs.lua")

function main()
dofile("script/global/g7vn/item/hongngoc.lua")
if (GetPK() == 0) then 
Say("Ng�i tr��c m�t PK tr� gi� �� v� 0 li�u , kh�ng c�n s� d�ng n�a . ", 0); 
Msg2Player("Ng�i tr��c m�t PK tr� gi� �� v� 0 li�u , kh�ng c�n s� d�ng n�a . "); 
return 1; 
end; 
local diempk=GetPK()
SetPK(diempk-1);	
end
