IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t�i nh�p SETTING ch�n v�n ch� th� kho 

function main() 
if GetTask(3003) == 10 then
return 1
end
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com Msg2Player("N�y ch�c n�ng sau n�y m� ra . �a t� �ng h� !") 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com return 1 
-- script viet hoa By http://tranhba.com  if (GetNpcExpRate() <= 100) then 
if GetLevel() >= 180 then
AddSkillState(440, 2, 1, 64800); 
else
AddSkillState(440, 2, 1, 64800, 1); 
end

-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  Say("Th�t xin l�i , t�m th�i kh�ng th� s� d�ng ti�n th�o l� ", 0) 
-- script viet hoa By http://tranhba.com  return 1 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  return 0 
end
