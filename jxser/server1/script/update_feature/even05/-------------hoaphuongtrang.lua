IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
---------------------------------------------
HOAPHUONGTRANG = 4963
------------------------------
tbAward = {
	[1] = {
		{nExp_tl = 7e7},
	},
	[2] = {
         {szName="manh nhan tinh sao",tbProp={4,1507,1,1,0,0},nCount=1,nRate=0.1},  
	 {szName="MËt TÞch Kü n¨ng 21",tbProp={6,1,49006,1,0,0},nCount=1,nRate=0.1},
	 {szName="manh nhan tinh sao",tbProp={6,1,49004,1,0,0},nCount=1,nRate=0.05},    
                        {szName="Tinh Ngäc",tbProp={6,1,4807,1,0,0},nCount=1,nRate=10},
			{szName="ruong nl",tbProp={6,1,4837,1,0,0},nCount=1,nRate=10},
			{szName="Hoµng Kim Thiªn Th¹ch",tbProp={6,1,50002,1,0,0},nCount=1,nRate=0.1},
			{szName="Trïng LuyÖn Ngäc",tbProp={6,1,5414,1,0,0},nCount=1,nRate=0.1},
	},
}
--------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N÷ HiÖp";
	else
		return "§¹i HiÖp";
	end
end
----------------------------------------------------
function main()
dofile("script/update_feature/even05/hoaphuongtrang1111111111.lua")
local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=1005 and nSubWorldID ~=1006  then
		Msg2Player("ChØ sö dông ë Chuyªn Giµnh Cho ¡n Even  nhÐ b¹n.");
		return 1
	end
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
--if GetLevel() < 150 then
--	Talk(1,"",""..myplayersex().." Ch­a §ñ CÊp 150 Ch­a ThÓ Sö Dông")
--return 1 end
--if GetTask(5969) < 8 then
--	Talk(1,"",""..myplayersex().." Ch­a §ñ C·i L·o 8 kh«ng §ñ Ch©n KhÝ §Ó Sö Dông")
--return 1 end
	if (nDate >= 201905010000) and (nDate <= 202902302400) then
		if GetTask(HOAPHUONGTRANG) < 30000 then
			if CalcFreeItemCellCount() >= 10 then
				SetTask(HOAPHUONGTRANG,GetTask(HOAPHUONGTRANG)+1) tbAwardTemplet:GiveAwardByList(tbAward,1)
   WriteLogPro("dulieu/even/Even_banhgiayCua_TaiKhoan_ "..GetAccount()..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nop tong so :"..GetTask(4965).."  cai   \n");

			else
				Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 10 « trèng råi h·y sö dông",0) return 1
			end
		else
			Say("Mçi Nh©n VËt ChØ Sö Dông Tèi §a 30000 Bia Trong Suèt Thêi Gian Ho¹t §éng") return 1
		end
	else
		Talk(1,"","VËt PhÈm §· Qu¸ H¹n SÏ Tù §éng MÊt §i")
	end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
------------------------------------------------------------------------------------------------------------------------------------------------------------