-- script viet hoa By http://tranhba.com  by yfeng 

if not BAN_HEAD then 
	Include("\\script\\global\\ban.lua")
end 

function main(itemIdx) 
local mapid,_,_ = GetWorldPos() 
if(checkSJMaps(mapid)) then 
Msg2Player("T�ng kim chi�n tr��ng b�n trong kh�ng th� d�ng ��i b� ho�n . ") 
return 1 
end 
local _,_,detail = GetItemProp(itemIdx) 
if(detail == 218) then -- script viet hoa By http://tranhba.com  c�ng t�c ho�n 
AddSkillState(511,15,1,18*180) 
return 0 
end 
if(detail == 219) then -- script viet hoa By http://tranhba.com  ch�y t�c ho�n 
AddSkillState(512,15,1,18*180) 
return 0 
end 
if(detail == 220) then -- script viet hoa By http://tranhba.com  ph� ph�ng ho�n 
AddSkillState(513,20,1,18*180) 
return 0 
end 
if(detail == 221) then -- script viet hoa By http://tranhba.com  ��c ph�ng ho�n 
AddSkillState(514,20,1,18*180) 
return 0 
end 
if(detail == 222) then -- script viet hoa By http://tranhba.com  b�ng ph�ng ho�n 
AddSkillState(515,20,1,18*180) 
return 0 
end 
if(detail == 223) then -- script viet hoa By http://tranhba.com  l�a ph�ng ho�n 
AddSkillState(516,20,1,18*180) 
return 0 
end 
if(detail == 224) then -- script viet hoa By http://tranhba.com  l�i ph�ng ho�n 
AddSkillState(517,20,1,18*180) 
return 0 
end 
if(detail == 225) then -- script viet hoa By http://tranhba.com  gi�m th��ng ho�n 
AddSkillState(518,20,1,18*180) 
return 0 
end 
if(detail == 226) then -- script viet hoa By http://tranhba.com  gi�m ng�t ho�n 
AddSkillState(519,20,1,18*180) 
return 0 
end 
if(detail == 227) then -- script viet hoa By http://tranhba.com  gi�m ��c ho�n 
AddSkillState(520,20,1,18*180) 
return 0 
end 
if(detail == 228) then -- script viet hoa By http://tranhba.com  gi�m b�ng ho�n 
AddSkillState(521,20,1,18*180) 
return 0 
end 
if(detail == 229) then -- script viet hoa By http://tranhba.com  ph� c�ng ho�n 
AddSkillState(522,10,1,18*180) 
return 0 
end 
if(detail == 230) then -- script viet hoa By http://tranhba.com  ��c c�ng ho�n 
AddSkillState(523,10,1,18*180) 
return 0 
end 
if(detail == 231) then -- script viet hoa By http://tranhba.com  b�ng c�ng ho�n 
AddSkillState(524,10,1,18*180) 
return 0 
end 
if(detail == 232) then -- script viet hoa By http://tranhba.com  l�a c�ng ho�n 
AddSkillState(525,10,1,18*180) 
return 0 
end 
if(detail == 233) then -- script viet hoa By http://tranhba.com  l�i c�ng ho�n 
AddSkillState(526,10,1,18*180) 
return 0 
end 
if(detail == 234) then -- script viet hoa By http://tranhba.com  tr��ng m�nh ho�n 
AddSkillState(527,10,1,18*180) 
return 0 
end 
if(detail == 235) then -- script viet hoa By http://tranhba.com  tr��ng b�n trong ho�n 
AddSkillState(528,10,1,18*180) 
return 0 
end 

end 

function GetDesc(itemIdx) 
local _,_,detail = GetItemProp(itemIdx) 
if(detail == 218) then -- script viet hoa By http://tranhba.com  c�ng t�c ho�n 
return "<color=blue>3 ph�t b�n trong #\n ngo�i c�ng h� v� c�ng t�c �� c�ng k�ch # gia t�ng 30%\n n�i c�ng h� v� c�ng t�c �� c�ng k�ch # gia t�ng 30%<color>" 
end 
if(detail == 219) then -- script viet hoa By http://tranhba.com  ch�y t�c ho�n 
return "<color=blue>3 ph�t b�n trong #\n t�c �� di ��ng # gia t�ng 30%<color>" 
end 
if(detail == 220) then -- script viet hoa By http://tranhba.com  ph� ph�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n ph� ph�ng # gia t�ng 40%<color>" 
end 
if(detail == 221) then -- script viet hoa By http://tranhba.com  ��c ph�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n ��c ph�ng # gia t�ng 40%<color>" 
end 
if(detail == 222) then -- script viet hoa By http://tranhba.com  b�ng ph�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n b�ng ph�ng # gia t�ng 40%<color>" 
end 
if(detail == 223) then -- script viet hoa By http://tranhba.com  l�a ph�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n l�a ph�ng # gia t�ng 40%<color>" 
end 
if(detail == 224) then -- script viet hoa By http://tranhba.com  l�i ph�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n l�i ph�ng # gia t�ng 40%<color>" 
end 
if(detail == 225) then -- script viet hoa By http://tranhba.com  gi�m th��ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n b� th��ng ��ng t�c th�i gian # gi�m b�t 40%<color>" 
end 
if(detail == 226) then -- script viet hoa By http://tranhba.com  gi�m ng�t ho�n 
return "<color=blue>3 ph�t b�n trong #\n h�n m� th�i gian # gi�m b�t 40%<color>" 
end 
if(detail == 227) then -- script viet hoa By http://tranhba.com  gi�m ��c ho�n 
return "<color=blue>3 ph�t b�n trong #\n tr�ng ��c th�i gian # gi�m b�t 40%<color>" 
end 
if(detail == 228) then -- script viet hoa By http://tranhba.com  gi�m b�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n ch�m l�i th�i gian # gi�m b�t 40%<color>" 
end 
if(detail == 229) then -- script viet hoa By http://tranhba.com  ph� c�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n ngo�i c�ng h� ph� c�ng t�n th��ng # gia t�ng 200%\n n�i c�ng h� ph� c�ng t�n th��ng # gia t�ng 100 �i�m <color>" 
end 
if(detail == 230) then -- script viet hoa By http://tranhba.com  ��c c�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n ngo�i c�ng h� ��c c�ng t�n th��ng # gia t�ng 10 �i�m / l�n \n n�i c�ng h� ��c c�ng t�n th��ng # gia t�ng 10 �i�m / l�n <color>" 
end 
if(detail == 231) then -- script viet hoa By http://tranhba.com  b�ng c�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n ngo�i c�ng h� b�ng c�ng t�n th��ng # gia t�ng 100 �i�m \n n�i c�ng h� b�ng c�ng t�n th��ng # gia t�ng 100 �i�m <color>" 
end 
if(detail == 232) then -- script viet hoa By http://tranhba.com  l�a c�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n ngo�i c�ng h� l�a c�ng t�n th��ng # gia t�ng 100 �i�m \n n�i c�ng h� l�a c�ng t�n th��ng # gia t�ng 100 �i�m <color>" 
end 
if(detail == 233) then -- script viet hoa By http://tranhba.com  l�i c�ng ho�n 
return "<color=blue>3 ph�t b�n trong #\n ngo�i c�ng h� l�i c�ng t�n th��ng # gia t�ng 100 �i�m \n n�i c�ng h� l�i c�ng t�n th��ng # gia t�ng 100 �i�m <color>" 
end 
if(detail == 234) then -- script viet hoa By http://tranhba.com  tr��ng m�nh ho�n 
return "<color=blue>3 ph�t b�n trong #\n sinh m�ng th��ng h�n # gia t�ng 1000 �i�m <color>" 
end 
if(detail == 235) then -- script viet hoa By http://tranhba.com  tr��ng b�n trong ho�n 
return "<color=blue>3 ph�t b�n trong #\n n�i l�c th��ng h�n # gia t�ng 1000 �i�m <color>" 
end 

end 
