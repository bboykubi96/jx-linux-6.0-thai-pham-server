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
	tinsert(tbSay,"Nh�n l�nh b�i t�n th�./gmlenhbaitanthu")
	tinsert(tbSay,"N�ng l�n 5 c�p ./gmlen5cap")
	tinsert(tbSay,"N�ng l�n 10 c�p ./gmlen10cap")
	tinsert(tbSay,"N�ng l�n 20 c�p ./gmlen20cap")
	tinsert(tbSay,"Trang b� t�m ./nhando6dong")
	tinsert(tbSay,"Trang b� xanh ./laydoxanh")
	tinsert(tbSay,"�i�u ki�n khai s�ng bang h�i ./gmlapbanghoi")
	tinsert(tbSay,"Homepage G7VN ./tnwebsite")
	tinsert(tbSay,"H� tr� h�c v� c�ng 9x ./gmhotroskill")
	tinsert(tbSay,"��i m�u PK ./doimau")
	tinsert(tbSay,"Hu� v�t ph�m ./DisposeItem")
	tinsert(tbSay,"Trang 2 ./g7testtrang2")
	tinsert(tbSay,"K�t th�c ��i tho�i ./Quit")
	Say("H� tr� t�n th�: Ch�o m�ng b�n ��n v�i th� gi�i Game V� L�m G7VN, +Facebook: https://www.facebook.com/volamg7vn +Trang ch�: http://g7vn.net", getn(tbSay), tbSay)
end

function g7testtrang2()
	local tbSay = {}
	tinsert(tbSay,"Trang 1./main")
	tinsert(tbSay,"�i t�y s�n ��o ./ditaysondao")
	tinsert(tbSay,"V� danh gi�i ch� ./gmvodanhgioichi")
	tinsert(tbSay,"Trang s�c, phi phong, �n ./fifong")
	tinsert(tbSay,"Trang b� ��ng s�t ./gmdongsat")
	tinsert(tbSay,"Trang b� h�ng �nh ./gmhonganh")
	tinsert(tbSay,"Ti�n th�o l� ��c bi�t ./tienthaolodacbiet")
	tinsert(tbSay,"B�n nhu�c t�m kinh ./gmbntk")
	tinsert(tbSay,"K� n�ng 120 ./gmkynang120")
	tinsert(tbSay,"K� n�ng 90 ./gmkynang90")
	tinsert(tbSay,"Trang b� HKMP ./hoangkimmonphai")
	tinsert(tbSay,"Trang 3./g7testtrang3")
	tinsert(tbSay,"K�t th�c ��i tho�i ./Quit")
	Say("H� tr� t�n th�", getn(tbSay), tbSay)
end

function g7testtrang3()
	local tbSay = {}
	tinsert(tbSay,"Trang 2./g7testtrang2")
	tinsert(tbSay,"Nh�n 100 xu ./gmnhan100xu")
	tinsert(tbSay,"Nh�n 20 K v�n ./gmnhan50kvan")
	tinsert(tbSay,"Nh�c v��ng ki�m ./gmnhacvuongkiem")
	tinsert(tbSay,"L�y ng�a ./layngua")
	tinsert(tbSay,"��nh qu�c ./gmtbdinhquoc")
	tinsert(tbSay,"An Bang HM ./gmtbanbanghoanmy")
	tinsert(tbSay,"M�t �� th�n b� ./gmlaymatdothanbi")
	tinsert(tbSay,"T�n v�t m�n ph�i ./g7tinvatmonphai")
	tinsert(tbSay,"Trang 4./g7testtrang4")
	tinsert(tbSay,"K�t th�c ��i tho�i ./Quit")
	Say("H� tr� t�n th�", getn(tbSay), tbSay)
end

function g7testtrang4()
	local tbSay = {}
	tinsert(tbSay,"Trang 3./g7testtrang3")
	tinsert(tbSay,"Trang 5./g7testtrang3")
	tinsert(tbSay,"K�t th�c ��i tho�i ./Quit")
	Say("H� tr� t�n th�", getn(tbSay), tbSay)
end

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
end;




