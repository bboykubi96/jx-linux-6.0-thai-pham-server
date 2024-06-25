IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")

nWidth = 4
nHeight = 6
nFreeItemCellLimit = 1

function main(nIndexItem)

	--dofile("script/global/g7vn/item/tanthudon.lua")
	--do Say("T¹m thêi ch­a sö ®ông d­îc") return 1 end

	if GetTask(1403) == 1 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 2 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô nhËp m«n, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô nhËp m«n trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 3 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng nhËn nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 4 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 1, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 1 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 5 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 6 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 2, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 2 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 7 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 8 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 3, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 3 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 9 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 4, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 4 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 10 then
		Say("§¹i hiÖp ch­a hoµn thµnh nhiÖm vô T©n Thñ 4, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 4 trong Phong V©n LÖnh Bµi")
		return 1
	end
	if GetTask(1403) == 11 then
		Say("§¹i hiÖp ch­a nhËn nhiÖm vô T©n Thñ 5, bÊm chuét ph¶i chän chøc n¨ng hoµn thµnh nhiÖm vô T©n Thñ 5 trong Phong V©n LÖnh Bµi")
		return 1
	end

	if GetTask(1403) == 12 then--da nhan nhiem vu tan thu 4 chua su dung tan thu don
		local thuongpvlb = 
				{
				{szName = "Vâ L©m MËt TŞch",tbProp={6,1,26,1,0,0},nCount=3, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "TÈy Tñy Kinh",tbProp={6,1,22,1,0,0},nCount=3, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "Tinh hång b¶o th¹ch",	tbProp={4,353,1,1,0,0},nCount=6,nBindState = -2},
				{szName = "Hång ¶nh 1", tbProp={0,204}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "Hång ¶nh 2", tbProp={0,205}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "Hång ¶nh 3", tbProp={0,206}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "Hång ¶nh 4", tbProp={0,207}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30},
				{szName = "§¹i Thµnh Bİ Kİp 90",	tbProp={6,1,2424,1,0,0},nCount=1,nBindState = -2,nExpiredTime=60*24*30},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlb, "Thuong PVLB Tan Thu 5");
			local thuongpvlbab = 
			{
				{szName = "An Bang 1", tbProp={0,164}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30, nRate=25},
				{szName = "An Bang 2", tbProp={0,165}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30,nRate=25},
				{szName = "An Bang 3", tbProp={0,166}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30,nRate=25},
				{szName = "An Bang 4", tbProp={0,167}, nQuality = 1, nCount=1, nBindState = -2, nExpiredTime=60*24*30,nRate=25},
			}
			tbAwardTemplet:GiveAwardByList(thuongpvlbab, "Thuong PVLB Tan Thu 5 AB");

		AddRepute(300)
		SetTask(1403,13)--da su dung tan thu don
		Say("Chóc mõng ®¹i hiÖp "..GetName().." ®· sö dông thµnh c«ng T©n Thñ §¬n mét trong c¸c nhiÖm vô cña Phong V©n LÖnh Bµi")
		Msg2SubWorld("Chóc mõng ®¹i hiÖp "..GetName().." ®· sö dông thµnh c«ng T©n Thñ §¬n mét trong c¸c nhiÖm vô cña Phong V©n LÖnh Bµi")
		return 0
	end

	if GetTask(1403) > 12 then
		Say("Mçi nh©n vËt chØ ®­îc sö dông vËt phÈm T©n Thñ §¬n 1 lÇn")
		return 1
	end

end
