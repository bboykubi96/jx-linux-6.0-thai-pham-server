-- script viet hoa By http://tranhba.com  ��c hi�u ti�n th�o l� 
-- script viet hoa By http://tranhba.com 8 gi� kinh nghi�m g�p ��i 
IncludeLib("SETTING"); -- script viet hoa By http://tranhba.com  t�i nh�p SETTING ch�n v�n ch� th� kho 

function main() 
-- script viet hoa By http://tranhba.com  if (GetNpcExpRate() <= 100) then 
AddSkillState(451, 20, 1, 1080 * 60 * 8); 
-- script viet hoa By http://tranhba.com  else 
-- script viet hoa By http://tranhba.com  Say("Th�t xin l�i , tr��c m�t t�m th�i kh�ng c�ch n�o s� d�ng ��c hi�u ti�n th�o l� . ", 0) 
-- script viet hoa By http://tranhba.com  return 1; 
-- script viet hoa By http://tranhba.com  end; 
-- script viet hoa By http://tranhba.com  return 0; 
end;
