
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

Include("\\script\\global\\g7vn\\g7configall.lua")

function main()
	
	--dofile("script/��ԭ����/����/npc/����_ҩ���ϰ�Ի�.lua")
	--dofile("script/global/g7vn/g7configall.lua")

	UTask_wu = GetTask(10)
	if (UTask_wu == 40*256+10) and (HaveItem(142) == 0) then 		--������
		local tbSay = {}
		tinsert(tbSay,"Mua ���c X� h��ng/L40_buy_yes")
		tinsert(tbSay,"Giao d�ch/yes")
		if chetaohonnguyenlinhlo == 1 then
			tinsert(tbSay,"Ta mu�n ch� t�o H�n Nguy�n Linh L�/refine")
		end
		tinsert(tbSay,"Kh�ng giao d�ch/no")
		Say("Gi� d��c li�u qu� X� H��ng h�m nay l� 500 l��ng th�i!",getn(tbSay),tbSay)
	else
		local tbSay = {}
		tinsert(tbSay,"Giao d�ch/yes")
		if chetaohonnguyenlinhlo == 1 then
			tinsert(tbSay,"Ta mu�n ch� t�o H�n Nguy�n Linh L�/refine")
		end
		tinsert(tbSay,"Kh�ng giao d�ch/no")
		Say("Ch� t�i ��y d��c li�u g� c�ng c�, c� b�nh th� kh�i b�nh, kh�ng b�nh kh�e ng��i, b�n thu�c ��ng gi� kh�ng l�a g�t, ng�i mua m�t �t ch�?",getn(tbSay),tbSay)
	end
end;

function L40_buy_yes()
	if (GetCash() >= 500) then
		Pay(500)
		AddEventItem(142)
		AddNote("Mua ���c X� h��ng.")
		Msg2Player("Mua ���c X� h��ng.")
	else
		Talk(1,"","Gi� v�y c�ng mua kh�ng n�i, �i ra cho ta l�m �n!")
	end
end;

function yes()
Sale(96);  			--�������׿�
end;

function no()
end;
