Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\lib\\basic.lua") 

function main() 
dofile("script/wumumenpai/thiphong.lua")
	if (GetTask(12) == 260*256 and GetLevel() >= 40)  then
		Talk(3,"nv4x1","Thi Phong: Ng­¬i ®Õn rÊt ®óng lóc, theo tin t×nh b¸o, triÒu ®×nh ®· cö La Hoµn lµm sø gi¶ ®Õn T­¬ng D­¬ng cïng Kim Nh©n ®Ó cÇu hßa","Thi Phong: La Hoµn vèn lµ mét quan nhá trong vô ¸n oan cña Nh¹c t­íng quan , kh«ng ngê b©y giê h¾n l¹i lµ 1 th­a t­íng, gi÷u vai trß lín, nh­ng thËt may, h¾n lµ 1 kÎ ph¶n béi, rÊt dÔ thay ®æi b¸n chÊt. GÇn ®©y viÖc ®µo t¹o ®­îc n©ng cao, nh÷ng tªn nh­ h¾n liÖu cßn sèng sãt n÷a kh«ng?")
	elseif GetTask(12) == 320*256 then
		Talk(3,"nv4x4","Thi Phong: Ng­¬i ®· giÕt chÕt La Hoµn ch­a?","Thi Phong: Ta rÊt ghĞt nh÷ng tªn tham quan, ta rÊt ghĞt La Hoµn v× kh«ng thÓ sö dông kiÕm ®Ó giÕt h¾n!")
	else
		Talk(1,"","Thi Phong: ®õng øc hiÕp kÎ yÕu, nh­ng gÆp kÎ ¸c th× ®õng tha cho h¾n!")
	end
end

function nv4x1() 
SetTask(12,270*256)
Talk(1,"nv4x2","NhËn NhiÖm Vô Tiªu DiÖt La HiÕn Thµnh Tr¶ Thï Cho Nh¹c Phi")
end

function nv4x2()
Describe("Thi Phong: H«m nay lµ mét c¬ héi tèt. H¾n sÏ ®i ngang qua §¹o H­¬ng Th«n, ®©y lµ n¬i phôc kİch tuyÖt vêi, h·y nhanh chãng ®Õn ®ã tiªu diÖt h¾n",2,"§­îc ta sÏ ®i ngay/nv4x3","Ta cã viÖc kh¸c/no")
end

function nv4x3() 
SetTask(12,280*256)
AddNote("§Õn §¹o H­¬ng Th«n (181/204), tiªu diÖt La Hoµn.") 
Msg2Player("§Õn §¹o H­¬ng Th«n (181/204), tiªu diÖt La Hoµn.")  
local nIndex = AddNpc(991,1,SubWorldID2Idx(101),1448*32,3277*32,0,"La Hoµn")
SetNpcScript(nIndex,"\\script\\wumumenpai\\lahoan.lua")
AddTimer(1800*18,"OnTimeout",nIndex)
--SetTimer(20230,1)
end 

function nv4x4() 
SetTask(12,330*256)
SetRank(94)
AddMagic(1857)
AddMagic(1858)
Msg2Player("Hoµn thµnh nhiÖm vô 40 Thi Phong.")  
end

function OnTimeout(nIndex)
DelNpc(nIndex);
end 