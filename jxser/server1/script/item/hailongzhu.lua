Include("\\script\\event\\jiefang_jieri\\200904\\taskctrl.lua")
function main()
	local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(4140) == nDate) then -- neu khac se
		Say("M�i ng�y ch� c� th� s� d�ng 1 h�i long ch�u xin h�y ch� ng�y mai r�i h� ti�p t�c", 0);
		return 1
end
	local ndate = tonumber(GetLocalDate("%y%m%d"));
	if (ndate ~= GetTask(jf0904_TSK_hailongzhu_ndate)) then
		SetTask(jf0904_TSK_hailongzhu_ndate, ndate);
		SetTask(jf0904_TSK_hailongzhu_UseTime, 0);
		if (ndate~= GetTask(jf0904_TSK_denggao_ndate)) then
			SetTask(jf0904_TSK_denggao_ndate, ndate);
			SetTask(jf0904_TSK_shuizei_FulfilTaskTime, 1);
		end
	end
	if (GetTask(jf0904_TSK_hailongzhu_UseTime) >= 1) then
		Say("M�i ng�y ch� c� th� s� d�ng 1 H�i Long Ch�u", 0);
		return 1
	end
	local nDate = tonumber(GetLocalDate("%d"))		
if ( GetTask(4140) ~= nDate) then -- neu khac se
SetTask(4140, nDate);
SetTask(4139, 0);
	SetTask(jf0904_TSK_hailongzhu_UseTime, GetTask(jf0904_TSK_hailongzhu_UseTime)+1);
	SetTask(jf0904_TSK_shuizei_FulfilTaskTime, GetTask(jf0904_TSK_shuizei_FulfilTaskTime)+1);
	Say("Thu ���c c� h�i th�m m�t l�n tham gia Ti�u di�t th�y t�c!.Ch� � h�i long ch�u ch� c� t�c d�ng khi qu� nh�n s� �� l�m nhi�m v� th�y t�c.Kh�ng ���c s� d�ng khi ch�a nh�n nhi�m v� th�y t�c s� m�t t�c d�ng", 0);
end
end
