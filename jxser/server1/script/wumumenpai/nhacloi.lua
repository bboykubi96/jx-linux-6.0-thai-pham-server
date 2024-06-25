Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\task\\150skilltask\\g_task.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\item\\skillbook.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")
--------------------------------------------------------
function main()
dofile("script/wumumenpai/nhacloi.lua")
	if (GetTask(12) == 390*256 and GetLevel() >= 50) then
		Say("<color=yellow>C�c H� T�m Ta C� Vi�c G�",3,"T�i h� c� vi�c c�n th�nh gi�o ng�i/nvxuatsu5","��i Ngh� ��u S� /#daiyitoushi_main(11)","Th�i/No")
	elseif GetTask(12) == 430*256 then
		Say("<color=yellow>C�c H� T�m Ta C� Vi�c G�",3,"T�i h� c� vi�c c�n th�nh gi�o ng�i/nvxuatsu9","��i Ngh� ��u S� /#daiyitoushi_main(11)","Th�i/No")
	elseif GetCamp() == 4 and GetLevel() >= 50 and GetLastFactionNumber() == 11 then
		Say("<color=yellow>C�c H� T�m Ta C� Vi�c G�",3,"T�i h� c� vi�c c�n th�nh gi�o ng�i/gianhaplaisumon","��i Ngh� ��u S� /#daiyitoushi_main(11)","Th�i/No")
	elseif GetCamp() >= 1 and GetCamp() <= 3 and GetLevel() >= 50 and GetLastFactionNumber() == 11 then
		Say("<color=yellow>C�c H� T�m Ta C� Vi�c G�",3,"T�i h� c� vi�c c�n th�nh gi�o ng�i/xuatsu","��i Ngh� ��u S� /#daiyitoushi_main(11)","Th�i/No")
	else
		Say("<color=yellow>C�c H� T�m Ta C� Vi�c G�",3,"T�i h� c� vi�c c�n th�nh gi�o ng�i/oldentence","��i Ngh� ��u S� /#daiyitoushi_main(11)","Th�i/No")
	end
end

function oldentence() 
Talk(1,"","B�n ph�i to�n l� nh�ng anh h�ng h�o ki�t")
end 

function nvxuatsu5() 
Talk(3,"nvxuatsu6",""..GetName()..": Ch��ng m�n, t�i �� t�m ���c manh m�i c�a H�n l�y c�p V� M�c Di Th�, c�i ��t � T�n Kinh C�c l� gi�, m�t m�nh th� ch�a ch�y h�t ���c t�m th�y Long s� huy�n, c� v� nh� H�n �� ��n b�n t�u ph�a ��ng.","Nh�c L�i: �i�u nay l� kh�ng th�, ta v�i h�n c� m�i th�m t�nh. C� th� c� g� �� m� �m, hay mau ��n b�n t�u, nh�t ��nh ph�i b�o v� b�c th�, �� l� t�n v�t c�a b�n m�n.")
end 

function nvxuatsu6() 
SetTask(12,400*256)
Msg2Player("��n b�n t�u (221/203) �i�u tra.")  
end

function nvxuatsu9() 
Talk(6,"nvxuatsu10","Nh�c L�i: Ng��i �� t�m th�y ch�a? Ng��i �� �em V� M�c Di Th� v� r�i �?",""..GetName()..": Th�t may l� n� ch�a b� m�t! Tuy nhi�n H�n s� th�c �� b� gi�t, v� ng��i ��nh c�p c�ng ch�nh l� H� Tuy�t, H�n s� th�c �� b� h�m h�i, ta �� gi�t ch�t h�n ngay t�i ch�.","Nh�c L�i: T�c th�t, kh�ng th� t� tay gi�t ch�t t�n ph�n �� ��, ng��i l�m r�t t�t, �� b�o v� ���c t�n v�t m�n ph�i, ng��i c� th� xu�t s�!")  
end  

function nvxuatsu10() 
SetTask(12,440*256)
SetCamp(4)
SetCurCamp(4)
SetRank(96)
ConsumeEquiproomItem(1,6,1,4341,-1)
Msg2Player("Ho�n th�nh nhi�m v� xu�t s�.") 
end  

function gianhaplaisumon() 
Talk(6,"gianhaplaisumon2",""..GetName()..": Ch��ng m�n...","Nh�c L�i: Ng��i c�m th�y th� n�o khi xu�ng n�i?",""..GetName()..": sau khi phi�u b�c gian h�, t�i kh�ng k�m l�ng ���c, c�m th�y r�t nh� c�c s� huynh ��...","Nh�c L�i: V� H�n ���ng lu�n ch�o ��n ng��i, ta s� cho ph�p ng��i � l�i, n�u ng��i mu�n.",""..GetName()..": �� t� xin ��ng �, khi xu�ng n�i, �� t� c�ng t�ch g�p ���c m�t s� ti�n, ��i v�i �� t� c�ng v� �ch, t�t nh�t l� g�p v�o ng�n qu� c�a b�n ph�i, c� th� coi nh� ch�t l�ng th�nh c�a �� t�")
end 

function gianhaplaisumon2() 
Describe("Nh�c L�i: T�t th�i, h�y giao cho ta 50000 l��ng b�c",2,"���c th�i/gianhaplaisumon3","�� ta suy ngh� l�i/no")
end 

function gianhaplaisumon3() 
local nJxb = 50000
	if GetCash() < nJxb then
		Talk(1,"","Xin l�i, �� ta chu�n b� l�i sau")
		return 1
	end
	Talk(1,"gianhaplaisumon4","Nh�c L�i: Ta th�ng cho ng��i l�m th�n h�nh qu�n, truy�n th� v� c�ng tuy�t h�c c�a b�n m�n.")
end

function gianhaplaisumon4()
	if HaveMagic(1860) >= 0 and HaveMagic(1861) >= 0 and HaveMagic(1862) >= 0 then
		SetCamp(1)
		SetCurCamp(1)
		SetRank(97)
	else
		AddMagic(1860)
		AddMagic(1861)
		AddMagic(1862)
		SetCamp(1)
		SetCurCamp(1)
		SetRank(97)
	end 
end

function xuatsu()
Describe("Nh�c L�i: Ng��i c� mu�n xu�ng n�i kh�ng?",2,"Xin cho �� t� ���c xu�ng n�i/xuatsu2","�� t� s� quay l�i sau/no")
end

function xuatsu2()
SetCamp(4)
SetCurCamp(4)
end
