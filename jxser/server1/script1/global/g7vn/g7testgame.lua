IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\awardtemplet.lua");

--==================Script dev by MCTeam=============================
function main()	
--myreloadfile()
local tbOpt = {}
tinsert(tbOpt,"Nh�n l�nh b�i t�n th�./gmlenhbaitanthu")
tinsert(tbOpt,"Nh�n �i�m kinh nghi�m ./gmcap150")
tinsert(tbOpt,"Nh�n �i�u ki�n khai s�ng bang h�i ./gmlapbanghoi")
tinsert(tbOpt,"Nh�n h� tr� 1000 xu ./gmnhan100xu")
tinsert(tbOpt,"Nh�n h� tr� 20k v�n ./gmnhan50kvan")
tinsert(tbOpt,"L�y ng�a ./gmlayngua")
tinsert(tbOpt,"Nh�n trang b� xanh ./laydoxanh")
tinsert(tbOpt,"��i m�u PK ./doimau")
tinsert(tbOpt,"Hu� v�t ph�m ./DisposeItem")
tinsert(tbOpt,"Trang sau ./testtrang1")
tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
Say("H� tr� t�n AlphaTest:  Th�i Test ��n 10h00 10-06-2018. B�t ��u OPEN   20h00 16-06-2018. chi ti�t xem t�i Trang ch� http://jxctc.net", getn(tbOpt), tbOpt)
end

function testtrang1()
local tbOpt = {}
tinsert(tbOpt,"Trang tr��c ./main")
tinsert(tbOpt,"Nh�n �i�m PD,LD,DV,CH ./gmnhandiem")
tinsert(tbOpt,"Nh�n trang b� ��ng s�t ./gmdongsat")
tinsert(tbOpt,"Nh�n trang b� h�ng �nh ./gmhonganh")
tinsert(tbOpt,"Nh�n ti�n th�o l� ��c bi�t ./tienthaolodacbiet")
tinsert(tbOpt,"B�n nhu�c t�m kinh ./gmbntk")
tinsert(tbOpt,"K� n�ng 120 ./gmkynang120")
tinsert(tbOpt,"K� n�ng 90 ./gmkynang90")
--tinsert(tbOpt,"Trang b� HKMP ./hoangkimmonphai")
tinsert(tbOpt,"Trang sau ./testtrang2")
tinsert(tbOpt,"K�t th�c ��i tho�i./Quit")
Say("H� tr�", getn(tbOpt), tbOpt)
end

function testtrang2()
local tbOpt = {}
tinsert(tbOpt,"Trang tr��c ./testtrang1")
tinsert(tbOpt,"Nh�n s�t th� gi�n ./g7satthugian")
tinsert(tbOpt,"Nh�n trang b� An Bang ./gmtbanbang")
tinsert(tbOpt,"Nh�n trang b� Hi�p c�t ./gmhiepcot")
tinsert(tbOpt,"Nh�n trang b� Nhu t�nh ./gmnhutinh")
tinsert(tbOpt,"Nh�n trang b� ��nh qu�c ./gmtbdinhquoc")
tinsert(tbOpt,"Tu luy�n tuy�t h�c v� c�ng ./g7bikiphoacongdaiphap")
tinsert(tbOpt,"Nh�n nh�c v��ng ki�m ./gmnhacvuongkiem")
--tinsert(tbOpt,"Trang b� t�m ./nhando6dong")
tinsert(tbOpt,"Trang sau ./testtrang3")
tinsert(tbOpt,"K�t th�c ��i tho�i./Quit")
Say("H� tr�", getn(tbOpt), tbOpt)
end

function testtrang3()
local tbOpt = {}
tinsert(tbOpt,"Trang tr��c ./testtrang2")
--tinsert(tbOpt,"Nh�n khi�u chi�n l�nh ./gmlaykhieuchienlenh")
--tinsert(tbOpt,"Nh�n M�t �� th�n b� ./gmlaymatdothanbi")
--tinsert(tbOpt,"T�n v�t m�n ph�i ./g7tinvatmonphai")
--tinsert(tbOpt,"Trang s�c, phi phong, �n ./fifong")
--tinsert(tbOpt,"V� danh gi�i ch� ./gmvodanhgioichi")
--tinsert(tbOpt,"An Bang HM ./gmtbanbanghoanmy")
tinsert(tbOpt,"Trang sau ./testtrang4")
tinsert(tbOpt,"K�t th�c ��i tho�i./Quit")
Say("H� tr�", getn(tbOpt), tbOpt)
end

function testtrang4()
local tbOpt = {}
tinsert(tbOpt,"Trang tr��c ./testtrang3")
--tinsert(tbOpt,"L�nh b�i g�i boss ./lenhbaigoiboss")
tinsert(tbOpt,"K�t th�c ��i tho�i./Quit")
Say("H� tr�", getn(tbOpt), tbOpt)
end

Include("\\script\\global\\·��_���.lua");
Include("\\script\\global\\tieungao\\hotrothemtieungao.lua");
Include("\\script\\global\\tieungao\\huyvatpham.lua");
Include("\\script\\global\\tieungao\\dotim.lua");

function myreloadfile()
--dofile("script/global/·��_���.lua");
--dofile("script/global/tieungao/hotrothemtieungao.lua");
--dofile("script/global/tieungao/huyvatpham.lua");
--dofile("script/global/tieungao/dotim.lua");
end

function tnwebsite()
Say("Ch�o m�ng b�n ��n v�i th� gi�i Game V� L�m G7VN, +Facebook: https://www.facebook.com/volamg7vn +Trang ch�: http://g7vn.net", 0)
AddGlobalCountNews("Ch�o m�ng b�n ��n v�i th� gi�i Game V� L�m G7VN, +Facebook: https://www.facebook.com/volamg7vn +Trang ch�: http://g7vn.net")
myreloadfile()
--gmlenhbai();
end;