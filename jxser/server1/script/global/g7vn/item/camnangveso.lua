IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
 
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\g7vn\\g7libgm.lua")
Include("\\script\\global\\g7vn\\vesomayman.lua")
function main(nIndexItem)

	--dofile("script/global/g7vn/item/camnangveso.lua")
	--dofile("script/global/g7vn/vesomayman.lua")
	
	local szTitle = "<npc>Oh! Xin ch�o <color=cyan>"..GetName().." <color> ��i hi�p, ng��i c� mu�n th� v�n may kh�ng! T�i NPC Ch� S�ng B�c L�m An h�ng ng�y v�o l�c 08h00 ��n 18h00 di�n ra ho�t ��ng V� S� May M�n, 18h00 c�ng b� k�t qu� v� nh�n gi�i t� 19h00 ��n 07h00 ng�y h�m sau"
	local tbOpt =
	{
		{"Xem s� �� mua", sodamua},
		{"Xem k�t qu�", xemketqua},
		{"K�t th�c"},
	}
	CreateNewSayEx(szTitle, tbOpt)

	return 1
end

