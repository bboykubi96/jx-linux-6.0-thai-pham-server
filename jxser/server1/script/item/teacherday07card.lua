Include("\\script\\event\\teacher_day_200711\\head.lua");
Include("\\script\\event\\teacher_day_200711\\card.lua");
TeacherDay200711_IntervalTime = 60*10;-- script viet hoa By http://tranhba.com  h�t s�c chu�ng / ��ng h� 

function main(nItemIndex) 
	if (GetTask(TSK_TeacherDay200711_CardUseTime) + TeacherDay200711_IntervalTime > GetCurServerTime()) then
Say("M�i l�n s� d�ng ch�c t�p c�n ch� 10 sao ch�p m�i c� th� ti�p t�c s� d�ng .",0) 
return 1; 
end 
local _, _, nParti = GetItemProp(nItemIndex); 
TeacherDay200711_card_main(nParti); 
return 1 
end
