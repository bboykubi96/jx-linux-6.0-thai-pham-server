
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n chi Vi�t Nam b�n m�t m�i t�ng nam nh�c tr�n -- script viet hoa By http://tranhba.com > h�c sa ��ng 

-- script viet hoa By http://tranhba.com  Edited by t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  2008/06/26 15:51 

-- script viet hoa By http://tranhba.com  nam nh�c tr�n to h�c sa ��ng trap �i�m ch�n v�n 
-- script viet hoa By http://tranhba.com  ====================================================== 


function main() 
if 1==1 then
Talk(1, "", "Kh�ng th� duy chuy�n l�n map n�y !!!");
		return
end
	if GetLevel()<80 then
		Talk(1, "", "C�p 80 m�i l�n ���c map n�y. !!!");
		return
	end
SetFightState(1); -- script viet hoa By http://tranhba.com  c��ng ch� v� chi�n ��u 
NewWorld(875, 1553, 3173); -- script viet hoa By http://tranhba.com  truy�n t�ng ��n h�c sa ��ng 
AddTermini(226) 
end; 
