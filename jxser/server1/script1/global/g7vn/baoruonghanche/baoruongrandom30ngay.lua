Include("\\script\\lib\\awardtemplet.lua")

tbPirateBoxNewAward = 
{
{szName="[H¹n chÕthêi gian] §ång Cõu Ngù Long Ngäc Béi",tbProp={0,855},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] §Þa Ph¸ch Phong Hµn Thóc Yªu",tbProp={0,854},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n",tbProp={0,816},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn",tbProp={0,888},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Chó Phäc Trïng Cèt Ngäc Béi",tbProp={0,834},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] L¨ng Nh¹c V« Ng· Thóc §¸i",tbProp={0,881},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] L«i Khung Linh Ngäc Èn L«i UyÓn",tbProp={0,898},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Ma Hoµng Dung Kim §o¹n NhËt Giíi",tbProp={0,874},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Ma S¸t Cö Háa Liªu Thiªn Hoµn",tbProp={0,868},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Ma ThÞ LÖ Ma PhÖ T©m §¸i",tbProp={0,876},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Méng Long Tö Kim B¸t Nh· Giíi",tbProp={0,769},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Minh Hoan Song Hoµn Xµ KhÊu",tbProp={0,829},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Ngù Long TÊn Phong Ph¸t C¬",tbProp={0,793},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Phôc Ma V« L­îng Kim Cang UyÓn",tbProp={0,771},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu",tbProp={0,891},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu",tbProp={0,811},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa",tbProp={0,843},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Tø Kh«ng §¹t Ma T¨ng Hµi",tbProp={0,776},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] V« Gian Thanh Phong NhuyÔn KÞch",tbProp={0,796},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] V« TrÇn TÞnh ¶nh L­u T«",tbProp={0,808},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] V« YÓm Thu Thñy L­u Quang §¸i",tbProp={0,801},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H¹n chÕthêi gian] Vô Hoan Th¸i Uyªn Ch©n Vò Liªn",tbProp={0,901},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
}


function main()
dofile("script/global/g7vn/baoruonghanche/baoruongrandom30ngay.lua")
if CalcFreeItemCellCount()<5 then
Say("Hµnh Trang Ph¶i Trèng H¬n 5 ¤")
return 1;
end	

tbAwardTemplet:GiveAwardByList(tbPirateBoxNewAward,"PhÇn Th­ëng")
end