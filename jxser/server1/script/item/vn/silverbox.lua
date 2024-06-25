Include("\\script\\lib\\awardtemplet.lua")
 _Message = function (nItemIdx,szItem)
	local strItemName = szItem or GetItemName(nItemIdx)
	local strMessage = format("<color=green>Chóc mõng <color=yellow>%s<color=green> ®· nhËn ®­îc vËt phÈm <color=yellow>%s<color=green> tõ b¶o r­¬ng b¹c cao quý", GetName(), strItemName)
	Msg2SubWorld(strMessage)
	-- local handle = OB_Create();
	-- ObjBuffer:PushObject(handle, strMessage)
	-- RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	-- OB_Release(handle)
end
tbBoxAward  = {
{szName="HuyÒn tinh 7",tbProp={6,1,147,7,0,0},nRate = 40,CallBack =_Message},
{szName="HuyÒn tinh 8",tbProp={6,1,147,8,0,0},nRate = 40,CallBack =_Message},
{szName="HuyÒn tinh 9",tbProp={6,1,147,9,0,0},nRate = 10,CallBack =_Message},
{szName="HuyÒn tinh 10",tbProp={6,1,147,10,0,0},nRate = 2,CallBack =_Message},
{tbProp={4,{567,942},1,1,0,0},nRate=100,CallBack = _Message},
}
function main()
tbAwardTemplet:GiveAwardByList(%tbBoxAward,"Mo bao ruong cao quy")
end
-- script viet hoa By http://tranhba.com award_give 
-- function main(nItemIdx) 
-- local nDate = tonumber(GetLocalDate("%y%m%d")); 
-- if (nDate >= 70331) then 
-- Msg2Player("B¶o r­¬ng ®· sinh tó , kh«ng thÓ sö dông ."); 
-- return 0; 
-- end; 

-- local tb_goldenbox = { 
-- {1, {6,1,124,1,0,0,0}, 1, 23860,"Phóc duyªn lé ( ®¹i ) ", 0}, 
-- {1, {6,1,71,1,0,0}, 1, 17010,"Tiªn th¶o lé ", 0}, 
-- {1, {6,1,26,1,0,0,0}, 1, 100,"Vâ l©m bÝ tÞch ", 0}, 
-- {1, {6,1,22,1,0,0,0}, 1, 100,"TÈy Tñy Kinh ", 0}, 
-- {1, {6,1,147,1,0,0}, 1, 38590, "1 cÊp huyÒn tinh qu¸ng th¹ch ", 0}, 
-- {1, {6,1,147,2,0,0}, 1, 12280, "2 cÊp huyÒn tinh qu¸ng th¹ch ", 0}, 
-- {1, {6,1,147,3,0,0}, 1, 2150, "3 cÊp huyÒn tinh qu¸ng th¹ch ", 0}, 
-- {1, {4,353,1,1,0,0}, 1, 2830,"Tinh hång b¶o th¹ch ", 0}, 
-- {1, {4,238,1,1,0,0}, 1, 2830, " lam thñy tinh ", 0}, 
-- {2, {0,159}, 1, 50,"§Þnh n­íc lôa máng xanh tr­êng sam ", 1}, 
-- {2, {0,160}, 1, 50,"§Þnh n­íc « sa ph¸t quan ", 1}, 
-- {2, {0,161}, 1, 50,"§Þnh n­íc xÝch quyªn mÒm ngoa ", 1}, 
-- {2, {0,162}, 1, 50,"§Þnh n­íc tö ®»ng hé cæ tay ", 1}, 
-- {2, {0,163}, 1, 50,"§Þnh n­íc ng©n tµm ®ai l­ng ", 1}, 
-- }; 
-- local sum = 0; 
-- local nrand = random(100000); 
-- local strInfo=format("%s\t%s\tName:%s\tAccount:%s\t", 
-- " thÇn bÝ quyÓn trôc thu tËp ho¹t ®éng ", 
-- GetLocalDate("%Y-%m-%d %H:%M"), 
-- GetName(), GetAccount()); 
-- for i = 1, getn(tb_goldenbox) do 
		-- sum = sum + tb_goldenbox[i][4]
-- if (sum >= nrand) then 
-- award_give(tb_goldenbox[i]); 
-- Msg2Player(format("Chóc mõng ngµi ®¹t ®­îc - %s",tb_goldenbox[i][5])); 
-- WriteLog(strInfo..format("Më ra c¸i r­¬ng ®¹t ®­îc %s", tb_goldenbox[i][5])); 
-- if (tb_goldenbox[i][6] == 1) then 
-- AddGlobalNews(format("%s # ®· tham gia thÇn bÝ quyÓn trôc ho¹t ®éng bÝnh ®¹t ®­îc mét bé hoµng kim trang bÞ !", GetName())); 
-- end; 
-- return 0; 
-- end; 
-- end; 
-- return 1; 
-- end; 
