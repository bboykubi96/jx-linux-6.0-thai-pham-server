IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\awardtemplet.lua");

--==================Script dev by MCTeam=============================

Include("\\script\\global\\tieungao\\hotrothemtieungao.lua");
Include("\\script\\global\\tieungao\\huyvatpham.lua");
Include("\\script\\global\\tieungao\\dotim.lua");
Include("\\script\\global\\tieungao\\testgame.lua")
Include("\\script\\global\\tieungao\\lenhbaihotro.lua")

function testevent()
	tbAwardList= 
	{
		{szName="Trai Xoai",tbProp={6,1,30371,1,0,0},nExpiredTime=20180305,nCount=500},
		{szName="Mam ngu qua",tbProp={6,1,30375,1,0,0},nExpiredTime=20180305,nCount=500},
		{szName="Banh chung dac biet",tbProp={6,1,30376,1,0,0},nExpiredTime=20180305,nCount=500},
	} 
	tbAwardTemplet:Give(tbAwardList, 1, {"TestEventTetND", "TestEventTetND"})
end

function NhanThanHanhPhu()
	AddItem(6,1,1266,1,0,0)
end

function main()	
	
	--dofile("script/global/g7vn/testg7vn.lua");

--do Say("Ch�c n�ng t�m ��ng") return end

local tbOpt = {}
tinsert(tbOpt,"Nh�n th�nh h�nh ph� ./NhanThanHanhPhu")
tinsert(tbOpt,"L�y th�y tinh +  tinh h�ng b�o th�ch./thuytinhth")
tinsert(tbOpt,"Nh�n c�p + ��i Th�nh  ./g7nhandiem")
tinsert(tbOpt,"Nh�n trang b� ./g7nhantrangbi")
tinsert(tbOpt,"Nh�n ti�n ./g7nhantien")
tinsert(tbOpt,"Nh�n v�t ph�m ./g7nhanvatpham")
tinsert(tbOpt,"Nh�n Ng�a ./layngua")
tinsert(tbOpt,"H� tr� h�c v� c�ng 6x./gmhotroskill6x")
tinsert(tbOpt,"H� tr� h�c v� c�ng 9x./gmhotroskill9x")
tinsert(tbOpt,"Nh�n b� k�p 90 ./NhanBiKip90Test")
tinsert(tbOpt,"Nh�n m�u Ng� Hoa Ng�c L� Ho�n ./g7testhotromau")
tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
Say("Ch�o m�ng b�n ��n v�i Game T�n V� L�m CTC. Server s� �ua top test v�i nhi�u ph�n qu� h�p d�n v�o 10h 23-02-2019, +Fanpage: fb.com/vltruyenkycongthanhchien/ +Trang ch�: http://vltruyenky.net. M�y ch� s� ch�nh th�c OPEN v�o l�c <color=red>10H ng�y 23-02-2019.<color>", getn(tbOpt), tbOpt)
end

function g7nhandiem()
local tbOpt = {}
tinsert(tbOpt,"�i�m kinh nghi�m ./gmcap150")
tinsert(tbOpt,"�i�m Danh v�ng, Ph�c duy�n  ./danhvongphucduyen")
tinsert(tbOpt,"T�y �i�m ./clear_attibute_point")
tinsert(tbOpt,"L�nh ��o  ./lanhdao")
tinsert(tbOpt,"C�ng hi�n  ./conghien")	
tinsert(tbOpt,"�i�u ki�n khai s�ng bang h�i ./gmlapbanghoi")
tinsert(tbOpt,"K� n�ng 120 ./gmkynang120")
tinsert(tbOpt,"��i th�nh b� k�p 90 ./gmkynang90")
tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
Say("H� tr� Test Game:", getn(tbOpt), tbOpt)
end



function g7nhantrangbi()

if CalcFreeItemCellCount() < 20 then
	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
	return 1;
end

local tbOpt = {}
tinsert(tbOpt,"Nh�n Trang b� Xanh ./laydoxanh")
--tinsert(tbOpt,"Nh�n Trang b� T�m ./nhando6dong")
--tinsert(tbOpt,"Nh�n Trang b� Ho�ng Kim M�n Ph�i ./hoangkimmonphai")
--tinsert(tbOpt,"Nh�n V� danh gi�i ch� ./gmvodanhgioichi")
tinsert(tbOpt,"Nh�n Trang b� Hi�p c�t ./gmhiepcot")
tinsert(tbOpt,"Nh�n Trang b� Nhu t�nh ./gmnhutinh")
--tinsert(tbOpt,"Nh�n Trang b� An Bang Ho�n M� ./gmtbanbanghoanmy")
--tinsert(tbOpt,"Nh�n nguy�n li�u An Bang Ho�n M� ./gmnguyenlieuabhm")
tinsert(tbOpt,"Nh�n Trang b� An Bang ./gmtbanbang")
tinsert(tbOpt,"Nh�n Trang b� ��nh qu�c ./gmtbdinhquoc")
--tinsert(tbOpt,"Nh�n Trang b� ��ng S�t ./gmdongsat")
--tinsert(tbOpt,"Nh�n Trang b� H�ng �nh ./gmhonganh")
tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
Say("H� tr� Test Game:", getn(tbOpt), tbOpt)
end

function g7nhantien()

if CalcFreeItemCellCount() < 20 then
	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 200 � tr�ng r�i h�y nh�n.",0);
	return 1;
end

local tbOpt = {}
--tinsert(tbOpt,"Nh�n h� tr� 1000 xu ./gmnhan100xu")
tinsert(tbOpt,"Nh�n h� tr� 20k v�n ./gmnhan50kvan")
tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
Say("H� tr� Test Game:", getn(tbOpt), tbOpt)
end

function g7nhanvatpham()

if CalcFreeItemCellCount() < 20 then
	Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y nh�n.",0);
	return 1;
end

local tbOpt = {}
tinsert(tbOpt,"Nh�n Than Hanh Phu ./NhanThanHanhPhu")
tinsert(tbOpt,"Phi t�c l�nh b�i ./phitoclb")
--tinsert(tbOpt,"Nh�n l�nh b�i T�n Th� ./gmlenhbaitanthu")
tinsert(tbOpt,"V�t ph�m h� tr� bang h�i ./gmhotrobanghoi")
tinsert(tbOpt,"Nh�n 500 c�i ng� h�nh k� th�ch./gmnhannguhanhkythach")
tinsert(tbOpt,"Nh�n Ti�n Th�o L� ��c bi�t ./tienthaolodacbiet")
--tinsert(tbOpt,"Nh�n Trang s�c, phi phong, �n ./fifong")
--tinsert(tbOpt,"Nh�n M�t n� V��ng Gi� ./g7vnmatnavuonggia")
tinsert(tbOpt,"Nh�n Nh�t K� C�n Kh�n Ph� ./g7vnnhatkycankhon")
tinsert(tbOpt,"Nh�n Nh�c v��ng ki�m ./gmnhacvuongkiem")
--tinsert(tbOpt,"Nh�n Khi�u chi�n l�nh ./gmlaykhieuchienlenh")
--tinsert(tbOpt,"Nh�n M�t �� th�n b� ./gmlaymatdothanbi")
--tinsert(tbOpt,"Nh�n L�nh b�i g�i boss ./lenhbaigoiboss")
--tinsert(tbOpt,"T�n v�t m�n ph�i ./g7tinvatmonphai")
tinsert(tbOpt,"V� L�m M�t T�ch, T�y T�y Kinh ./g7volammattichttk")
--tinsert(tbOpt,"Nguy�n Li�u �p �� HKMP ./g7NLEpHKMP")
--tinsert(tbOpt,"Nguy�n Li�u Test B�c ��u Truy�n C�ng ./testbacdautruyencong")
--tinsert(tbOpt,"T�ng 500 tri�u kinh nghi�m ./#g7tangdiemkn(500000000)")
tinsert(tbOpt,"K�t th�c ��i tho�i ./Quit")
Say("H� tr� Test Game:", getn(tbOpt), tbOpt)
end

function phitoclb()
tbAwardTemplet:GiveAwardByList({{szName = "Gi� ��ng hoa", tbProp ={ 6, 1, 190, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "Phi T�c"))
tbAwardTemplet:GiveAwardByList({{szName = "Gi� ��ng hoa", tbProp ={ 6, 1, 157, 1, 1, 0, 0, 0}, nRate = 100, nCount=50}}, format("Get %s", "Phi T�c"))
end

function thuytinhth()
	for i=1,6 do
		AddEventItem(353)
	end
	AddEventItem(238)
	AddEventItem(239)
	AddEventItem(240)

end