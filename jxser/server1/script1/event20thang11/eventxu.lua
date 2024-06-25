
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("SETTING")
IncludeLib("ITEM")

function main()
	--dofile("script/event20thang11/eventxu.lua")
	--do Say("§¹o cô ®· hÕt h¹n sö dông...") return 0 end
	TSK_UseExpLimit1 = 3911
	local nExpLimit = GetTask(TSK_UseExpLimit1); 
	nExpLimit = nExpLimit + 1
	if (nExpLimit > 1000) then
		Say("Sö dông event ®· ®¹t giíi h¹n ®iÓm kinh nghiÖm, kh«ng thÓ sö dông n÷a.",0)
		return 1;
	end
	if (GetLevel() < 50) then
		Say("ThËt ®¸ng tiÕc, chØ cã ng­êi ch¬i <color=yellow>cÊp trªn 50<color> míi cã thÓ sö dông.",0)
		return 1;
	end
	local tbthuongitem = {
		
			{szName = "Kim tª",tbProp={4,979,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "ThÇn bÝ kho¸ng th¹ch", tbProp={6,1,398,1,0,0},nCount=1, nRate =0.1},

			{szName = "HuyÒn tinh cÊp 1", tbProp={6,1,147,1,0,0},nCount=1, nRate =5},--25 cai
			{szName = "HuyÒn tinh cÊp 2", tbProp={6,1,147,2,0,0},nCount=1, nRate =0.5},
			{szName = "HuyÒn tinh cÊp 3", tbProp={6,1,147,3,0,0},nCount=1, nRate =0.3},
			{szName = "HuyÒn tinh cÊp 4", tbProp={6,1,147,4,0,0},nCount=1, nRate =0.2},
			{szName = "HuyÒn tinh cÊp 5", tbProp={6,1,147,5,0,0},nCount=1, nRate =0.1},

			{szName = "Tiªn th¶o lé §Æc BiÖt",tbProp={6,1,1181,1,0,0},nCount=1, nRate=0.2},--1 cai
			{szName = "Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nCount=1, nRate=2},--10 cai
			{szName = "NÕn B¸t tr©n phóc nguyÖt", nRate = 0.2,   tbProp = {6, 1, 1817, 1, 0, 0}, nCount=1},	
			{szName = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.1},
			{szName = "Tö mÉu lÖnh",tbProp={6,1,1427,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tinh hång b¶o th¹ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "Tö thñy tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lôc thñy tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam thñy tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "QuÕ hoa töu",tbProp={6,1,125,1,0,0},nCount=1,nRate=0.4},--2 vien
			{szName = "Vâ l©m mËt tÞch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.1},
			{szName = "TÈy tñy kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.1},
			{szName= "Tói danh väng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=2},--10 cai

			{szName="M¶nh Tµng B¶o §å 1",tbProp={4,490,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 2",tbProp={4,491,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 3",tbProp={4,492,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 4",tbProp={4,493,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 5",tbProp={4,494,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 6",tbProp={4,495,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 7",tbProp={4,496,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 8",tbProp={4,497,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 9",tbProp={4,498,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 10",tbProp={4,499,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 11",tbProp={4,500,1,1,0,0},nCount=1,nRate=0.02},
			{szName="M¶nh Tµng B¶o §å 12",tbProp={4,501,1,1,0,0},nCount=1,nRate=0.02},
			
}

local tbdatmoc = {
		[500] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000},
			{szName = "ChiÕu d¹", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*14},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=2,},
			{szName = "§å phæ Hoµng Kim - §Þnh Quèc XÝch Quyªn NhuyÔn Ngoa",tbProp={6,1,385,1,0,0},nCount=1},
		},
		[600] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, 
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "§å phæ Hoµng Kim - §Þnh Quèc Ng©n Tµm Yªu ®¸i",tbProp={6,1,387,1,0,0},nCount=1},
		},
		[700] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 30000000}, 
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "§å phæ Hoµng Kim - An Bang Cóc Hoa Th¹ch ChØ hoµn",tbProp={6,1,389,1,0,0},nCount=1},
		},
		[800] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 50000000}, 
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=4,},
			{szName = "§å phæ Hoµng Kim - An Bang §iÒn Hoµng Th¹ch Ngäc Béi",tbProp={6,1,390,1,0,0},nCount=1},
		},
		[900] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 60000000}, 
			{szName = "§¹i thµnh bÝ kÝp 90",tbProp={6,1,2424,1,0,0},nCount=1},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=9,},
			{szName = "§å phæ Hoµng Kim - An Bang Kª HuyÕt Th¹ch Giíi ChØ ",tbProp={6,1,391,1,0,0},nCount=1},
		},
		[1000] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp = 150000000},
			{szName = "Ngò Hµnh Kú Th¹ch",tbProp={6,1,2125,1,0,0},nCount=15,},
			{szName = "HuyÒn tinh cÊp 8", tbProp={6,1,147,8,0,0},nCount=1,},
			{szName = "Hãa c«ng ®¹i ph¸p", tbProp={6,1,4276,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},},
			{szName = "ThÊt tinh th¶o", tbProp={6,1,1673,1,0,0},nCount=1, },
			{szName = "B¸ch niªn thÊt tinh th¶o", tbProp={6,1,1674,1,0,0},nCount=1, },
			{szName = "Thiªn niªn thÊt tinh th¶o", tbProp={6,1,1675,1,0,0},nCount=1, },
			{szName = "B¾c §Èu truyÒn c«ng thuËt", tbProp={6,1,1672,1,0,0},nCount=1, },
			{szName = "§å phæ Hoµng Kim - An Bang B¨ng Tinh Th¹ch H¹ng Liªn",tbProp={6,1,388,1,0,0},nCount=1},

			{szName = "TÝn sø yªu bµi", tbProp={6,1,888,1,0,0},nCount=1,},
			{szName = "Cóc hoa th¹ch", tbProp={4,963,1,1,0,0},nCount=1,},
			{szName = "B¨ng th¹ch kÕt tinh", tbProp={4,967,1,1,0,0},nCount=1,},
			{szName = "B¨ng thiÒm t¬", tbProp={4,965,1,1,0,0},nCount=1,},
			{szName = "Kª huyÕt th¹ch", tbProp={4,966,1,1,0,0},nCount=1,},
			{szName = "M· n·o", tbProp={4,964,1,1,0,0},nCount=1,},
			{szName = "M¶nh thiªn th¹ch", tbProp={4,968,1,1,0,0},nCount=1,},
			{szName = "§iÒn hoµng th¹ch", tbProp={4,969,1,1,0,0},nCount=1,},
		}, 		
}
	
	--PhÇn th­ëng kinh nghiÖm
	local tbExpAward = {szName = "§iÓm kinh nghiÖm", nExp=1000000}

	tbAwardTemplet:Give(tbExpAward, 1, {"Event_20T11", "SuDungItemXuDuocEXP"});

	tbAwardTemplet:Give(tbthuongitem, 1, {"Event_20T11", "SuDungItemXuDuocItem"});

	--PhÇn th­ëng dat moc
	if tbdatmoc[nExpLimit] then
		local tbTempAward = tbdatmoc[nExpLimit]
		tbAwardTemplet:Give(tbTempAward, 1, {"Event_20T11", format("SuDung%dLanItemXu", nExpLimit)})
		local msgtbao = "Chóc mõng ®¹i hiÖp <color=green>"..GetName().."<color> ®· sö dông vËt phÈm Event ®Õn mèc <color=yellow>"..nExpLimit.."<color>, nhËn ®­îc phÇn th­ëng nh­ ý"
		Msg2SubWorld(msgtbao)
		if GetLevel() < 130 then
			local tbExpAward130 = {szName = "§iÓm kinh nghiÖm 1ty5 cong don", nExp_tl=1500000000}
			tbAwardTemplet:Give(tbExpAward130, 1, {"Event_20T11", "SuDungevDatMocNhanKinhNghiem1ty5"});
		end
	end
	SetTask(TSK_UseExpLimit1, nExpLimit)
	Msg2Player("§· sö dông lÇn thø: <color=green>"..nExpLimit .."<color>")
	return 0
end


