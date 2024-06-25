Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
---------------------------------------------
function main()
dofile("script/wumumenpai/thanganh.lua")
	if (GetTask(12) == 110*256) and GetLevel() >= 30 then
		Describe("Thang Anh: Chóng t«i võa ®¸nh chÆn c¸c ®¬n vÞ c¬ giíi vµ c¬ së cöa ®Þch, chóng t«i cÇn ®Ö tö cña m×nh ®i thu håi nh÷ng vËt t­, C¸c h¹ cã gióp ta ®­îc kh«ng?",2,"T«i sÏ ®i ngay/nx3x1","Xin lçi, t«i cã viÖc kh¸c/no")
	elseif GetTask(12) == 170*256 and GetLevel() >= 30 then 
		Talk(3,"nx3x2",""..GetName()..": TÊt c¶ vËt t­ ®· ®­îc thu håi, xin h·y kiÓm tra l¹i.","Thang Anh: Mäi chuyÖn thÕ nµo råi?")	
	elseif GetTask(12) == 250*256 and GetLevel() >= 30 then 
		Talk(3,"nx3x4",""..GetName()..": C¸c ®Ö gö bÞ th­¬ng ®· ®­îc ch÷a trÞ, vÉn cßn rÊt nhiÒu ®Ö tö bÞ th­¬ng vµ y s­ giµ yÕu mét chót.","Thang Anh: Haiz! L·o ThÇn y ®· lín tuæi råi, nªn ph¶i t×m thªm ng­êi míi th«i. LÇn nµy ng­¬i lµm tèt l¾m, ®©y lµ phÇn th­ëng dµnh cho ng­¬i.")	
	else
		Talk(1,"","Thang Anh: cã chuyÖn tèt th× ®õng quªn ta nhÐ!")	
	end
end

function nx3x1() 
SetTask(12,120*256)
Msg2Player("§Õn Thôc C­¬ng S¬n (219/196),(221/186),(227/187),(226/194),(237/192),(237/196) ®Ó thu hæi vËt t­.") 
end 

function nx3x2() 
SetTask(12,180*256)
ConsumeEquiproomItem(5,6,1,4329,-1)
Msg2Player("Giao vËt t­ thµnh c«ng, ®Õn Nh¹n §·ng S¬n (90/181),(87/184),(82/187),(76/185) ®Ó h¸i thuèc.") 
end 

function nx3x4() 
SetTask(12,260*256)
SetRank(93)
AddMagic(1852)
AddMagic(1855)
Msg2Player("Hoµn thµnh nhiÖm vô 30 Thang Anh.") 
end 