Include([[\script\item\vnchristmas2006\xmas_head.lua]]) 
function main() 
local nDate = tonumber(GetLocalDate("%Y%m%d%H")); 
if (nDate >= 2007013124) then 
Say("N�n b�nh �� qua k� , kh�ng th� s� d�ng !", 0); 
return 0; 
end; 
if (isAddExp_Xmasgift(500000) == 1) then 
Msg2Player("Ng�i �� �n r�i m�t b�nh ng�t "); 
else 
Msg2Player("T�ng kinh nghi�m kh�ng th� v��t qua 3 �c , ng�i kh�ng th� ti�p t�c s� d�ng ."); 
return 1; 
end; 
end; 

function GetDesc(nItemIdx) 
local szDesc = "\n s� d�ng th�i h�n : <color=blue>2007 n�m 1 th�ng 31 ng�y 0 l�c <color>" 
return szDesc; 
end