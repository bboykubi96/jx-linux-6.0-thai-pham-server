Include("\\script\\activitysys\\npcfunlib.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")

-------------------------------------------------------------------------Vat Pham Thong Dung----------------------------------------------------------------------------------------------------------
local tbItemNewBossDropAward={

	[1] = {
		{szName="Ng©n L­îng",nJxb=50000000,nCount=1},
		{szName="§¹i Kim Nguyªn b¶o",tbProp={4,1496,1,1,0,01},nCount=40},			
	--{szName="TiÒn §ång",tbProp={4,417,1,1,0,0},nCount=200},
		{szName="Tinh Ngoc",tbProp={6,1,4806,1,1},nCount=random(50,100)},
		{szName="TÈy Tñy Kinh",tbProp={6,1,vlmt,1,0,0},nCount=1},
		--{szName="Vâ L©m MËt TÞch",tbProp={6,1,26,1,0,0},nCount=1},
		{szName = "Tinh LuyÖn Th¹ch",tbProp={6,1,2280,1,0,0},nCount=random(1,2)},
		{szName = "Tö Tinh Kho¸ng Th¹ch ",tbProp={6,1,4885,1,0,0},nCount=random(1,2)},
		{szName="Can Khon Song",tbProp={6,1,2119,1,0,0},nCount=random(0,1)},
		{szName="Nhat Ky",tbProp={6,1,2126,1,0,0},nCount=random(0,1)},
		{szName="Ngu Linh Kiem Dinh Phu	",tbProp={6,1,3007,1,1,0},nCount=random(1,2)},
		{szName="Quy Nguyen ",tbProp={6,1,3008,1,1,0},nCount=random(1,2)},
	},
		[2] = {--100%/10 mon trang Bi
	--{szName = "MËt TÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,0,0},nCount=1,nRate=0.01,CallBack= _Message},
	{szName="B¶o R­¬ng Tinh S­¬ng H¹ng Liªn",tbProp={6,1,4504,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=15,CallBack= _Message},
	{szName="B¶o R­¬ng Tinh S­¬ng Kh«i",tbProp={6,1,4505,1,0,0},nCount=1,tbParam={2,0,0,0,0,0},nRate=15,CallBack= _Message},
	{szName="B¶o R­¬ng Tinh S­¬ng Th­îng Giíi",tbProp={6,1,4506,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=15,CallBack= _Message},
	{szName="B¶o R­¬ng Tinh S­¬ng Hé UyÓn",tbProp={6,1,4507,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=1,CallBack= _Message},
	{szName="B¶o R­¬ng Tinh S­¬ng Yªu §¸i",tbProp={6,1,4508,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=10,CallBack= _Message},
	{szName="B¶o R­¬ng Tinh S­¬ng Hµi",tbProp={6,1,4511,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=10,CallBack= _Message},
	{szName="B¶o R­¬ng Tinh S­¬ng Béi",tbProp={6,1,4512,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nRate=10,CallBack= _Message},
	{szName="B¶o R­¬ng Tinh S­¬ng H¹ Giíi",tbProp={6,1,4513,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=10,CallBack= _Message},
	
	},
}


function OnDeath(nNpcIndex)
	tenboss=GetNpcName(nNpcIndex)
	if (PlayerIndex == nil or PlayerIndex == 0) then
		return
	end
	--	 StackExp(500000000);
PlayerFunLib:AddExp(500000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®¶ b¹i Admin"));
	local nTeamSize = GetTeamSize();
	local szName;
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 200000000, 0, format("%s phÇn th­ëng","Kinh nghiÖm ®øng gÇn lóc §éc C« CÇu B¹i bÞ tiªu diÖt"));
	end
	szNews = format("§¹i HiÖp <color=green>"..GetName().."<color> ®· ®¸nh b¹i <color=Cyan>§éc C« CÇu B¹i<color>, tªn tuæi sÏ vang väng giang hå !");
	AddGlobalNews(szNews);
	Msg2SubWorld(szNews);
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbItemNewBossDropAward,format("killed_%s",GetNpcName(nNpcIndex)))	
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,roiboss(),format("killed_%s",GetNpcName(nNpcIndex)))
		local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
		if nDate <= 202002132359 then
			tbAwardTemplet:GiveAwardByList({{szName = "ThiÖp chóc TÕt", tbProp ={ 6,1,1346,1,0,0}, nCount=50, nExpiredTime=2*24*60}},  "test", 1)
		end

end

function OnTimer(nNpcIndex, nTimeOut) 
	DelNpc(nNpcIndex);
end

function roiboss()
local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<pic=44><color=red>VËt phÈm <color=pink><%s><color=green><enter> võa r¬i tõ <color=yellow>Boss Hoµng Kim<color>" ,GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end
local c = random(1,3)

if c==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "MËt TÞch Kü N¨ng 150 CÊp 23",tbProp={6,1,4371,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;

local d= random(1,3)
if d==2 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¸ch LuyÖn Thµnh C­¬ng",tbProp={6,1,4906,1,1},nCount=1,CallBack= _Message,},}, "test", 1);
end;

			local f1= random(1,5)

				if f1==3 then
									local i2 = random(1,3)
									if i2==1 then
									tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt Kh«i",tbProp={6,1,4430,1,1},nCount=1,CallBack= _Message},}, "test", 1);
									else if i2==2 then
									tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt Yªu §¸i",tbProp={6,1,4433,1,1},nCount=1,CallBack= _Message},}, "test", 1);
									else if i2==3 then
										tbAwardTemplet:GiveAwardByList({{szName = "§å Phæ NguyÖt KhuyÕt Béi",tbProp={6,1,4437,1,1},nCount=1,CallBack= _Message},}, "test", 1);
										end
										end
										end
				end;
				
local d1= random(1,3)
if d1==2 then
	local d12=random(1,2)
	if d12==1 then
	tbAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Kh¶i",tbProp={6,1,4509,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},CallBack= _Message,},}, "test", 1);
	else if d12==2 then
	bAwardTemplet:GiveAwardByList({{szName = "B¶o R­¬ng Tinh S­¬ng Vò KhÝ",tbProp={6,1,4510,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},CallBack= _Message,},}, "test", 1);
	end
	end
end;

end
