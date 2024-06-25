IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
 
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\g7vn\\g7libgm.lua")
Include("\\script\\global\\g7vn\\vesomayman.lua")
function main(nIndexItem)

	--dofile("script/global/g7vn/item/camnangveso.lua")
	--dofile("script/global/g7vn/vesomayman.lua")
	
	local szTitle = "<npc>Oh! Xin chµo <color=cyan>"..GetName().." <color> ®¹i hiÖp, ng­¬i cã muèn thö vËn may kh«ng! T¹i NPC Chñ Sßng B¹c L©m An hµng ngµy vµo lóc 08h00 ®Õn 18h00 diÔn ra ho¹t ®éng VÐ Sè May M¾n, 18h00 c«ng bè kÕt qu¶ vµ nhËn gi¶i tõ 19h00 ®Õn 07h00 ngµy h«m sau"
	local tbOpt =
	{
		{"Xem sè ®· mua", sodamua},
		{"Xem kÕt qu¶", xemketqua},
		{"KÕt thóc"},
	}
	CreateNewSayEx(szTitle, tbOpt)

	return 1
end

