
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	--dofile("script/event20thang11/eventkvan.lua")
	--do Say("��o c� �� h�t h�n s� d�ng...") return 0 end
	TSK_UseExpLimit1 = 3910
	local nExpLimit = GetTask(TSK_UseExpLimit1); 
	nExpLimit = nExpLimit +1
	if ( nExpLimit > 1000) then
		Say("S� d�ng event �� ��t gi�i h�n �i�m kinh nghi�m, kh�ng th� s� d�ng n�a.",0)
		return 1;
	end
	if (GetLevel() < 50) then
		Say("Th�t ��ng ti�c, ch� c� ng��i ch�i <color=yellow>c�p tr�n 50<color> m�i c� th� s� d�ng .",0)
		return 1;
	end
	local tbdatmoc = {
		[200] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 1000}, },
		[300] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 1000}, },
		[500] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 1000}, },
		[1000] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 1000}},
		[1500] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 1000},},
		[2000] = {{szName = "�i�m kinh nghi�m kh�ng c�ng d�n", nExp = 1000}, },
	}
	if tbdatmoc[nExpLimit] then
		local tbTempAward = tbdatmoc[nExpLimit]
		tbAwardTemplet:Give(tbTempAward, 1, {"Event_20T11", format("SuDung%dLanItemTienVan", nExpLimit)})
	end
	AddOwnExp(700000);
	SetTask(TSK_UseExpLimit1,nExpLimit);
	Msg2Player("�� s� d�ng l�n th�: <color=yellow>"..nExpLimit .."<color>")
	return 0;
end

