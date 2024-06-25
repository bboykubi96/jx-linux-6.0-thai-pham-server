IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t¸i nhËp SETTING ch©n vèn chØ thÞ kho 

function main() 
if GetTask(3003) == 10 then
return 1
end
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com Msg2Player("Nµy chøc n¨ng sau nµy më ra . ®a t¹ ñng hé !") 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com return 1 
-- script viet hoa By http://tranhba.com  if (GetNpcExpRate() <= 100) then 
if GetLevel() >= 180 then
AddSkillState(440, 2, 1, 64800); 
else
AddSkillState(440, 2, 1, 64800, 1); 
end

-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  Say("ThËt xin lçi , t¹m thêi kh«ng thÓ sö dông tiªn th¶o lé ", 0) 
-- script viet hoa By http://tranhba.com  return 1 
-- script viet hoa By http://tranhba.com  end 
-- script viet hoa By http://tranhba.com  return 0 
end
