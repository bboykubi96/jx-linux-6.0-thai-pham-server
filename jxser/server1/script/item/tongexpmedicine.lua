IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t�i nh�p SETTING ch�n v�n ch� th� kho 

function main() 
-- script viet hoa By http://tranhba.com Msg2Player("N�y ch�c n�ng sau n�y m� ra . �a t� �ng h� !") 
-- script viet hoa By http://tranhba.com return 1 
if (GetNpcExpRate() <= 100) then 
AddSkillState(440, 1, 1, 32400); 
else 
Say("Tr��c m�t l� h� th�ng g�p ��i kinh nghi�m th�i gian , t�m th�i kh�ng c�ch n�o s� d�ng b� ch� tu th�n ph� . ", 0) 
return 1 
end 
return 0 
end
