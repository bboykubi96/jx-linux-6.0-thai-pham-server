Include("\\script\\lib\\awardtemplet.lua")

tbPirateBoxNewAward = 
{
{szName="[H�n ch�th�i gian] ��ng C�u Ng� Long Ng�c B�i",tbProp={0,686},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] ��a Ph�ch Phong H�n Th�c Y�u",tbProp={0,687},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n",tbProp={0,688},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n",tbProp={0,689},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] Ch� Ph�c Tr�ng C�t Ng�c B�i",tbProp={0,690},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] L�ng Nh�c V� Ng� Th�c ��i",tbProp={0,691},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] L�i Khung Linh Ng�c �n L�i Uy�n",tbProp={0,692},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] Ma Ho�ng Dung Kim �o�n Nh�t Gi�i",tbProp={0,693},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] Ma S�t C� H�a Li�u Thi�n Ho�n",tbProp={0,694},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] Ma Th� L� Ma Ph� T�m ��i",tbProp={0,695},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] M�ng Long T� Kim B�t Nh� Gi�i",tbProp={0,696},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] Minh Hoan Song Ho�n X� Kh�u",tbProp={0,697},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] Ng� Long T�n Phong Ph�t C�",tbProp={0,698},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] Ph�c Ma V� L��ng Kim Cang Uy�n",tbProp={0,699},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] S��ng Tinh L�u Tinh C�n Nguy�t Kh�u",tbProp={0,700},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u",tbProp={0,701},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] Thi�n Quang ��a H�nh Thi�n L� Ngoa",tbProp={0,702},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] T� Kh�ng ��t Ma T�ng H�i",tbProp={0,703},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] V� Gian Thanh Phong Nhuy�n K�ch",tbProp={0,704},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] V� Tr�n T�nh �nh L�u T�",tbProp={0,705},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] V� Y�m Thu Th�y L�u Quang ��i",tbProp={0,706},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
{szName="[H�n ch�th�i gian] V� Hoan Th�i Uy�n Ch�n V� Li�n",tbProp={0,707},nQuality=1,nCount=1,nRate=4.5,nExpiredTime=60*24*30},
}


function main()
dofile("script/global/g7vn/baoruonghanche/baoruongrandom30ngay_max.lua")
if CalcFreeItemCellCount()<5 then
Say("H�nh Trang Ph�i Tr�ng H�n 5 �")
return 1;
end	

tbAwardTemplet:GiveAwardByList(tbPirateBoxNewAward,"Ph�n Th��ng")
end