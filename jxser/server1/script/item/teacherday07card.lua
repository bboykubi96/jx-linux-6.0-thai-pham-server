Include("\\script\\event\\teacher_day_200711\\head.lua");
Include("\\script\\event\\teacher_day_200711\\card.lua");
TeacherDay200711_IntervalTime = 60*10;-- script viet hoa By http://tranhba.com  hÕt søc chu«ng / ®ång hå 

function main(nItemIndex) 
	if (GetTask(TSK_TeacherDay200711_CardUseTime) + TeacherDay200711_IntervalTime > GetCurServerTime()) then
Say("Mçi lÇn sö dông chóc t¹p cÇn chê 10 sao chĞp míi cã thÓ tiÕp tôc sö dông .",0) 
return 1; 
end 
local _, _, nParti = GetItemProp(nItemIndex); 
TeacherDay200711_card_main(nParti); 
return 1 
end
