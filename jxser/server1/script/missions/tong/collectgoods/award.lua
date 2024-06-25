-- script viet hoa By http://tranhba.com  #±µ#.lua (°##¸â#Ä####ã###¯)
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

collg_tabRate = {-- script viet hoa By http://tranhba.com ####¤# #Ð²ý¢# ###óPKÝÌ ####¤# 4###### ´ã##¤# 5###### ###ó#### Ì####Ý#¸ 6###### 7###### 8######
	{0, 0, 0, 0, 0, 0.27, 0.2755, 0.12, 0.2, 0.1, 0.03, 0.0045},	-- script viet hoa By http://tranhba.com #óß#·#
	{0, 0, 0, 0, 0.2, 0.172, 0.2, 0.1, 0.2, 0.1, 0.025, 0.003},	-- script viet hoa By http://tranhba.com 
	{0, 0, 0, 0.061, 0.2, 0.137, 0.2, 0.1, 0.2, 0.08, 0.02, 0.002},	-- script viet hoa By http://tranhba.com 
	{0.04, 0.04, 0.04, 0.061, 0.17, 0.137, 0.2, 0.05, 0.18, 0.072, 0.01, 0},	-- script viet hoa By http://tranhba.com 
	{0.05, 0.05, 0.06, 0.068, 0.17, 0.137, 0.2, 0.05, 0.15, 0.06, 0.005, 0},	-- script viet hoa By http://tranhba.com 
	{0.059, 0.06, 0.1, 0.1, 0.12, 0.15, 0.15, 0.05, 0.15, 0.06, 0.001, 0},		-- script viet hoa By http://tranhba.com 
	{0.15, 0.12, 0.14, 0.1, 0.1, 0.1, 0.1, 0.01, 0.12, 0.06, 0, 0},	-- script viet hoa By http://tranhba.com 
	{0.18, 0.17, 0.14, 0.1, 0.1, 0.05, 0.1, 0.01, 0.1, 0.05, 0, 0},	-- script viet hoa By http://tranhba.com 
	{0.17, 0.15, 0.1, 0.2, 0.1, 0.05, 0.1, 0.01, 0.1, 0.02, 0, 0},	-- script viet hoa By http://tranhba.com 
	{0.15, 0.13, 0.16, 0.25, 0.15, 0.05, 0.1, 0.01, 0, 0, 0, 0}	-- script viet hoa By http://tranhba.com #ó£#·#
};

-- script viet hoa By http://tranhba.com ######µµ
tab_goods = {
	{122, 0, "##¤#¢#(##) "},
	{71, 0, "#Ð²ý¢# "},
	{"PK ÝÌ"},
	{123, 0, "##¤#¢#(##) "},
	{147, 4, "####4##"},
	{124, 0, "##¤#¢#(´ã) "},
	{147, 5, "####5##"},
	{"####"},
	{"Ì###·#Ý# "},
	{147, 6, "####6##"},
	{147, 7, "####7##"},
	{147, 8, "####8##"},
}


function collg_about()
	Say("·¿´####¯#ï## <color=red>15<color>###ã######ã#<color=red>5<color> 5###ã##±###±#·#²##ãºã##Ý##ß##±##Ý####±###ãß#####¯¿#£#£±####ãßÄó#¸³####â##´###Ý##ß###Ìß####ðâ©###â##´#####£##Ìß####ÄÄ###±#â##Ä³##ã##Ý#Ì#³####Ð##Ì#ÐÝÐ#±#â###", 1, "#¢ß#ß³ /collg_about_next");
end;

function collg_about_next()
	Say("Ì###Ý##ß±#µ#³#â######â##´##Ý#¸#«¢###Ý#£±¤###30·###¤ó¤###£±######²#±#±#â#³#######Ì###±#±#â#³#×ï¤óÐÝÐ####ÝÄ#×Ý#ãÌã####Ä###¿Ðß¤ã·#·##Ä###³##ãÌã#ß##Ì######¯#¸£#ºã##'<color=yellow>###¯######<color>' ###ï#ý#â##´#ÅÅ·#£ý¸¿###±µ#.", 0);
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
		Say("###¯######: Ä·##¸×#±°###¿×Ì#âß#â##´##Ì°Ð##Ì###·#ã##Ýµ´âß#ß##ß²£#µ###£±##.", 1, "°´ââ#ã£######Ð³#/oncancel");
		SetTaskTemp(193, 0);
		return
	end;
	
	Say("###¯######: ###Äº#º·##Ä·âß## <color=yellow>"..nCount.."<color> #â##´###ÅÅ·##ó<color=yellow>"..nRank.."<color>, â©£###Ä·#Ä#±µ#####£â#¢.", 1, "¸×Ì##±µ#./oncancel");
	collg_giveaward(nRank);
	SetTaskTemp(193, 0);
end;


function collg_giveaward(nRank)
	AddOwnExp(tabExp[nRank]);
	collg_goodsaward(nRank);
end;

function collg_festival_addpkwan()-- script viet hoa By http://tranhba.com #ãPKÝÌ
    local itemidx = random(1, 10);
    AddItem(6, 0, itemidx, 1, 0, 0, 0);
    tab_pkwan_name = {"³#·#ÝÌ", "#ãÅ#ÝÌ", "´ã¸#ÝÌ", "##Ð¸ÝÌ", "####ÝÌ", "#Ð#ïÝÌ", "±ï#µÝÌ", "µ##µÝÌ", "#ð#µÝÌ", "###µÝÌ"};
    Msg2Player("Ä·###·ß###"..tab_pkwan_name[itemidx]);
end;

function collg_goodsaward(nRank)
	local nGoodsType = collg_getgoodtype(nRank);
	
	if (nGoodsType == 3) then	-- script viet hoa By http://tranhba.com #ãß###PKÝÌ
		collg_festival_addpkwan();
		return
	end;
	
	if (nGoodsType == 8) then	-- script viet hoa By http://tranhba.com ###óß#######
		collg_givecrystal();
		return
	end;
	
	if (nGoodsType == 9) then	-- script viet hoa By http://tranhba.com #ãß###Ì####Ý#¸
		collg_giveTaskBook();
		return
	end;
	AddItem(6, 1, tab_goods[nGoodsType][1], tab_goods[nGoodsType][2], 0, 0, 0);
	local strsay = "Ä·###·ß###"..tab_goods[nGoodsType][3];
	Msg2Player(strsay);
end;

function collg_givecrystal()
	local nIdx = random(1, 3);
	local tab_Crystal = {{238, "µ#####"}, {239, "######"}, {240, "¢×####"}};
	AddItem(4, tab_Crystal[nIdx][1], 0, 0, 0, 0, 0);
	Msg2Player("Ä·###· <color=yellow>"..tab_Crystal[nIdx][2].."<color>.");
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

-- script viet hoa By http://tranhba.com  Ðó³Ðß###Ì####Ý#¸
function collg_giveTaskBook()
	local nRandomTaskID, nRandomItemIndex = 0, 0;
	-- script viet hoa By http://tranhba.com  ##¤#ß####ó##²·#Ä###óÌ###
	nRandomTaskID = TaskNo(selectNextTask());
	-- script viet hoa By http://tranhba.com  Ðó³Ðß###Ì####Ý#¸
	nRandomItemIndex = AddItem(6, 2, 2, 0, 1, 0, 0);
	SetItemMagicLevel(nRandomItemIndex, 1, nRandomTaskID);
	-- script viet hoa By http://tranhba.com  Ý#²#####Ä###£«#¤
	SyncItem(nRandomItemIndex);	
	Msg2Player("Ä·###·ß### <color=green>Ì###²¸color>!");
	WriteTaskLog("###·ß###Ì###·#####ºÅ¢### "..nRandomTaskID);
	return nRandomTaskID;
end;


-- script viet hoa By http://tranhba.com  Ì#####Ý³#Ä#´Ì# LOG #ý³×
function WriteTaskLog(strMain)
	-- script viet hoa By http://tranhba.com  Ì###£#¿â##¤ß²##´Ì#
	if strMain==nil then return end;
	WriteLog("[2006Äª°##¸####£â#¯###¯]"..GetLocalDate(" [%y Äª %m ¤¢ %d Ìâ %H £±%M ##]").." [·#¢# "..GetAccount().."] [Ì###:"..GetName().."]:"..strMain);
end;

function oncancel()	-- script viet hoa By http://tranhba.com Ì###

end;

end; -- script viet hoa By http://tranhba.com // end of __COLLG_AWARD_H__
