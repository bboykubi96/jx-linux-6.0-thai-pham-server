IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
--------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "<color=yellow>N� Hi�p<color>";
	else
		return "<color=yellow>��i Hi�p<color>";
	end
end
--------------------------------------------------------------------------------------------
HUYETLINHDON			 = 5983
TSK_StartNhiemVu_TaskState	 = 5982;
--------------------------------------------------------------
function main()
	if GetTask(TSK_StartNhiemVu_TaskState) >= 1 then
		if GetLevel() >= 50 then
			SetTask(HUYETLINHDON,1) Msg2Player("Ch�c M�ng "..myplayersex().." �� Nh�n ���c X2 Ph�n Th��ng Nhi�m V� B�c ��u...!")
		else
			Say("<color=green>"..myplayersex().." Ch�a �� C�p S� D�ng H�p Qu� Vui L�ng Quay L�i Sau...!<color>") return 1
		end
	else
		Talk(1,"","<color=red>"..myplayersex().." Ch�a Ti�p Nh�n Nhi�m V� C�a B�c ��u L�o Nh�n Kh�ng Th� S� D�ng") return 1
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
