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
	 {szName="M�t T�ch K� n�ng 21",tbProp={6,1,49006,1,0,0},nCount=1,nRate=0.1},
	 {szName="manh nhan tinh sao",tbProp={6,1,49004,1,0,0},nCount=1,nRate=0.05},    
                        {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=1,nRate=10},
			{szName="ruong nl",tbProp={6,1,4837,1,0,0},nCount=1,nRate=10},
			{szName="Ho�ng Kim Thi�n Th�ch",tbProp={6,1,50002,1,0,0},nCount=1,nRate=0.1},
			{szName="Tr�ng Luy�n Ng�c",tbProp={6,1,5414,1,0,0},nCount=1,nRate=0.1},
	},
}
--------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
----------------------------------------------------
function main()
dofile("script/update_feature/even05/hoaphuongtrang1111111111.lua")
local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=1005 and nSubWorldID ~=1006  then
		Msg2Player("Ch� s� d�ng � Chuy�n Gi�nh Cho �n Even  nh� b�n.");
		return 1
	end
local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
--if GetLevel() < 150 then
--	Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 Ch�a Th� S� D�ng")
--return 1 end
--if GetTask(5969) < 8 then
--	Talk(1,"",""..myplayersex().." Ch�a �� C�i L�o 8 kh�ng �� Ch�n Kh� �� S� D�ng")
--return 1 end
	if (nDate >= 201905010000) and (nDate <= 202902302400) then
		if GetTask(HOAPHUONGTRANG) < 30000 then
			if CalcFreeItemCellCount() >= 10 then
				SetTask(HOAPHUONGTRANG,GetTask(HOAPHUONGTRANG)+1) tbAwardTemplet:GiveAwardByList(tbAward,1)
   WriteLogPro("dulieu/even/Even_banhgiayCua_TaiKhoan_ "..GetAccount()..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nop tong so :"..GetTask(4965).."  cai   \n");

			else
				Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y s� d�ng",0) return 1
			end
		else
			Say("M�i Nh�n V�t Ch� S� D�ng T�i �a 30000 Bia Trong Su�t Th�i Gian Ho�t ��ng") return 1
		end
	else
		Talk(1,"","V�t Ph�m �� Qu� H�n S� T� ��ng M�t �i")
	end
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end
------------------------------------------------------------------------------------------------------------------------------------------------------------