-- script viet hoa By http://tranhba.com  v�ng ki�m ba chu ni�n ho�t ��ng 
-- script viet hoa By http://tranhba.com  th� hi l� t�i 
-- script viet hoa By http://tranhba.com  lam tr�ch r�i xu�ng , b�n ph�i ki�n s� d�ng ng�u nhi�n ��t ���c v�t ph�m 

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
Msg2Player("Ng�i l�y ���c <color=green>"..tb_JXAN_SHOUXIGIFT[nItemN][2].."<color> m�t "); 
WriteLog(date().."\t[ v�ng ki�m ba chu ni�n ]\tName:"..GetName().."\tAccount:"..GetAccount().."\t t� th� hi l� trong t�i x�ch ��t ���c "..tb_JXAN_SHOUXIGIFT[nItemN][2].." m�t ") 
end; 
end;
