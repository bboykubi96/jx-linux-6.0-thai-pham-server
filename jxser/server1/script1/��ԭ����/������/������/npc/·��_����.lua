-- script viet hoa By http://tranhba.com  Thi�u L�m ng��i �i ���ng NPC huy�n gi�c 30 c�p nhi�m v� 
-- script viet hoa By http://tranhba.com  by#Dan_Deng(2003-08-01) 

Include("\\script\\global\\skills_table.lua")

function main() 
UTask_sl = GetTask(7) 
if (GetSeries() == 0) and (GetFaction() == "shaolin") then 
		if (UTask_sl == 30*256+20) and (HaveItem(27) == 1) then		-- script viet hoa By http://tranhba.com 30���������
Talk(2,"L30_prise","S� th�c , th�p l�m ��ch nh�ng ��ch nh�n kia nguy�n lai l� kim qu�c ��ch tr�o nha , b�n h� len l�n ��nh c�p b�n m�n ��ch # B�n nh��c ba la m�t nghi ng� tr�i qua # , b�t qu� �� t� �� �em kinh th� �o�t l�i t�i , xin/m�i s� th�c xem qua .","A di �� ph�t , may nh� ng��i k�p th�i ph�t hi�n �m m�u c�a b�n h� , �o�t l�i kinh th� , n�u kh�ng h�u qu� thi�t t��ng kh�ng ch�u n�i , l�n n�y ng��i l�p c�ng l�n , b�n t�a li�n th�ng ng��i v� ba m��i c�p �� t� �i !") 
elseif ((UTask_sl == 30*256) and (GetLevel() >= 30)) then -- script viet hoa By http://tranhba.com 30 c�p nhi�m v� 
Say("M�i v�a r�i c� t� t�ng b�o l�i c�o , n�i l� � th�p l�m ph� c�n ph�t hi�n m�t �t h�nh tung qu� b� ng��i c�a , kh�ng bi�t c� g� b�t ch�nh � �� , ng��i nguy�n � �i th�p l�m xem m�t ch�t sao ?",2,"Nguy�n � /L30_get_yes","Ta c�n c� nh�ng chuy�n kh�c . /L30_get_no") 
else -- script viet hoa By http://tranhba.com  th��ng quy ��i tho�i 
Talk(1,"","Kim qu�c �em ch�ng ta ch�ng ta nh�n th�nh c�i �inh trong m�t , m�y l�n ph�i ng��i t�i Thi�u L�m qu�y r�i .") 
end 
else 
Talk(1,"","Ch�ng ta Thi�u L�m v� c�ng t� x�a li�n ���ng ���ng ch�nh ch�nh , t� bi vi ho�i .") 
end 
end; 

function L30_get_yes() 
Talk(1,"","Qu� c�c kh� ng��i , ph�i c�n th�n !") 
	SetTask(7,30*256+10)
AddNote("# �i th�p l�m �i�u tra ng��i kh� nghi . ") 
Msg2Player("# �i th�p l�m �i�u tra ng��i kh� nghi . ") 
end; 

function L30_get_no() 
end; 

function L30_prise() 
Talk(1,"","�a t� s� th�c !") 
DelItem(27) 
SetTask(7,40*256) 
SetRank(4) 
-- script viet hoa By http://tranhba.com  AddMagic(16) 
add_sl(40) -- script viet hoa By http://tranhba.com  �i�u d�ng skills_table.lua trung ��ch h�m s� , tham s� v� h�c ���c bao nhi�u c�p k� n�ng . 
AddNote("B�t ���c B�n nh��c ba la m�t nghi ng� tr�i qua , th�ng l�m h� ph�p La H�n . ") 
Msg2Player("Ch�c m�ng ng��i th�ng l�m h� ph�p La H�n , h�c ���c La h�n tr�n . ") 
end; 
