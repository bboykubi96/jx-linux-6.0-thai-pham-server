Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua")
npc_name = "�� T� V� H�n"
-------------------------------------------------------------------
function main()
dofile("script/wumumenpai/vuhonduonghauquan.lua")
local player_Faction = GetLastFactionNumber()
	if (player_Faction == 11) then
		Say("Ti�u s� mu�i l�i xu�ng n�i ch�i � C� c�n ta ��a v� n�i kh�ng?",4,"L�i l�m phi�n ng��i n�a r�i!/MoveVePhai", "T�m hi�u khu v�c luy�n c�ng/map_help","T�m hi�u v� ngh� b�n m�n/skill_help","Kh�ng c�n ��u! �a t� huynh/no")
	elseif (player_Faction == 10) then
		Talk(1,"","Hoa S�n L� M�n Ph�i C� Ti�ng Tr�n Giang H� Nh�ng V� H�n B�n Ta C�ng Kh�ng Coi L� G� C�.")
	elseif (player_Faction == 5) then				
		Talk(1,"","Qu� ph�i danh ch�n V�n Nam. Tr��c gi� ch�a c�ng b�n ph�i qua l�i. Kh�ng bi�t c� g� ch� gi�o! ")
	elseif (player_Faction == 2) then
		Talk(1,"","Ng��i l� ng��i c�a Th�c Nam ���ng M�n? B�n m�n l� danh m�n ch�nh ph�i, tr��c gi� kh�ng qua l�i v�i nh�ng ng��i c� t� t��ng kh�ng ch�nh th�ng")
	elseif (player_Faction == 3) then
		Talk(1,"","B�n t� ma ngo�i ��o c�c ng��i!  Ai ai c�ng mu�n ti�u di�t! ")
	elseif (player_Faction == 1) then
		Talk(1,"","Qu� bang bang ch� D��ng Anh l� m�t b�c n� trung h�o ki�t!  B�n ni t� l�u ng��ng m�!  Mong s� c� ng�y di�n ki�n! ")
	elseif (player_Faction == 0) then
		Talk(1,"","A di �� ph�t!  Th� ra l� h�a th��ng  Thi�u l�m, kh�ng bi�t Huy�n Nh�n ��i s� g�n ��y c� kh�e kh�ng?")
	elseif (player_Faction == 8) then
		Talk(1,"","V� �ang hi�p ngh�a, danh ch�n thi�n h�. ��o Nh�t Ch�n Nh�n c�a qu� ph�i v� ch��ng m�n c�a b�n ph�i giao t�nh th�m s�u. Hai ph�i ch�ng ta c� th� n�i l�  anh em m�t nh� ")
	elseif (player_Faction == 9) then
		Talk(1,"","T� ph�i v� qu� ph�i ch�a h� qua l�i, kh�ng bi�t c� g� ch� gi�o!?")
	elseif (player_Faction == 7) then
		Talk(1,"","C�c ng��i ph� thu�c Kim qu�c, lu�n d�m ng� giang s�n  ��i t�ng ta. V� l�m ch�nh ph�i ch�ng ta v� c�c ng��i th� kh�ng ��i tr�i chung! ")
	elseif (player_Faction == 6) then
		Talk(1,"","Qu� bang ng��i ��ng th� m�nh, h�o kh� xung thi�n, b�n gi�o r�t vui ���c k�t giao v�i nh�ng b�ng h�u nh� v�y! ")
	elseif (player_Faction == 4) then
		Talk(1,"","Xinh ��p nh� hoa t��i m� h�ng ng�y c� ��i di�n v�i Thanh ��ng C� Ph�t!  Ta kh�ng th�ch c�c ng��i � �i�m n�y! ")
	else
		Talk(1,"VuHon_select","Giang H� H�o Ki�t V� H�n Xu�t Th� S� T�o M�t L�n S�ng M�i Cho V� L�m Trung Nguy�n...!")
	end
end