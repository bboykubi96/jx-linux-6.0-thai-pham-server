Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

function main(sel)
	if (GetLastFactionNumber() == 11 or GetTask(13) >= 30*256) then 
		Say("D� ��i Ch�y: �� thi ��u trong ��u tr��ng, v� kh� l� m�t th� kh�ng th� thi�u.", 2,"Giao d�ch/yes", "Ta c� chuy�n kh�c/no")
	else
		Say("D� ��i Ch�y: Ch��ng M�n Ta C� L�nh C�c �� T� B�n M�n Kh�ng ���c Cung C�p V� Kh� Cho Ng��i Ngo�i!")
	end
end;

function yes()
Sale(37)			
end;


function no()
end;
