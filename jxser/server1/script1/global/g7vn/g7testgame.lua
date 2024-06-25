IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\awardtemplet.lua");

--==================Script dev by MCTeam=============================
function main()	
--myreloadfile()
local tbOpt = {}
tinsert(tbOpt,"NhËn lÖnh bµi t©n thñ./gmlenhbaitanthu")
tinsert(tbOpt,"NhËn ®iÓm kinh nghiÖm ./gmcap150")
tinsert(tbOpt,"NhËn ®iÒu kiÖn khai s¸ng bang héi ./gmlapbanghoi")
tinsert(tbOpt,"NhËn hç trî 1000 xu ./gmnhan100xu")
tinsert(tbOpt,"NhËn hç trî 20k v¹n ./gmnhan50kvan")
tinsert(tbOpt,"LÊy ngùa ./gmlayngua")
tinsert(tbOpt,"NhËn trang bŞ xanh ./laydoxanh")
tinsert(tbOpt,"§æi mµu PK ./doimau")
tinsert(tbOpt,"Huû vËt phÈm ./DisposeItem")
tinsert(tbOpt,"Trang sau ./testtrang1")
tinsert(tbOpt,"KÕt thóc ®èi tho¹i ./Quit")
Say("Hç trî t©n AlphaTest:  Thêi Test ®Õn 10h00 10-06-2018. B¾t ®Çu OPEN   20h00 16-06-2018. chi tiÕt xem t¹i Trang chñ http://jxctc.net", getn(tbOpt), tbOpt)
end

function testtrang1()
local tbOpt = {}
tinsert(tbOpt,"Trang tr­íc ./main")
tinsert(tbOpt,"NhËn ®iÓm PD,LD,DV,CH ./gmnhandiem")
tinsert(tbOpt,"NhËn trang bŞ ®éng s¸t ./gmdongsat")
tinsert(tbOpt,"NhËn trang bŞ hång ¶nh ./gmhonganh")
tinsert(tbOpt,"NhËn tiªn th¶o lé ®Æc biÖt ./tienthaolodacbiet")
tinsert(tbOpt,"Bµn nhuîc t©m kinh ./gmbntk")
tinsert(tbOpt,"Kü n¨ng 120 ./gmkynang120")
tinsert(tbOpt,"Kü n¨ng 90 ./gmkynang90")
--tinsert(tbOpt,"Trang bŞ HKMP ./hoangkimmonphai")
tinsert(tbOpt,"Trang sau ./testtrang2")
tinsert(tbOpt,"KÕt thóc ®èi tho¹i./Quit")
Say("Hç trî", getn(tbOpt), tbOpt)
end

function testtrang2()
local tbOpt = {}
tinsert(tbOpt,"Trang tr­íc ./testtrang1")
tinsert(tbOpt,"NhËn s¸t thñ gi¶n ./g7satthugian")
tinsert(tbOpt,"NhËn trang bŞ An Bang ./gmtbanbang")
tinsert(tbOpt,"NhËn trang bŞ HiÖp cèt ./gmhiepcot")
tinsert(tbOpt,"NhËn trang bŞ Nhu t×nh ./gmnhutinh")
tinsert(tbOpt,"NhËn trang bŞ §Şnh quèc ./gmtbdinhquoc")
tinsert(tbOpt,"Tu luyÖn tuyÖt häc vâ c«ng ./g7bikiphoacongdaiphap")
tinsert(tbOpt,"NhËn nh¹c v­¬ng kiÕm ./gmnhacvuongkiem")
--tinsert(tbOpt,"Trang bŞ tİm ./nhando6dong")
tinsert(tbOpt,"Trang sau ./testtrang3")
tinsert(tbOpt,"KÕt thóc ®èi tho¹i./Quit")
Say("Hç trî", getn(tbOpt), tbOpt)
end

function testtrang3()
local tbOpt = {}
tinsert(tbOpt,"Trang tr­íc ./testtrang2")
--tinsert(tbOpt,"NhËn khiªu chiÕn lÖnh ./gmlaykhieuchienlenh")
--tinsert(tbOpt,"NhËn MËt ®å thÇn bİ ./gmlaymatdothanbi")
--tinsert(tbOpt,"Tİn vËt m«n ph¸i ./g7tinvatmonphai")
--tinsert(tbOpt,"Trang søc, phi phong, Ên ./fifong")
--tinsert(tbOpt,"V« danh giíi chØ ./gmvodanhgioichi")
--tinsert(tbOpt,"An Bang HM ./gmtbanbanghoanmy")
tinsert(tbOpt,"Trang sau ./testtrang4")
tinsert(tbOpt,"KÕt thóc ®èi tho¹i./Quit")
Say("Hç trî", getn(tbOpt), tbOpt)
end

function testtrang4()
local tbOpt = {}
tinsert(tbOpt,"Trang tr­íc ./testtrang3")
--tinsert(tbOpt,"LÖnh bµi gäi boss ./lenhbaigoiboss")
tinsert(tbOpt,"KÕt thóc ®èi tho¹i./Quit")
Say("Hç trî", getn(tbOpt), tbOpt)
end

Include("\\script\\global\\Â·ÈË_Àñ¹Ù.lua");
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua");
Include("\\script\\global\\tieungao\\huyvatpham.lua");
Include("\\script\\global\\tieungao\\dotim.lua");

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
--gmlenhbai();
end;