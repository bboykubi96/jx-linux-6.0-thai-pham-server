Include("\\script\\lib\\awardtemplet.lua")
 _Message = function (nItemIdx,szItem)
	local strItemName = szItem or GetItemName(nItemIdx)
	local strMessage = format("<color=green>Ch�c m�ng <color=yellow>%s<color=green> �� nh�n ���c v�t ph�m <color=yellow>%s<color=green> t� b�o r��ng b�c cao qu�", GetName(), strItemName)
	Msg2SubWorld(strMessage)
	-- local handle = OB_Create();
	-- ObjBuffer:PushObject(handle, strMessage)
	-- RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	-- OB_Release(handle)
end
tbBoxAward  = {
{szName="Huy�n tinh 7",tbProp={6,1,147,7,0,0},nRate = 40,CallBack =_Message},
{szName="Huy�n tinh 8",tbProp={6,1,147,8,0,0},nRate = 40,CallBack =_Message},
{szName="Huy�n tinh 9",tbProp={6,1,147,9,0,0},nRate = 10,CallBack =_Message},
{szName="Huy�n tinh 10",tbProp={6,1,147,10,0,0},nRate = 2,CallBack =_Message},
{tbProp={4,{567,942},1,1,0,0},nRate=100,CallBack = _Message},
}
function main()
tbAwardTemplet:GiveAwardByList(%tbBoxAward,"Mo bao ruong cao quy")
end
-- script viet hoa By http://tranhba.com award_give 
-- function main(nItemIdx) 
-- local nDate = tonumber(GetLocalDate("%y%m%d")); 
-- if (nDate >= 70331) then 
-- Msg2Player("B�o r��ng �� sinh t� , kh�ng th� s� d�ng ."); 
-- return 0; 
-- end; 

-- local tb_goldenbox = { 
-- {1, {6,1,124,1,0,0,0}, 1, 23860,"Ph�c duy�n l� ( ��i ) ", 0}, 
-- {1, {6,1,71,1,0,0}, 1, 17010,"Ti�n th�o l� ", 0}, 
-- {1, {6,1,26,1,0,0,0}, 1, 100,"V� l�m b� t�ch ", 0}, 
-- {1, {6,1,22,1,0,0,0}, 1, 100,"T�y T�y Kinh ", 0}, 
-- {1, {6,1,147,1,0,0}, 1, 38590, "1 c�p huy�n tinh qu�ng th�ch ", 0}, 
-- {1, {6,1,147,2,0,0}, 1, 12280, "2 c�p huy�n tinh qu�ng th�ch ", 0}, 
-- {1, {6,1,147,3,0,0}, 1, 2150, "3 c�p huy�n tinh qu�ng th�ch ", 0}, 
-- {1, {4,353,1,1,0,0}, 1, 2830,"Tinh h�ng b�o th�ch ", 0}, 
-- {1, {4,238,1,1,0,0}, 1, 2830, " lam th�y tinh ", 0}, 
-- {2, {0,159}, 1, 50,"��nh n��c l�a m�ng xanh tr��ng sam ", 1}, 
-- {2, {0,160}, 1, 50,"��nh n��c � sa ph�t quan ", 1}, 
-- {2, {0,161}, 1, 50,"��nh n��c x�ch quy�n m�m ngoa ", 1}, 
-- {2, {0,162}, 1, 50,"��nh n��c t� ��ng h� c� tay ", 1}, 
-- {2, {0,163}, 1, 50,"��nh n��c ng�n t�m �ai l�ng ", 1}, 
-- }; 
-- local sum = 0; 
-- local nrand = random(100000); 
-- local strInfo=format("%s\t%s\tName:%s\tAccount:%s\t", 
-- " th�n b� quy�n tr�c thu t�p ho�t ��ng ", 
-- GetLocalDate("%Y-%m-%d %H:%M"), 
-- GetName(), GetAccount()); 
-- for i = 1, getn(tb_goldenbox) do 
		-- sum = sum + tb_goldenbox[i][4]
-- if (sum >= nrand) then 
-- award_give(tb_goldenbox[i]); 
-- Msg2Player(format("Ch�c m�ng ng�i ��t ���c - %s",tb_goldenbox[i][5])); 
-- WriteLog(strInfo..format("M� ra c�i r��ng ��t ���c %s", tb_goldenbox[i][5])); 
-- if (tb_goldenbox[i][6] == 1) then 
-- AddGlobalNews(format("%s # �� tham gia th�n b� quy�n tr�c ho�t ��ng b�nh ��t ���c m�t b� ho�ng kim trang b� !", GetName())); 
-- end; 
-- return 0; 
-- end; 
-- end; 
-- return 1; 
-- end; 
