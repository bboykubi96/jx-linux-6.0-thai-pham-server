Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\map_helper.lua")
Include( "\\script\\missions\\freshman_match\\head.lua")
npc_name = "§Ö Tö Vò Hån"
-------------------------------------------------------------------
function main()
dofile("script/wumumenpai/vuhonduonghauquan.lua")
local player_Faction = GetLastFactionNumber()
	if (player_Faction == 11) then
		Say("TiÓu s­ muéi l¹i xuèng nói ch¬i µ Cã cÇn ta ®­a vÒ nói kh«ng?",4,"L¹i lµm phiÒn ng­¬i n÷a råi!/MoveVePhai", "T×m hiÓu khu vùc luyÖn c«ng/map_help","T×m hiÓu vâ nghÖ bæn m«n/skill_help","Kh«ng cÇn ®©u! §a t¹ huynh/no")
	elseif (player_Faction == 10) then
		Talk(1,"","Hoa S¬n Lµ M«n Ph¸i Cã TiÕng Trªn Giang Hå Nh­ng Vò Hån Bän Ta Còng Kh«ng Coi Lµ G× C¶.")
	elseif (player_Faction == 5) then				
		Talk(1,"","Quı ph¸i danh chÊn V©n Nam. Tr­íc giê ch­a cïng bæn ph¸i qua l¹i. Kh«ng biÕt cã g× chØ gi¸o! ")
	elseif (player_Faction == 2) then
		Talk(1,"","Ng­¬i lµ ng­êi cña Thôc Nam §­êng M«n? Bæn m«n lµ danh m«n ch¸nh ph¸i, tr­íc giê kh«ng qua l¹i víi nh÷ng ng­êi cã t­ t­ëng kh«ng chİnh thèng")
	elseif (player_Faction == 3) then
		Talk(1,"","Bän tµ ma ngo¹i ®¹o c¸c ng­¬i!  Ai ai còng muèn tiªu diÖt! ")
	elseif (player_Faction == 1) then
		Talk(1,"","Quı bang bang chñ D­¬ng Anh lµ mét bËc n÷ trung hµo kiÖt!  BÇn ni tõ l©u ng­ìng mé!  Mong sÏ cã ngµy diÖn kiÕn! ")
	elseif (player_Faction == 0) then
		Talk(1,"","A di ®µ phËt!  Th× ra lµ hßa th­îng  ThiÕu l©m, kh«ng biÕt HuyÒn Nh©n ®¹i s­ gÇn ®©y cã kháe kh«ng?")
	elseif (player_Faction == 8) then
		Talk(1,"","Vâ ®ang hiÖp nghÜa, danh chÊn thiªn h¹. §¹o NhÊt Ch©n Nh©n cña quı ph¸i vµ ch­ëng m«n cña bæn ph¸i giao t×nh th©m s©u. Hai ph¸i chóng ta cã thÓ nãi lµ  anh em mét nhµ ")
	elseif (player_Faction == 9) then
		Talk(1,"","TÖ ph¸i vµ quı ph¸i ch­a hÒ qua l¹i, kh«ng biÕt cã g× chØ gi¸o!?")
	elseif (player_Faction == 7) then
		Talk(1,"","C¸c ng­¬i phô thuéc Kim quèc, lu«n dßm ngã giang s¬n  §¹i tèng ta. Vâ l©m chİnh ph¸i chóng ta vµ c¸c ng­¬i thÒ kh«ng ®éi trêi chung! ")
	elseif (player_Faction == 6) then
		Talk(1,"","Quı bang ng­êi ®«ng thÕ m¹nh, hµo khİ xung thiªn, bæn gi¸o rÊt vui ®­îc kÕt giao víi nh÷ng b»ng h÷u nh­ vËy! ")
	elseif (player_Faction == 4) then
		Talk(1,"","Xinh ®Ñp nh­ hoa t­¬i mµ h»ng ngµy cø ®èi diÖn víi Thanh §¨ng Cæ PhËt!  Ta kh«ng thİch c¸c ng­¬i ë ®iÓm nµy! ")
	else
		Talk(1,"VuHon_select","Giang Hå Hµo KiÖt Vò Hån XuÊt ThÕ SÏ T¹o Mét Lµn Sãng Míi Cho Vâ L©m Trung Nguyªn...!")
	end
end