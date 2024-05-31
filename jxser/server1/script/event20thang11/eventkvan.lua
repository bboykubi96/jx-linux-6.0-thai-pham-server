
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	--dofile("script/event20thang11/eventkvan.lua")
	--do Say("§¹o cô ®· hÕt h¹n sö dông...") return 0 end
	TSK_UseExpLimit1 = 3910
	local nExpLimit = GetTask(TSK_UseExpLimit1); 
	nExpLimit = nExpLimit +1
	if ( nExpLimit > 1000) then
		Say("Sö dông event ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
	if (GetLevel() < 50) then
		Say("ThËt ®¸ng tiÕc, chØ cã ng­êi ch¬i <color=yellow>cÊp trªn 50<color> míi cã thÓ sö dông .",0)
		return 1;
	end
	local tbdatmoc = {
		[200] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 1000}, },
		[300] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 1000}, },
		[500] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 1000}, },
		[1000] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 1000}},
		[1500] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 1000},},
		[2000] = {{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 1000}, },
	}
	if tbdatmoc[nExpLimit] then
		local tbTempAward = tbdatmoc[nExpLimit]
		tbAwardTemplet:Give(tbTempAward, 1, {"Event_20T11", format("SuDung%dLanItemTienVan", nExpLimit)})
	end
	AddOwnExp(700000);
	SetTask(TSK_UseExpLimit1,nExpLimit);
	Msg2Player("§· sö dông lÇn thø: <color=yellow>"..nExpLimit .."<color>")
	return 0;
end

