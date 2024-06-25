IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\awardtemplet.lua");

Include( "\\script\\missions\\leaguematch\\head.lua" )
Include( "\\script\\missions\\leaguematch\\npc\\head.lua" )
Include("\\script\\lib\\log.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")

function main()	
	--myreloadfile()
	local tbSay = {}
	tinsert(tbSay,"NhËn lÖnh bµi t©n thñ./gmlenhbaitanthu")
	tinsert(tbSay,"N©ng lªn 5 cÊp ./gmlen5cap")
	tinsert(tbSay,"N©ng lªn 10 cÊp ./gmlen10cap")
	tinsert(tbSay,"N©ng lªn 20 cÊp ./gmlen20cap")
	tinsert(tbSay,"Trang bÞ tÝm ./nhando6dong")
	tinsert(tbSay,"Trang bÞ xanh ./laydoxanh")
	tinsert(tbSay,"§iÒu kiÖn khai s¸ng bang héi ./gmlapbanghoi")
	tinsert(tbSay,"Homepage G7VN ./tnwebsite")
	tinsert(tbSay,"Hç trî häc vâ c«ng 9x ./gmhotroskill")
	tinsert(tbSay,"§æi mµu PK ./doimau")
	tinsert(tbSay,"Huû vËt phÈm ./DisposeItem")
	tinsert(tbSay,"Trang 2 ./g7testtrang2")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ./Quit")
	Say("Hç trî t©n thñ: Chµo mõng b¹n ®Õn víi thÕ giíi Game Vâ L©m G7VN, +Facebook: https://www.facebook.com/volamg7vn +Trang chñ: http://g7vn.net", getn(tbSay), tbSay)
end

function g7testtrang2()
	local tbSay = {}
	tinsert(tbSay,"Trang 1./main")
	tinsert(tbSay,"§i t©y s¬n ®¶o ./ditaysondao")
	tinsert(tbSay,"V« danh giíi chØ ./gmvodanhgioichi")
	tinsert(tbSay,"Trang søc, phi phong, Ên ./fifong")
	tinsert(tbSay,"Trang bÞ ®éng s¸t ./gmdongsat")
	tinsert(tbSay,"Trang bÞ hång ¶nh ./gmhonganh")
	tinsert(tbSay,"Tiªn th¶o lé ®Æc biÖt ./tienthaolodacbiet")
	tinsert(tbSay,"Bµn nhuîc t©m kinh ./gmbntk")
	tinsert(tbSay,"Kü n¨ng 120 ./gmkynang120")
	tinsert(tbSay,"Kü n¨ng 90 ./gmkynang90")
	tinsert(tbSay,"Trang bÞ HKMP ./hoangkimmonphai")
	tinsert(tbSay,"Trang 3./g7testtrang3")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ./Quit")
	Say("Hç trî t©n thñ", getn(tbSay), tbSay)
end

function g7testtrang3()
	local tbSay = {}
	tinsert(tbSay,"Trang 2./g7testtrang2")
	tinsert(tbSay,"NhËn 100 xu ./gmnhan100xu")
	tinsert(tbSay,"NhËn 20 K v¹n ./gmnhan50kvan")
	tinsert(tbSay,"Nh¹c v­¬ng kiÕm ./gmnhacvuongkiem")
	tinsert(tbSay,"LÊy ngùa ./layngua")
	tinsert(tbSay,"§Þnh quèc ./gmtbdinhquoc")
	tinsert(tbSay,"An Bang HM ./gmtbanbanghoanmy")
	tinsert(tbSay,"MËt ®å thÇn bÝ ./gmlaymatdothanbi")
	tinsert(tbSay,"TÝn vËt m«n ph¸i ./g7tinvatmonphai")
	tinsert(tbSay,"Trang 4./g7testtrang4")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ./Quit")
	Say("Hç trî t©n thñ", getn(tbSay), tbSay)
end

function g7testtrang4()
	local tbSay = {}
	tinsert(tbSay,"Trang 3./g7testtrang3")
	tinsert(tbSay,"Trang 5./g7testtrang3")
	tinsert(tbSay,"KÕt thóc ®èi tho¹i ./Quit")
	Say("Hç trî t©n thñ", getn(tbSay), tbSay)
end

function myreloadfile()
--dofile("script/global/Â·ÈË_Àñ¹Ù.lua");
--dofile("script/global/tieungao/hotrothemtieungao.lua");
--dofile("script/global/tieungao/huyvatpham.lua");
--dofile("script/global/tieungao/dotim.lua");
end

function tnwebsite()
Say("Chµo mõng b¹n ®Õn víi thÕ giíi Game Vâ L©m G7VN, +Facebook: https://www.facebook.com/volamg7vn +Trang chñ: http://g7vn.net", 0)
AddGlobalCountNews("Chµo mõng b¹n ®Õn víi thÕ giíi Game Vâ L©m G7VN, +Facebook: https://www.facebook.com/volamg7vn +Trang chñ: http://g7vn.net")
myreloadfile()
end;




