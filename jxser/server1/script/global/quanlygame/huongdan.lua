IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("BATTLE")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")
Include("\\script\\dailogsys\\dailogsay.lua");

function main1()
dofile("script/global/quanlygame/huongdan.lua");
if GetPlayerCount() > 50 then
menu2()
else
menu1()
end
end


function main()
dofile("script/global/quanlygame/huongdan.lua");
	local bilTbOp = {}	


    tinsert(bilTbOp, "Danh S�ch Ho�t ��ng/danhsachhoatdong")
--	tinsert(bilTbOp, "H��ng D�n Ng��i Ch�i/huongdanthamgia")
--	tinsert(bilTbOp, "V�t Ph�m T�m N�i ��u/vatphamtimnoidau")
	--tinsert(bilTbOp, "M�nh Ho�ng Kim L�m G�/manhhoangkim")
	--tinsert(bilTbOp, "Mu�n Gi�u Nh�t Game/giaunhatgame")
	----tinsert(bilTbOp, "Oppen Bao L�u R�i/oppenbaolau")
	--tinsert(bilTbOp, "L�m Sao �� Acc M�nh/accmanh")
	tinsert(bilTbOp, "K�t th�c ��i tho�i/bil.OnCancel")
	Say("<color=green>Trang Ch�: <color=pink> /\n<color=green>Fanpage: <color=pink>Facebook.com/vltruyenkycongthanhchien/\n<color=green>Th�o Lu�n : <color=pink>Facebook.com/groups/groups/742996832826455/", getn(bilTbOp), bilTbOp)
end

function danhsachhoatdong()
	local bilTbOp = {}	
    tinsert(bilTbOp, "L�i ��i Lo�n Chi�n/loidailoanchien")
	tinsert(bilTbOp, "T�ng Kim ��i Chi�n/tongkimdaichien")
	tinsert(bilTbOp, "S�n H�t Huy Ho�ng/sanhathoangkim")
		tinsert(bilTbOp, "Tr�ng Kh�i Ho�ng/trongkhaihoang")

	--tinsert(bilTbOp, "Thuy�n Phong L�ng ��/thuyenphonglangdo")
	--tinsert(bilTbOp, "V��t �i Nhi�p Th� Tr�n/vuotai")
	--tinsert(bilTbOp, "��u Ng�u Xu�n Phong ��o/daunguu")
	tinsert(bilTbOp, "�ua Ng�a Sa M�c/duanguasamac")
	tinsert(bilTbOp, "Boss ��i Ho�ng Kim/bosshoangkim")
	tinsert(bilTbOp, "Boss Ti�u Ho�ng Kim/bosshoangkimtieu")
	--tinsert(bilTbOp, "Ch�i B�u Cua C� C�p/choibaucua")
	--tinsert(bilTbOp, "Vi�m �� B�o T�ng/viemde")
	--tinsert(bilTbOp, "C�ng Th�nh Chi�n/congthanhchien")
	--tinsert(bilTbOp, "Thi�n T� ��i Chi�n/thientu")
	--tinsert(bilTbOp, "V�n Ti�u Long M�n/vantieu")
	tinsert(bilTbOp, "C�u C� D��ng Ch�u/cauca")
	tinsert(bilTbOp, "K�t th�c ��i tho�i/bil.OnCancel")
	Say("<color=green>Trang Ch�: <color=pink> /\n<color=green>Fanpage: <color=pink>Facebook.com/\n<color=green>Th�o Lu�n : <color=pink>Facebook.com/groups", getn(bilTbOp), bilTbOp)
end

function huongdanthamgia()
	local bilTbOp = {}	
	tinsert(bilTbOp, "B�n Skill N�i Hay Ngo�i/noingoaicong")
    tinsert(bilTbOp, "Nh�p Code T�n Th�/nhapcode")
    tinsert(bilTbOp, "Mua K� Tr�n D� B�o/muakytrandibao")
	tinsert(bilTbOp, "Chuy�n Ph�i L�y Skill/chuyenphai")
	tinsert(bilTbOp, "T� C�o Post �i�m/tocao")
	tinsert(bilTbOp, "T� Th� K�o �n Xu/tythivsnhau")
	tinsert(bilTbOp, "Ch�i O�n T� T�/oantuty")
		tinsert(bilTbOp, "Ch�i �� X�c X�c/doxucxac")
	tinsert(bilTbOp, "V�ng S�ng � ��u/vongsang")
	tinsert(bilTbOp, "K�t th�c ��i tho�i/bil.OnCancel")
	Say("<color=green>Ch� � c�c nh�n s�: <color=cyan>C�c nh�n s� c� th�c m�c g� th�m c� th� li�n h� S�T c�a GM ho�c li�n h� Fanpage.\nHi�n t�i gi�i h�n bang h�i t�i server l� : 200 acc.\nC�c nh�n s� mu�n l�p bang h�i th� nh�t thi�t ph�i �� �i�u ki�n tr�n 10 acc tay.", getn(bilTbOp), bilTbOp)
end

function vatphamtimnoidau()
	local bilTbOp = {}	
    tinsert(bilTbOp, "Ho�ng Kim L�nh/muakytrandibao")
    tinsert(bilTbOp, "Nh�t K� C�n Kh�n Ph�/nhatky")
	 tinsert(bilTbOp, "�o Nhu T�nh nb Hi�p C�t/nhutinh")
	tinsert(bilTbOp, "M�t N� Chi�n Tr��ng/matna")
	tinsert(bilTbOp, "Phi�n V� Chi�n M�/phienvu")
	tinsert(bilTbOp, "T�n V�t M�n Ph�i/tinvatne")
	
	tinsert(bilTbOp, "V�ng S�ng L�y ��u/vongsang")
	tinsert(bilTbOp, "Phi T�c L�nh B�i/phitoc")
	tinsert(bilTbOp, "Chi�n M� B�n Ti�u/bontieu")
	tinsert(bilTbOp, "K�t th�c ��i tho�i/bil.OnCancel")
	Say("<color=green>Ch� � c�c nh�n s�: <color=cyan>Sau ��y l� c�c v�t ph�m m� c�c b�n th�c m�c kh�ng bi�t t�m � ��u.\nHi�n t�i gi�i h�n bang h�i t�i server l� : 150 acc.\nC�c nh�n s� mu�n l�p bang h�i th� nh�t thi�t ph�i �� �i�u ki�n tr�n 10 acc tay.", getn(bilTbOp), bilTbOp)
end


function loidailoanchien()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>Th�i gian : 22h h�ng ng�y sau khi k�t th�c t�ng kim,ch� nh�ng acc tham gia t�ng kim cao c�p m�i ���c tham gia", getn(bilTbOp), bilTbOp)
end

function tongkimdaichien()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>Th�i gian : 13h - 15h- 17h- 19h - 21h - Tr�n 13h v� 21h c� th��ng ��c bi�t", getn(bilTbOp), bilTbOp)
end

function sanhathoangkim()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>Th�i gian : 12h h�ng ng�y t�i ��u tr��ng sinh t�", getn(bilTbOp), bilTbOp)
end

function thuyenphonglangdo()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white> t�t c� gi� ch�n ri�ng 2-16-20-22h l� chuy�n c� ��i th�y t�c.\n<color=cyan>Tham gia: <color=white>Ch� cho ph�p �i 1 b�n 1 c� th� c�u �� s�t.\n<color=pink>Ph�n th��ng:<color=white> ho�n th�nh ��n b� b�c - ti�u di�t th�y t�c 1 m�nh HKMP + 1 th�y tinh - ti�u di�t ��i th�y t�c 2 m�nh HKMP + TTK", getn(bilTbOp), bilTbOp)
end

function vuotai()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>t�t c� gi� l� tr� 21h.\n<color=cyan>Tham gia: <color=white>t�i nhi�p th� tr�n.\n<color=pink>Ph�n th��ng:<color=white> ho�n th�nh v��t �i x�c xu�t ra TTK + VLMT  + Th�y Tinh", getn(bilTbOp), bilTbOp)
end

function thientu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>21h th� 2 - v�i �i�u ki�n l� ph�i c� 1 bang chi�m l�m an 1 bang chi�m bi�n kinh.N�u 1 bang chi�m 2 th�nh th� th� 2 t�ng kim b�nh th��ng.\n<color=cyan>Tham gia: <color=white>Bang ch� tr��c 21h ph�i qua n�i c�t th��ng th� � L�m An v� Bi�n Kinh nh�n 50 l�nh b�i qu�c chi�n v� ch� nh�n 1 l�n.\n<color=pink>Ph�n th��ng:<color=white> Nh�n t�i 204/198 Ba L�ng Huy�n", getn(bilTbOp), bilTbOp)
end

function duanguasamac()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>Th�i gian :22h30 th� 7 v� ch� nh�t.", getn(bilTbOp), bilTbOp)
end

function bosshoangkim()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>Th�i gian : 19h30 h�ng ng�y", getn(bilTbOp), bilTbOp)
end

function bosshoangkimtieu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>Th�i gian : 12h35 v� 23h05", getn(bilTbOp), bilTbOp)
end

function choibaucua()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : 00-01-02-03-09-10-11-12-14-16-18-20-22 h�ng ng�y.\n<color=cyan>Tham gia: <color=white>B�u Cua ��i Nh�n t�i ba l�ng huy�n.\n<color=pink>Ph�n th��ng:<color=white>th�ng b�u cua x�c xu�t 30 ph�n tr�m nh�n ���c 1 m�nh ho�ng kim ng�u nhi�n v� xu th�ng cu�c.", getn(bilTbOp), bilTbOp)
end

function vantieu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : t�t c� c�c gi�.\n<color=cyan>Tham gia: NPC Long M�n Ti�u C�c 201/200 Ba L�ng Huy�n �i�u ki�n ph�i c� h� ti�u l�nh tham gia t�ng kim c� ���c<color=white>.\n<color=pink>Ph�n th��ng:<color=white>v�n th�nh c�ng nh�n 1 m�nh HKMP :  v�n th�t b�i t�c b� c��p s� r�i ra h� ti�u l�nh.", getn(bilTbOp), bilTbOp)
end

function viemde()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : 18h30 v� 23h h�ng ng�y.\n<color=cyan>Tham gia: <color=white>B�nh B�nh C� N��ng Bi�n Kinh.\n<color=pink>Ph�n th��ng:<color=white>Team th�ng cu�c nh�n 1 VLMT tr�n 1 ng��i..", getn(bilTbOp), bilTbOp)
end

function trongkhaihoang()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>Th�i gian:20h10 ng�y th� 7..", getn(bilTbOp), bilTbOp)
end

function daunguu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : 20h30 c�c ng�y th� 3-5-7.\n<color=cyan>Tham gia: <color=white>L� Quan B�o Danh.\n<color=pink>Ph�n th��ng:<color=white>Ng�u sinh t�n ho�c ng��i sinh t�n cu�i c�ng nh�n vlmt ttk.Khi ng�u ch�t ng��i ch�i nh�t b�o r��ng kim ng�u s� c� c� h�i nh�n ���c xu..", getn(bilTbOp), bilTbOp)
end

function congthanhchien()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>C�c t�nh n�ng m�i c�n l�i s� ���c update li�n t�c trong v�i ng�y t�i:\n<color=green>Th�i gian:<color=white>Th�i gian ��nh v�o l�c : 20h30 c�c ng�y th� 6.\n<color=cyan>Tham gia: bang ch� b�o danh t�i ti�p ��u c�ng th�nh chi�n chi ph� 100 v�n th�i gian b�o danh l� tr��c 19h30 n�u sau 19h30 coi nh� ko th� b�o danh.Gi�i h�n acc 1 bang c�ng th�nh l� 150 acc qu� s� l��ng kh�ng th� v�o.<color=white>.\n<color=pink>Ph�n th��ng: <color=white>Nh�n t�i 204/198 Ba L�ng Huy�n.", getn(bilTbOp), bilTbOp)
end


function nhapcode()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n NPC:<color=white>Qu� T�ng GiftCode.\n<color=cyan>V� Tr�: <color=white>202/200 Ba L�ng Huy�n.\n<color=pink>C�ch Th�c: <color=white>nh�p v�o npc n� s� cho 1 �o�n s� ng�u nhi�n trong 60 gi�y n�u kh�ng nh�p �o�n �� th� n� s� x�a m�t v� b�n ph�i xin n� l�i s� kh�c.N�u nh�p sai th� xem l�i s� ��ng ch�a ho�c s� b� n� reset l�i s� kh�c ch�a b�ng c�ch nh�p v�o xin l�i", getn(bilTbOp), bilTbOp)
end

function muakytrandibao()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n NPC:<color=white>M� Icon B�o V�t K� Tr�n C�c.\n<color=cyan>V� Tr�: <color=white>T�t c�c th�nh th�.\n<color=pink>C�ch Th�c: <color=white>Trong shop b�o v�t c� r�t nhi�u th� th�ch c�i g� th� s�t th�i.Ri�ng c� c�i Ho�ng Kim L�nh c�i n�y r�t h�u �ch l� khi �eo v�o s� kich h�t �� tr�n ng��i.L�u � �eo v�o th� s� ko l�y ra ���c.Mu�n thay ��i c�i kh�c th� b� c�i kh�c v�o g��ng v� lick chu�t ph�i v�o c�i trong g��ng n� s� thay th� c�i �ang �eo tr�n ng��i.", getn(bilTbOp), bilTbOp)
end

function chuyenphai()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n NPC:<color=white>10 NPC M�n Ph�i (c�i con m� b�n gia nh�p m�n ph�i �).\n<color=cyan>V� Tr�: <color=white>Xung Quanh Ba L�ng Huy�n.\n<color=pink>C�ch Th�c: <color=white>Lick v�o b�t k� con npc c�a ph�i n�o th� b�n c�ng chuy�n m�n ph�i ���c c�n 1 t�n v�t mua t�i shop t�ng kim ho�t tham gia ho�t ��ng.", getn(bilTbOp), bilTbOp)
end

function doigioitinh()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n NPC:<color=white>H� Tr� T�n Th�.\n<color=cyan>V� Tr�: <color=white>202/199 Ba L�ng Huy�n.\n<color=pink>C�ch Th�c: <color=white>Lick v�o npc ch�n d�ng ��i ngo�i h�nh trang b� l� s� th�y ��i gi�i t�nh.", getn(bilTbOp), bilTbOp)
end

function tocao()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>T�n Th� Kim B�i.\n<color=cyan>V� Tr�: <color=white>Trong T�ng Kim.\n<color=pink>C�ch Th�c: <color=white>N�u th�y ai �� post �i�m th� b�n c� th� b�t l�nh b�i t�n th� l�n t� c�o ng��i �� n�u s� ng��i ��ng � nhi�u h�n s� ng��i t� ch�i th� h�n s� b� kick ra v� kh�ng th� v�o l�i..", getn(bilTbOp), bilTbOp)
end

function nhutinh()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>Nhu T�nh C�n Qu�c Ngh� Th��ng - Hi�p C�t T�nh � K�t.\n<color=cyan>V� Tr�: <color=white>��nh Boss ��i Ho�ng Kim r�i ra.\n<color=pink>C�ch Th�c: <color=white>�eo v�o ���c l�n 1 KNVC..- KTC", getn(bilTbOp), bilTbOp)
end

function tythivsnhau()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n NPC:<color=white>L�i ��i Th�ch ��u.\n<color=cyan>V� Tr�: <color=white>195/202 Ba L�ng Huy�n.\n<color=pink>C�ch Th�c: <color=white>N�u c� ai �� th�ch ��u v�i b�n ��i �n xu th� b�n v� h�n pt v�i nhau.Xong ai ch� pt s� ��a ra s� ti�n cu�c n�u b�n th�y ok th� ��ng � v� v�n solo ���c t�nh sau �� 2 b�n v�o l�i ��i b�n n�o ��nh th�ng s� ���c �m h�t ti�n.C�n nh�ng ng��i b�n ngo�i t�c ng��i xem n�u mu�n �� k�o v�i nhau th� ng��i xem c� th� pt v�i nhau v� ch�n ng��i m�nh b�t th�ng n�u th�ng s� h�t h�t", getn(bilTbOp), bilTbOp)
end

function oantuty()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>T�n Th� Kim B�i.\n<color=cyan>V� Tr�: <color=white>trong g��ng k�a pa.\n<color=pink>C�ch Th�c: <color=white>2 ng��i c�n ��nh v�i nhau th� pt nhau sau �� ch� pt d�ng l�nh b�i ch�n d�ng ��nh b�c ch�n o�n t� t� r�i 2 ng��i ��nh.", getn(bilTbOp), bilTbOp)
end

function doxucxac()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>T�n Th� Kim B�i.\n<color=cyan>V� Tr�: <color=white>trong g��ng k�a pa.\n<color=pink>C�ch Th�c: <color=white>t�t c� ng��i n�o ��nh th� pt nhau sau �� ch� pt d�ng l�nh b�i ch�n d�ng ��nh b�c ch�n �� x�c x�c h� th�ng s� �� ng�u nhi�n ai l�n �i�m nh�t h�t h�t ti�n.", getn(bilTbOp), bilTbOp)
end

function nhatky()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>Nh�t K� C�n Kh�n Ph�.\n<color=cyan>V� Tr�: <color=white>mua t�i shop b�o v�t.\n<color=pink>C�ng d�ng: <color=white>s� d�ng s� nh�n ���c 1 KNCV 30 ng�y.", getn(bilTbOp), bilTbOp)
end


function cauca()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=yellow>Th�i gian : 20h t�i c�u D��ng Ch�u", getn(bilTbOp), bilTbOp)
end

function matna()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>M�t N� M�n Ph�i.\n<color=cyan>V� Tr�: <color=white>mua t�i shop t�ng kim.\n<color=pink>C�ng d�ng: <color=white>�eo v�o nhi�u kh�ng t�nh v� l�c tay.", getn(bilTbOp), bilTbOp)
end

function tinvatne()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>T�n V�t M�n Ph�i.\n<color=cyan>V� Tr�: <color=white>mua t�i shop t�ng kim ho�c l� quan.\n<color=pink>C�ng d�ng: <color=white>chuy�n m�n ph�i t�i c�c npc nh�p ph�i xung quanh Ba L�ng Huy�n.", getn(bilTbOp), bilTbOp)
end

function noingoaicong()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>Skill M�n Ph�i:<color=white>N�i V� Ngo�i C�ng.\n<color=cyan>Ch� Th�ch: <color=white>T�t c� c�c ph�i �i�u c�ng n�i c�ng l�n l�c tay.ri�ng ph�i ���ng m�n l� b�n th�n ph�p n�n b�n n�o ch�i ���ng m�n ph�i c�ng th�n ph�p m�i l�n l�c tay ��ng c�ng n�i c�ng.\n<color=pink>K�t lu�n: <color=white>D� ���ng m�n c�ng th�n ph�p nh�ng dame to v� xo�y r�t r�t nh�.", getn(bilTbOp), bilTbOp)
end

function oppenbaolau()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>V� L�m Test Mi�n Ph�:<color=white>M�i v�a oppen ng�y 31/8.\n<color=cyan>Nh�n M�nh: <color=white>�� ��c g�n nh� ngang nhau.\n<color=pink>Ph��ng Tr�m: <color=white>Server �n ��nh l�u d�i th�ch h�p cho c�c anh em y�n t�m ��u t� t�m huy�t v� ti�n b�c v�o game.", getn(bilTbOp), bilTbOp)
end

function matna()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>V�ng S�ng.\n<color=cyan>V� Tr�: <color=white>��t top 1 2 3 t�ng kim - top 1 hoa s�n - top 1 ��n 20 �ua ng�a th� 7. .\n<color=pink>C�ng d�ng: <color=white> t�y t�ng v�ng c� kh�ng t�t c� v� sinh n�i l�c kh�c nhau.", getn(bilTbOp), bilTbOp)
end

function phitoc()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>Phi T�c L�nh B�i.\n<color=cyan>V� Tr�: <color=white>v�o t�ng kim s� c� phi t�c l�nh b�i ho�c nh�n t�i qu�n nhu quan trong tr�n.\n<color=pink>C�ng d�ng: <color=white> ai h�i l� con g�..", getn(bilTbOp), bilTbOp)
end

function bontieu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>B�n Ti�u.\n<color=cyan>V� Tr�: <color=white>Tham gia top t�ng kim 21h h�ng ng�y s� nh�n ���c.\n<color=pink>C�ng d�ng: <color=white> �n c�.", getn(bilTbOp), bilTbOp)
end

function cancauca()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>C�n C�u.\n<color=cyan>V� Tr�: <color=white>Tham gia t�ng kim t�t c� tr�n s� �i�m l�n h�n 3k s� nh�n ���c.\n<color=pink>C�ng d�ng: <color=white> C�u c� ngo�i ao h� ba l�ng huy�n.", getn(bilTbOp), bilTbOp)
end

function phienvu()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>Phi�n V�.\n<color=cyan>V� Tr�: <color=white>Tham gia t�ng kim top 1.\n<color=pink>C�ng d�ng: <color=white> Ch�y n� h�n s� d�ng 1 ng�y.", getn(bilTbOp), bilTbOp)
end

function giaunhatgame()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=cyan>C�u H�i Qu� Hay:<color=white>tr� l�i lu�n.\n<color=green>L� l�t t�m ��n B�u Cua ��i Nh�n v� L� �� Phu Phu �� h�t c�t n� nh�.C�ch nhanh nh�t �� l�m gi�u trong game �� l� ��nh b�c hahaha.", getn(bilTbOp), bilTbOp)
end

function accmanh()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>C�u H�i Nh�c N�ch Th�t:<color=white>tr� l�i lu�n.\n<color=cyan>M�t L�: <color=white>�� La Th�n Ch��ng.<pic=7>\n<color=pink>Hai L�: <color=white>Tr�u Ch� C�y B��ng.<pic=17>\n<color=yellow>Ba L�: <color=white>Hack Acc Th�ng B�n.<pic=26>", getn(bilTbOp), bilTbOp)
end

function manhhoangkim()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>C�u H�i Ng�o ��:<color=white>tr� l�i lu�n.\n<color=cyan>Gom �� 100 m�nh th� �p ���c m�n �� t��ng �ng v�i t�n m�nh v� m�n �� c� th�i h�n v�nh vi�n.", getn(bilTbOp), bilTbOp)
end

function vongsang()
	local bilTbOp = {}	
	tinsert(bilTbOp, "�/no")
	Say("<color=green>T�n V�t Ph�m:<color=white>V�ng S�ng.\n<color=cyan>V� Tr�: <color=white>Tham gia t�ng kim top 1 2 3 v�ng kim c��ng 3 m�u - �ua ng�a v�ng m�u v�ng v� r�ng tr�ng - top 1 l�i ��i lo�n chi�n v�ng hoa bay xung quanh .\n<color=pink>C�ng d�ng: <color=white> C� KTC 5 - 4 - 3 - 2 - 1 v� sinh l�c 1000 - 500 - 400 - 300 - 200.", getn(bilTbOp), bilTbOp)
end