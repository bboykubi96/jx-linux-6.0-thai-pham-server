
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
function main(nItemIdx)		
	dofile("script/item/ruyi_hongbao.lua")
		if 1==1 then
		return
	end
	if GetTask(3023)>0 then
		Say("M�i Nh�n V�t Ch� ���c S� D�ng 1 L�n L� Bao L� X�")
		return 1
	else

	local aa=random(50,70)
		local tbAwardcc={
	{szName="KNB", tbProp={4,343,1,1},nCount = aa},
}
tbAwardTemplet:GiveAwardByList(tbAwardcc, "Ti�n ��ng");
SetTask(3023,2)
	Msg2SubWorld("<color=green>��i hi�p <color=red>"..GetName().."<color> m� <color=cyan>L� Bao L� X� 2021<color> nh�n ���c "..aa.." <color=yellow>Kim Nguy�n B�o.")
	end
end
