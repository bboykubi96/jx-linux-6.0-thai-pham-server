IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\logevent\\logevent.lua");
Include("\\script\\logevent\\variables.lua");
---------------------------------------------
HOAPHUONGDO = 4965; TANGTHEMLANSUDUNG = 4964
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
dofile("script/update_feature/even05/hoaphuongdo.lua")
if (CalcFreeItemCellCount() < 10) then
		Talk(1,"","H�y �� Tr�ng 10 � tr�ng r�i h�y s� d�ng")
		return
	end
local nSubWorldID = GetWorldPos();
	if nSubWorldID ~=1005 and nSubWorldID ~=1006  then
		Msg2Player("Ch� s� d�ng � SAHARA Ho�c THANH CO nh� b�n.");
		return 1
	end

local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
if GetLevel() < 150 then
	Talk(1,"",""..myplayersex().." Ch�a �� C�p 150 Ch�a Th� S� D�ng")
return 1 end
	if (nDate >= 201905010000) and (nDate <= 202205290000) then
		if (GetTask(TANGTHEMLANSUDUNG) == 0) then
			if GetTask(HOAPHUONGDO) < 40000 then
				--if CalcFreeItemCellCount() < 10 then
					tbAwardTemplet:GiveAwardByList(tbAward,1)
					SetTask(HOAPHUONGDO,GetTask(HOAPHUONGDO)+1)
                                      
	                                    --  WriteLogPro("dulieu/even/Even_laco_Cua_TaiKhoan_ "..GetAccount()..".txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t da nop tong so :"..GetTask(4965).."  cai   \n");

				--else
				--	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y s� d�ng",0) return 1
				--end
			else
				Say("M�i Nh�n V�t Ch� S� D�ng T�i �a 40000 Hoa Phuong Do Trong Su�t Th�i Gian Ho�t ��ng") return 1
			end
		else
			if GetTask(HOAPHUONGDO) < 80000 then
				if CalcFreeItemCellCount()  <  10 then
					tbAwardTemplet:GiveAwardByList(tbAward,1)
					SetTask(HOAPHUONGDO,GetTask(HOAPHUONGDO)+1)
				else
					Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y s� d�ng",0) return 1
				end
			else
				Say("M�i Nh�n V�t Ch� S� D�ng T�i �a 80.000 Hoa Phuong Do Trong Su�t Th�i Gian Ho�t ��ng") return 1
			end
		end
	else
		Talk(1,"","V�t Ph�m �� Qu� H�n S� D�ng S� T� ��ng M�t �i")
	end
end
-----------------------------------------------------------------------------------------------------------------------
tbAward = {
	[1] = {
		{nExp_tl = 8e7},
	},
	[2] = {
           	       
       {szName="manh nhan tinh sao",tbProp={6,1,49004,1,0,0},nCount=1,nRate=0.5},
	 {szName="manh nhan tinh sao",tbProp={6,1,30355,1,0,0},nCount=1,nRate=0.5},
	 {szName="M�nh V� Phi Phong",tbProp={6,1,30293,1,0,0},nCount=1,nRate=0.5},     
         {szName="Tinh Ng�c",tbProp={6,1,4807,1,0,0},nCount=1,nRate=10},
	{szName="M�nh Tr�ng Thi�n Th�ch",tbProp={6,1,30290,1,0,0},nCount=1,nRate=0.1},
	{szName="M�nh Tr�ng Thi�n Th�ch",tbProp={6,1,43061,1,0,0},nCount=1,nRate=0.1,nExpiredTime=10080},
        {szName="M�nh V� Phi Phong",tbProp={6,1,5576,1,0,0},nCount=1,nRate=0.01}, 
       {szName="M�nh V� Phi Phong",tbProp={6,1,random(30005,30007),1,0,0},nCount=1,nRate=0.01,nExpiredTime=1260}, 
       {szName="M�nh V� Phi Phong",tbProp={0,11,840,1,0,0},nCount=1,nRate=0.01,nExpiredTime=10080}, 
        {szName="trang suc",tbProp={0,random(4956,4968)},nCount=1,nQuality=1,nRate=0.01,nExpiredTime=10080},
        {szName="trang suc",tbProp={0,random(4993,4997)},nCount=1,nQuality=1,nRate=0.01,nExpiredTime=10080},
       {szName="trang suc",tbProp={0,random(4974,4978)},nCount=1,nQuality=1,nRate=0.01,nExpiredTime=10080},
       {szName="trang suc",tbProp={0,random(4989,4991)},nCount=1,nQuality=1,nRate=0.01,nExpiredTime=10080},
--------------------------------------------------------------------------------------------------------------------------------------
        {szName="M�nh V� Phi Phong",tbProp={0,11,841,1,0,0},nCount=1,nRate=0.001,nExpiredTime=10080}, 
        {szName="trang suc",tbProp={0,random(6003,6004)},nCount=1,nQuality=1,nRate=0.001,nExpiredTime=10080},
        {szName="trang suc",tbProp={0,random(5990,5994)},nCount=1,nQuality=1,nRate=0.001,nExpiredTime=10080},
       {szName="trang suc",tbProp={0,random(5996,6000)},nCount=1,nQuality=1,nRate=0.001,nExpiredTime=10080},

	},
}
------------------------------------------------------------------------------------------------------------------------------------------------
_Message = function (nItemIdx)
	local strItemName = GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green>T� Even �ng Gi� Noel<color=>", GetName(), strItemName)
	-- Msg2Player(tbAward_Ext);
	local handle = OB_Create();
	ObjBuffer:PushObject(handle, strMessage)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end