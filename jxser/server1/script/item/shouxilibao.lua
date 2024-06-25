-- script viet hoa By http://tranhba.com  vâng kiÕm ba chu niªn ho¹t ®éng 
-- script viet hoa By http://tranhba.com  thä hi lÔ tói 
-- script viet hoa By http://tranhba.com  lam tr¸ch r¬i xuèng , bªn ph¶i kiÖn sö dông ngÉu nhiªn ®¹t ®­îc vËt phÈm 

Include("\\script\\event\\jxanniversary3\\head.lua");

function main(nItemIndex) 
local ntotalrate = 0; 
local naddrate = 0; 
local nrand = 0; 
local nItemN = 0; 
for i = 1, getn(tb_JXAN_SHOUXIGIFT) do 
		naddrate = naddrate + tb_JXAN_SHOUXIGIFT[i][3];
end; 

nrand = random(naddrate); 
naddrate = 0; 
for i = 1, getn(tb_JXAN_SHOUXIGIFT) do 
		naddrate = naddrate + tb_JXAN_SHOUXIGIFT[i][3];
if (naddrate >= nrand) then 
nItemN = i; 
break 
end; 
end; 

local nG, nD, nP, nL = tb_JXAN_SHOUXIGIFT[nItemN][1][1], tb_JXAN_SHOUXIGIFT[nItemN][1][2], tb_JXAN_SHOUXIGIFT[nItemN][1][3], tb_JXAN_SHOUXIGIFT[nItemN][1][4]; 
if (nD == 2) then 
shouxi_CreateBook() 
else 
AddItem(nG, nD, nP, nL, 1, 1); 
Msg2Player("Ngµi lÊy ®­îc <color=green>"..tb_JXAN_SHOUXIGIFT[nItemN][2].."<color> mét "); 
WriteLog(date().."\t[ vâng kiÕm ba chu niªn ]\tName:"..GetName().."\tAccount:"..GetAccount().."\t tõ thä hi lÔ trong tói x¸ch ®¹t ®­îc "..tb_JXAN_SHOUXIGIFT[nItemN][2].." mét ") 
end; 
end;
