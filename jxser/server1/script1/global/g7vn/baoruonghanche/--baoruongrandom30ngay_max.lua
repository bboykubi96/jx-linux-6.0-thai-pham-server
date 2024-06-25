Include("\\script\\lib\\awardtemplet.lua")
IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("ITEM")
IncludeLib("LEAGUE")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\droptemplet.lua")
--------------------------------------------------------
Include("\\script\\lib\\composelistclass.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\composeex.lua")

function main()
dofile("script/global/g7vn/baoruonghanche/baoruongrandom30ngay_max.lua")
if CalcFreeItemCellCount()<5 then
        Say("Hµnh Trang Ph¶i Trèng H¬n 5 ¤")
        return 1;
    end	

tbPirateBoxNewAward = 
{
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Méng Long Tö Kim B¸t Nh· Giíi<color>",tbProp={0,686},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Phôc Ma V« L­îng Kim Cang UyÓn<color>",tbProp={0,687},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Tø Kh«ng §¹t Ma T¨ng Hµi<color>",tbProp={0,688},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Ngù Long TÊn Phong Ph¸t C¬<color>",tbProp={0,689},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>V« Gian Thanh Phong NhuyÔn KÞch<color>",tbProp={0,690},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>V« YÓm Thu Thñy L­u Quang §¸i<color>",tbProp={0,691},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>V« TrÇn TÞnh ¶nh L­u T«<color>",tbProp={0,692},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Thª Hoµng HuÖ T©m Tr­êng Sinh KhÊu<color>",tbProp={0,693},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>BÝch H¶i Hoµn Ch©u Tuyªn Thanh C©n<color>",tbProp={0,694},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Minh Hoan Song Hoµn Xµ KhÊu<color>",tbProp={0,695},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Chó Phäc Trïng Cèt Ngäc Béi<color>",tbProp={0,696},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Thiªn Quang §Þa Hµnh Thiªn Lý Ngoa<color>",tbProp={0,697},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>§Þa Ph¸ch Phong Hµn Thóc Yªu<color>",tbProp={0,698},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>§ång Cõu Ngù Long Ngäc Béi<color>",tbProp={0,699},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Ma S¸t Cö Háa Liªu Thiªn Hoµn<color>",tbProp={0,700},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Ma Hoµng Dung Kim §o¹n NhËt Giíi<color>",tbProp={0,701},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Ma ThÞ LÖ Ma PhÖ T©m §¸i<color>",tbProp={0,702},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>L¨ng Nh¹c V« Ng· Thóc §¸i<color>",tbProp={0,703},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>CËp Phong Thóy Ngäc HuyÒn Hoµng UyÓn<color>",tbProp={0,704},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>S­¬ng Tinh L­u Tinh C¶n NguyÖt KhÊu<color>",tbProp={0,705},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>L«i Khung Linh Ngäc Èn L«i UyÓn<color>",tbProp={0,706},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Vô Hoan Th¸i Uyªn Ch©n Vò Liªn<color>",tbProp={0,707},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>§éc C« Long Hoµn Thiªn Lý Ngäa<color>",tbProp={0,6277},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Ph¸ch Th¹ch B¹ch Hång Qu¸n<color>",tbProp={0,6283},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>D­¬ng Quan Tiªu CÇm Hoa Thóc §¸i<color>",tbProp={0,6289},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H¹n chÕ thêi gian]<color> <color=yellow>Phï V©n Di Cung HuyÒn Ngäc UyÓn<color>",tbProp={0,6295},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
};

tbAwardTemplet:GiveAwardByList(tbPirateBoxNewAward,"PhÇn Th­ëng")
end

