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
        Say("H�nh Trang Ph�i Tr�ng H�n 5 �")
        return 1;
    end	

tbPirateBoxNewAward = 
{
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>M�ng Long T� Kim B�t Nh� Gi�i<color>",tbProp={0,686},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Ph�c Ma V� L��ng Kim Cang Uy�n<color>",tbProp={0,687},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>T� Kh�ng ��t Ma T�ng H�i<color>",tbProp={0,688},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Ng� Long T�n Phong Ph�t C�<color>",tbProp={0,689},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>V� Gian Thanh Phong Nhuy�n K�ch<color>",tbProp={0,690},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>V� Y�m Thu Th�y L�u Quang ��i<color>",tbProp={0,691},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>V� Tr�n T�nh �nh L�u T�<color>",tbProp={0,692},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u<color>",tbProp={0,693},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n<color>",tbProp={0,694},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Minh Hoan Song Ho�n X� Kh�u<color>",tbProp={0,695},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Ch� Ph�c Tr�ng C�t Ng�c B�i<color>",tbProp={0,696},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Thi�n Quang ��a H�nh Thi�n L� Ngoa<color>",tbProp={0,697},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>��a Ph�ch Phong H�n Th�c Y�u<color>",tbProp={0,698},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>��ng C�u Ng� Long Ng�c B�i<color>",tbProp={0,699},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Ma S�t C� H�a Li�u Thi�n Ho�n<color>",tbProp={0,700},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Ma Ho�ng Dung Kim �o�n Nh�t Gi�i<color>",tbProp={0,701},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Ma Th� L� Ma Ph� T�m ��i<color>",tbProp={0,702},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>L�ng Nh�c V� Ng� Th�c ��i<color>",tbProp={0,703},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n<color>",tbProp={0,704},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>S��ng Tinh L�u Tinh C�n Nguy�t Kh�u<color>",tbProp={0,705},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>L�i Khung Linh Ng�c �n L�i Uy�n<color>",tbProp={0,706},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>V� Hoan Th�i Uy�n Ch�n V� Li�n<color>",tbProp={0,707},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>��c C� Long Ho�n Thi�n L� Ng�a<color>",tbProp={0,6277},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Ph�ch Th�ch B�ch H�ng Qu�n<color>",tbProp={0,6283},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>D��ng Quan Ti�u C�m Hoa Th�c ��i<color>",tbProp={0,6289},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="<color=green>[H�n ch� th�i gian]<color> <color=yellow>Ph� V�n Di Cung Huy�n Ng�c Uy�n<color>",tbProp={0,6295},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
};

tbAwardTemplet:GiveAwardByList(tbPirateBoxNewAward,"Ph�n Th��ng")
end

