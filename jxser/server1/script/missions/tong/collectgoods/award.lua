-- script viet hoa By http://tranhba.com  #��#.lua (�##��#�####�###�)
if (not __COLLG_AWARD_H__) then
	__COLLG_AWARD_H__ = 1;
Include([[\script\missions\tong\collectgoods\head.lua]]);
IncludeLib("FILESYS");

tabExp = {
2000000,
2000000,
2000000,
1500000,
1500000,
1500000,
1000000,
1000000,
1000000,
1000000
};

collg_tabRate = {-- script viet hoa By http://tranhba.com ####�# #в��# ###�PK�� ####�# 4###### ��##�# 5###### ###�#### �####�#� 6###### 7###### 8######
	{0, 0, 0, 0, 0, 0.27, 0.2755, 0.12, 0.2, 0.1, 0.03, 0.0045},	-- script viet hoa By http://tranhba.com #��#�#
	{0, 0, 0, 0, 0.2, 0.172, 0.2, 0.1, 0.2, 0.1, 0.025, 0.003},	-- script viet hoa By http://tranhba.com 
	{0, 0, 0, 0.061, 0.2, 0.137, 0.2, 0.1, 0.2, 0.08, 0.02, 0.002},	-- script viet hoa By http://tranhba.com 
	{0.04, 0.04, 0.04, 0.061, 0.17, 0.137, 0.2, 0.05, 0.18, 0.072, 0.01, 0},	-- script viet hoa By http://tranhba.com 
	{0.05, 0.05, 0.06, 0.068, 0.17, 0.137, 0.2, 0.05, 0.15, 0.06, 0.005, 0},	-- script viet hoa By http://tranhba.com 
	{0.059, 0.06, 0.1, 0.1, 0.12, 0.15, 0.15, 0.05, 0.15, 0.06, 0.001, 0},		-- script viet hoa By http://tranhba.com 
	{0.15, 0.12, 0.14, 0.1, 0.1, 0.1, 0.1, 0.01, 0.12, 0.06, 0, 0},	-- script viet hoa By http://tranhba.com 
	{0.18, 0.17, 0.14, 0.1, 0.1, 0.05, 0.1, 0.01, 0.1, 0.05, 0, 0},	-- script viet hoa By http://tranhba.com 
	{0.17, 0.15, 0.1, 0.2, 0.1, 0.05, 0.1, 0.01, 0.1, 0.02, 0, 0},	-- script viet hoa By http://tranhba.com 
	{0.15, 0.13, 0.16, 0.25, 0.15, 0.05, 0.1, 0.01, 0, 0, 0, 0}	-- script viet hoa By http://tranhba.com #�#�#
};

-- script viet hoa By http://tranhba.com ######��
tab_goods = {
	{122, 0, "##�#�#(##) "},
	{71, 0, "#в��# "},
	{"PK ��"},
	{123, 0, "##�#�#(##) "},
	{147, 4, "####4##"},
	{124, 0, "##�#�#(��) "},
	{147, 5, "####5##"},
	{"####"},
	{"�###�#�# "},
	{147, 6, "####6##"},
	{147, 7, "####7##"},
	{147, 8, "####8##"},
}


function collg_about()
	Say("���####�#�## <color=red>15<color>###�######�#<color=red>5<color> 5###�##�###�#�#�##��##�##�##�##�####�###��#####��#�#��####����#��####�##�###�##�###��####��###�##�#####�##��####��###�#�##ĳ##�##�#�#�####�##�#���#�#�###", 1, "#��#߳ /collg_about_next");
end;

function collg_about_next()
	Say("�###�##߱#�#�#�######�##�##�#�#��###�#���###30�###��###��######�#�#�#�#�#######�###�#�#�#�#������####��#��#���####�###��ߤ�#�##�###�##���#�##�######�#��#��##'<color=yellow>###�######<color>' ###�#�#�##�#�ŷ#����###��#.", 0);
end;

function collg_aword()
	if (GetTaskTemp(193) == 1) then
		return
	end;
	SetTaskTemp(193, 1);
	
	local nCount = GetTask(COLLG_COUNT_ONETIME);
	local nRank = GetTask(COLLG_TK_RANK);
	SetTask(COLLG_COUNT_ONETIME, 0);
	SetTask(COLLG_TK_RANK, 0);
	if (nCount == 0 or nRank == 0) then
		Say("###�######: ķ##��#��###���#��#�##�##̰�##�###�#�##ݵ���#�##߲�#�###��##.", 1, "����#�######г#/oncancel");
		SetTaskTemp(193, 0);
		return
	end;
	
	Say("###�######: ###ĺ#��##ķ��## <color=yellow>"..nCount.."<color> #�##�###�ŷ##�<color=yellow>"..nRank.."<color>, ⩣###ķ#�#��#####��#�.", 1, "���##��#./oncancel");
	collg_giveaward(nRank);
	SetTaskTemp(193, 0);
end;


function collg_giveaward(nRank)
	AddOwnExp(tabExp[nRank]);
	collg_goodsaward(nRank);
end;

function collg_festival_addpkwan()-- script viet hoa By http://tranhba.com #�PK��
    local itemidx = random(1, 10);
    AddItem(6, 0, itemidx, 1, 0, 0, 0);
    tab_pkwan_name = {"�#�#��", "#��#��", "��#��", "##и��", "####��", "#�#���", "��#���", "�##���", "#�#���", "###���"};
    Msg2Player("ķ###��###"..tab_pkwan_name[itemidx]);
end;

function collg_goodsaward(nRank)
	local nGoodsType = collg_getgoodtype(nRank);
	
	if (nGoodsType == 3) then	-- script viet hoa By http://tranhba.com #��###PK��
		collg_festival_addpkwan();
		return
	end;
	
	if (nGoodsType == 8) then	-- script viet hoa By http://tranhba.com ###��#######
		collg_givecrystal();
		return
	end;
	
	if (nGoodsType == 9) then	-- script viet hoa By http://tranhba.com #��###�####�#�
		collg_giveTaskBook();
		return
	end;
	AddItem(6, 1, tab_goods[nGoodsType][1], tab_goods[nGoodsType][2], 0, 0, 0);
	local strsay = "ķ###��###"..tab_goods[nGoodsType][3];
	Msg2Player(strsay);
end;

function collg_givecrystal()
	local nIdx = random(1, 3);
	local tab_Crystal = {{238, "�#####"}, {239, "######"}, {240, "��####"}};
	AddItem(4, tab_Crystal[nIdx][1], 0, 0, 0, 0, 0);
	Msg2Player("ķ###� <color=yellow>"..tab_Crystal[nIdx][2].."<color>.");
end;

function collg_getgoodtype(nRank)
	local nSeed = random(100);
	local nRate = {}
	local i;
	local nBase = 0;
	for i = 1, getn(collg_tabRate[nRank]) do
		nBase = nBase + collg_tabRate[nRank][i] * 100;
		if (nBase >= nSeed) then
			return i;
		end;
	end;
end;

-- script viet hoa By http://tranhba.com  ����###�####�#�
function collg_giveTaskBook()
	local nRandomTaskID, nRandomItemIndex = 0, 0;
	-- script viet hoa By http://tranhba.com  ##�#�####�##��#�###��###
	nRandomTaskID = TaskNo(selectNextTask());
	-- script viet hoa By http://tranhba.com  ����###�####�#�
	nRandomItemIndex = AddItem(6, 2, 2, 0, 1, 0, 0);
	SetItemMagicLevel(nRandomItemIndex, 1, nRandomTaskID);
	-- script viet hoa By http://tranhba.com  �#�#####�###��#�
	SyncItem(nRandomItemIndex);	
	Msg2Player("ķ###��### <color=green>�###��color>!");
	WriteTaskLog("###��###�###�#####�Ţ### "..nRandomTaskID);
	return nRandomTaskID;
end;


-- script viet hoa By http://tranhba.com  �#####ݳ#�#��# LOG #���
function WriteTaskLog(strMain)
	-- script viet hoa By http://tranhba.com  �###�#��##�߲##��#
	if strMain==nil then return end;
	WriteLog("[2006Ī�##�####��#�###�]"..GetLocalDate(" [%y Ī %m �� %d �� %H ��%M ##]").." [�#�# "..GetAccount().."] [�###:"..GetName().."]:"..strMain);
end;

function oncancel()	-- script viet hoa By http://tranhba.com �###

end;

end; -- script viet hoa By http://tranhba.com // end of __COLLG_AWARD_H__
