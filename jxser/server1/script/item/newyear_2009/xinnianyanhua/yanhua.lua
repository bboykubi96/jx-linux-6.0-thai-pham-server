Include("\\script\\item\\newyear_2009\\head.lua");

function main() 
newyear0901_resettask(); 

local n_date = tonumber(GetLocalDate("%Y%m%d")); 
if (n_date >= 20090216) then 
Say("N�n v�t ph�m �� qua k� .", 0); 
return 0; 
end 

	if (GetTask(newyear0901_TSK_GetExp_Yanhua) + 200 > 20000) then
Say("��i hi�p �� ��t t�i cao nh�t kinh nghi�m , v� v�y , kh�ng th� s� d�ng n�a ngh�nh xu�n ph�o b�ng li�u .", 0); 
return 1; 
end 
	SetTask(newyear0901_TSK_GetExp_Yanhua, GetTask(newyear0901_TSK_GetExp_Yanhua) + 200);
AddOwnExp(2000000); 
CastSkill(932, 1); 
end