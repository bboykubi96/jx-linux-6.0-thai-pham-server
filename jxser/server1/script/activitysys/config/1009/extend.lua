Include("\\script\\activitysys\\config\\1009\\head.lua")
Include("\\script\\activitysys\\config\\1009\\variables.lua")
Include("\\script\\activitysys\\config\\1009\\award_ext.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\log.lua")

function pActivity:DropItemRandom(nNpcIndex)
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, %ITEM_SKILL_PIECE, "Drop Material Bag", 1)
end

function pActivity:NhanNhanDoiKinhNghiem()
	if GetLevel() >= 50 then
		
		AddSkillState(512,20,1,60*60*18);
		AddSkillState(527,5,1,60*60*18);
		AddSkillState(313,5,1,60*60*18);
		AddSkillState(314,12,1,60*60*18);
		AddSkillState(546,1,1,60*60*18);
		--AddSkillState(440, 1, 1, 60*60*18);--Tien thao lo
		AddSkillState(531,10,1,60*60*18);--ngoi sao x2
		AddSkillState(461,1, 1,60*60*18);

		Say("§· nhËn ®­îc vßng s¸ng 30p sau hoÆc «m r­¬ng quay l¹i ®©y nhËn tiÕp")
		else
		Say("§¼ng cÊp tõ 50 trë lªn míi cã thÓ nhËn")
	end
end

function pActivity:PlayerOnLogin()

	if GetTask(3907) ~= 6 then
		SetTask(3907,6)--task kiem tra event dot truoc moi dot event tang len 1
		--SetTask(3908,0)--task nhan moc 1000
		--SetTask(3909,0)--task event loai 3
		--SetTask(3910,0) --ev kvan
		--SetTask(3911,0) --ev xu
		--SetTask(3912,0) --thuong free event
		--self:SetTask(TSK_SUDUNG_BANHCHUNG,0)
		--self:SetTask(TSK_SUDUNG_MAMNGUQUA,0)
		--self:SetTask(TSK_BAOLIXISD,0)
		--self:SetTask(TSK_BAOLIXI,0)
		
		local nCount1 = tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_LIMIT_HAT_USING)
		
		if nCount1 >= 10 then
			tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_LIMIT_HAT_USING,0)
		end
		
		local nCount2 = tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_LIMIT_HAT_PEACE_USING)
		
		if nCount2 >= 10 then
			tbVNG_BitTask_Lib:setBitTask(%tbBITTSK_LIMIT_HAT_PEACE_USING,0)
		end

	end
end

function pActivity:UseHatFreedom()
	local nCount = tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_LIMIT_HAT_USING)
	local nCurCount = nCount + 1
	Msg2Player("LÇn thø: <color=green>"..nCurCount.."<color>")
	--Ladder_NewLadder(10282, GetName(),nCurCount,0,GetLastFactionNumber());
		--Phan thuong them
		local tbItemAward = 
		{
			{szName = "HuyÒn tinh cÊp 1", tbProp={6,1,147,1,0,0},nCount=1, nRate =0.3},
			{szName = "HuyÒn tinh cÊp 2", tbProp={6,1,147,2,0,0},nCount=1, nRate =0.2},
			{szName = "HuyÒn tinh cÊp 3", tbProp={6,1,147,3,0,0},nCount=1, nRate =0.1},
			{szName = "Tói danh väng",tbProp={6,1,4338,1,0,0},nCount=1,nRate=0.5},
			{szName  = "Th­ ®Æc x¸ triÒu ®×nh", tbProp={6,1,1375,1,0,0},nCount=1, nRate =0.01},
			{szName = "M¶nh Tµng B¶o §å 1",tbProp={4,490,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 2",tbProp={4,491,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 3",tbProp={4,492,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 4",tbProp={4,493,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 5",tbProp={4,494,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 6",tbProp={4,495,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 7",tbProp={4,496,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 8",tbProp={4,497,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 9",tbProp={4,498,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 10",tbProp={4,499,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 11",tbProp={4,500,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "M¶nh Tµng B¶o §å 12",tbProp={4,501,1,1,0,0},nCount=1,nRate=0.01},
			{szName = "Tinh hång b¶o th¹ch",					tbProp={4,353,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tö thñy tinh",								tbProp={4,239,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lôc thñy tinh",								tbProp={4,240,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Lam thñy tinh",							tbProp={4,238,1,1,0,0},nCount=1,nRate=0.1},
			{szName = "Phóc Duyªn Lé (tiÓu)",tbProp={6,1,122,1,0,0},nCount=1,nRate=0.3},
			{szName = "Phóc duyªn lé trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=0.2},
			{szName = "Phóc duyªn lé ®¹i",tbProp={6,1,124,1,0,0},nCount=1,nRate=0.1},
			{szName = "Tiªn th¶o lé",tbProp={6,1,71,1,0,0},nCount=1, nRate=0.1},
			{szName = "Vâ l©m mËt tÞch",tbProp={6,1,26,1,0,0},nCount=1,nRate=0.01},
			{szName = "TÈy tñy kinh",tbProp={6,1,22,1,0,0},nCount=1,nRate=0.01},
			{szName = "Bµn nh­îc t©m kinh",tbProp={6,1,12,1,0,0},nCount=1,nRate=0.2},
		}
		tbAwardTemplet:Give(tbItemAward, 1 , {EVENT_LOG_TITLE, "SuDungMamMuTuDo"})
	--Diem kn dat moc
	local tbBonusAward = {
		[500] = 
		{
			{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp_tl = 30000000},
			{
				{szName="Tô TiÔn thuËt. B¹o Vò Lª Hoa",tbProp={6,1,27,1,0,0},nCount=1,nRate=0.1},
				{szName="H·m TÜnh thuËt. Lo¹n Hoµn KÝch",tbProp={6,1,28,1,0,0},nCount=1,nRate=0.5},
				{szName="Th¸i Cùc QuyÒn Phæ- QuyÓn 3",tbProp={6,1,33,1,0,0},nCount=1,nRate=0.5},
				{szName="Th¸i Cùc KiÕm Phæ. QuyÓn 2",tbProp={6,1,34,1,0,0},nCount=1,nRate=0.1},
				{szName="V©n Long KÝch. M©u ph¸p",tbProp={6,1,35,1,0,0},nCount=1,nRate=0.5},
				{szName="L­u Tinh. §ao ph¸p",tbProp={6,1,36,1,0,0},nCount=1,nRate=0.1},
				{szName="Thiªn V­¬ng Chïy Ph¸p. QuyÓn 1",tbProp={6,1,37,1,0,0},nCount=1,nRate=0.5},
				{szName="Thiªn V­¬ng Th­¬ng ph¸p- QuyÓn 2",tbProp={6,1,38,1,0,0},nCount=1,nRate=0.5},
				{szName="Thiªn V­¬ng §ao ph¸p - QuyÓn 3 ",tbProp={6,1,39,1,0,0},nCount=1,nRate=0.5},
				{szName="Thóy Yªn §ao ph¸p",tbProp={6,1,40,1,0,0},nCount=1,nRate=0.5},
				{szName="Thóy Yªn Song ®ao",tbProp={6,1,41,1,0,0},nCount=1,nRate=0.5},
				{szName="DiÖt KiÕm MËt TÞch",tbProp={6,1,42,1,0,0},nCount=1,nRate=0.1},
				{szName="Nga Mi PhËt Quang Ch­ëng MËt TÞch",tbProp={6,1,43,1,0,0},nCount=1,nRate=0.5},
				{szName="Phi §ao thuËt. NhiÕp Hån NguyÖt ¶nh",tbProp={6,1,45,1,0,0},nCount=1,nRate=0.5},
				{szName="Phi Tiªu thuËt. Cöu Cung Phi Tinh",tbProp={6,1,46,1,0,0},nCount=1,nRate=0.5},
				{szName="Ngò §éc Ch­ëng Ph¸p. QuyÓn 1",tbProp={6,1,47,1,0,0},nCount=1,nRate=0.5},
				{szName="Ngò §éc §ao ph¸p. QuyÓn 2",tbProp={6,1,48,1,0,0},nCount=1,nRate=0.5},
				{szName="Ngò §éc NhiÕp T©m thuËt. QuyÓn 3",tbProp={6,1,49,1,0,0},nCount=1,nRate=0.5},
				{szName="Ngù Phong thuËt",tbProp={6,1,50,1,0,0},nCount=1,nRate=0.5},
				{szName="Ngù L«i thuËt",tbProp={6,1,51,1,0,0},nCount=1,nRate=0.5},
				{szName="Ngù T©m thuËt",tbProp={6,1,52,1,0,0},nCount=1,nRate=0.5},
				{szName="NhiÕp Hån - Tr­íc Chó",tbProp={6,1,53,1,0,0},nCount=1,nRate=0.5},
				{szName="C¸i Bang Ch­ëng Ph¸p",tbProp={6,1,54,1,0,0},nCount=1,nRate=0.1},
				{szName="C¸i Bang C«n Ph¸p",tbProp={6,1,55,1,0,0},nCount=1,nRate=0.5},
				{szName="ThiÕu L©m QuyÒn Ph¸p. QuyÓn 1",tbProp={6,1,56,1,0,0},nCount=1,nRate=0.5},
				{szName="ThiÕu L©m C«n ph¸p. QuyÓn 2",tbProp={6,1,57,1,0,0},nCount=1,nRate=0.5},
				{szName="ThiÕu L©m §ao ph¸p. QuyÓn 3",tbProp={6,1,58,1,0,0},nCount=1,nRate=0.5},
				{szName="Phæ §é MËt TÞch",tbProp={6,1,59,1,0,0},nCount=1,nRate=0.5},	
			},
		},
		[1000] = 
		{
			{
				{szName = "§iÓm kinh nghiÖm kh«ng céng dån", nExp_tl = 70000000},
			},
			{
				--{szName = "ChiÕu d¹", tbProp={0,10,5,5,0,0},nCount=1, nExpiredTime=60*24*15,nRate=50},
				{szName = "Phi V©n", tbProp={0,10,8,1,5,0},nCount=1, nExpiredTime=60*24*15,nRate=1},
			},
			{
				{szName = "§å phæ Hoµng Kim - An Bang Kª HuyÕt Th¹ch Giíi ChØ",tbProp={6,1,391,1,0,0},nCount=1,nRate=0.5},
				{szName = "§å phæ Hoµng Kim - §Þnh Quèc Thanh Sa Tr­êng Sam ",tbProp={6,1,383,1,0,0},nCount=1,nRate=0.5},
			},
		},
	}
	if tbBonusAward[nCurCount] then
		tbAwardTemplet:Give(tbBonusAward[nCurCount], 1 , {EVENT_LOG_TITLE, format("SuDung%dMuTuDo", nCurCount)})
		Msg2SubWorld("Chóc mõng <color=green>"..GetName().."<color> c¸c h¹ sö dông ®Õn mèc <color=yellow>"..nCurCount.."<color> vËt phÈm nhËn ®­îc phÇn th­ëng nh­ ý")
	end
end

function pActivity:UseHatPeace()
	local nCount = tbVNG_BitTask_Lib:getBitTask(%tbBITTSK_LIMIT_HAT_PEACE_USING)
	local nCountHT = nCount + 1
	Msg2Player("Sö dông lÇn thø: <color=green>"..nCountHT.."<color>")
end


IncludeLib("RELAYLADDER");

function pActivity:XemTOP3Event()
	local sResult = ""
	for i = 1, 3 do
		local nten, ncap,nphai = Ladder_GetLadderInfo(10282, i)
		sResult = sResult.."\r\n TOP "..i.." - <"..nten.."> sè lÇn: <"..ncap..">"
	end
	Say("Danh s¸ch b¶ng xÕp h¹ng TOP 3 event kú nµy: \r\n" .. sResult)
end
