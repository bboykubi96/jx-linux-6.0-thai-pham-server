-- Tham cuu ba lang huyen edit by mcteam
-- script viet hoa By http://tranhba.com  hai h� khu ba l�ng huy�n ng��i �i ���ng 10 tr�m ch�n ��i tho�i 
-- script viet hoa By http://tranhba.com  ba l�ng huy�n tay m�i nhi�m v� # a ph��ng ��ch g� trang 
-- script viet hoa By http://tranhba.com suyu 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-10) 
-- script viet hoa By http://tranhba.com  ch� � # Vi�t Nam ch� c� m�t lo�i nguy�n b�o , t��ng ���ng v�i ch�ng ta ng�n nguy�n b�o , t�n g�i kim nguy�n b�o , ng�n v�n ch� � , bi�n s� d�ng 343 
Include("\\script\\global\\g7vn\\g7configall.lua")

function main()

--dofile("script/������/������/npc/������_·��10���˶Ի�.lua");
--dofile("script/global/g7vn/g7configall.lua")

UTask_world20 = GetTask(48) 
if (CheckStoreBoxState(1) == 0 and UTask_world20 == 1) then -- script viet hoa By http://tranhba.com  ph� h�p mua c�i r��ng ��ch �i�u ki�n , cho ph�p mua ph� th�m tr� v�t r��ng 

if(morongruongthamcuu == 0) then
Say("M� r�ng r��ng t�m th�i ch�a m�.")
return 1;
end

Say("Th�m c�u # g�n nh�t li�n t� ��i th�c n��c v�o m�t nh�m th�n k� b�o r��ng , ch�ng nh�ng c� th� �� cho ng��i � du l�ch giang h� l�c c�t gi� nhi�u h�n v�t ph�m , c�n c� th� v� ng��i cung c�p v�t ph�m phong t�a b�o v� . to�n Trung Nguy�n ch� n�y m�t nh� , tuy�t kh�ng ph�n h�o . kh�ng mu�n kh�ng n�n nh�n nh�n ? ",4,"Xem m�t ch�t /buy_addibox","Mu�n h�i th�m ng��i m�t c�i /task_ring","Li�n quan t�i ph�t tri�n r��ng /box_help","Kh�ng c� h�ng th� /no") 
elseif (UTask_world20 == 1) then 
task_ring() 
elseif (CheckStoreBoxState(1) == 0) then 

if(morongruongthamcuu == 0) then
Say("T�m th�i ch�a m�.")
return 1;
end

Say("Th�m c�u # g�n nh�t li�n t� ��i th�c n��c v�o m�t nh�m th�n k� b�o r��ng , ch�ng nh�ng c� th� �� cho ng��i � du l�ch giang h� l�c c�t gi� nhi�u h�n v�t ph�m , c�n c� th� v� ng��i cung c�p v�t ph�m phong t�a b�o v� . to�n Trung Nguy�n ch� n�y m�t nh� , tuy�t kh�ng ph�n h�o . kh�ng mu�n kh�ng n�n nh�n nh�n ? ",3,"Xem m�t ch�t /buy_addibox", "Li�n quan t�i ph�t tri�n r��ng /box_help","Kh�ng c� h�ng th� /no") 
else 

other_chat() 
end 
end; 

function task_ring() 
UTask_world20 = GetTask(48); 
if (UTask_world20 == 1) then 
Say("Th�m c�u # ng��i c�p cho c� n��ng nh� mua g� trang nha , ta ��y m� ��ch h�ng c�n d� l�i ��ch kh�ng nhi�u l�m , ��y ��i v�i thu�n kim ��ch v�ng tai li�n ti�n nghi �i�m cho ng�i l�u , ch� c�n v�n ng�n hai tr�m l��ng ",2,"Mua /yes","T�n g�u /other_chat","Kh t�n g mua/no") 
end 
end 

function other_chat() 
Talk(3,"","Th�m c�u # ta l� t� T� Xuy�n t�i , d�c theo con ���ng n�y ��o ph� r�t nhi�u , r�t kh�ng y�n �n . ","C�ng kh�ng ngh� ��n k� t� v�o ��ng ��nh h� khu , li�n n�a kh�ng c� g�p g� c�i g� c��ng ��o t�c nh�n , ng��i n�i c� k� qu�i hay kh�ng ? ","Sau khi nghe ng�ng , m�i bi�t th� ra l� n�i n�y ch�n ch�nh qu�n s� ��ch kh�ng ph�i l� quan ph� , m� l� m�t ng��i t�n l� c�i g� � Thi�n v��ng gi�p � ��ch t� ch�c , kh� tr�ch c� th� nh� v�y th�i b�nh ��y #") 
end 

function yes() 
if(GetCash() >= 200)then 
Talk(1,"","Th�m c�u # v�ng tai �� cho ng��i g�i k� li�u , h�ng kho�n hai c�t , ng��i c�m ch�c . ") 
Pay(200); 
AddEventItem(181); 
Msg2Player("Ng��i l�y ���c m�t ��i v�ng tai "); 
AddNote("Ng��i l�y ���c m�t ��i v�ng tai ") 
-- script viet hoa By http://tranhba.com  SetTask(48, 2); 
else 
Talk(1,"","Th�m c�u # ng�i ti�n tr�n ng��i kh�ng �� , quy�n g�p �� ti�n tr� l�i �i . ") 
end 
end; 

function buy_addibox() 
local szMsg = 
{ 
"Th�m c�u # g�n nh�t m�i t� ��i th�c n��c v�o m�t nh�m th�n k� b�o r��ng , ch�ng nh�ng c� th� �� cho ng��i � du l�ch giang h� l�c c�t gi� c�ng nhi�u h�n v�t ph�m , c�n c� th� v� ng��i cung c�p v�t ph�m phong t�a b�o v� . to�n Trung Nguy�n ch� n�y m�t nh� , tuy�t kh�ng ph�n h�o . c� mu�n nh�n m�t ch�t hay kh�ng ? ", -- script viet hoa By http://tranhba.com 1 
"400 ��ng ti�n mua ph�t tri�n r��ng /#buy_addibox_yes(400)", -- script viet hoa By http://tranhba.com 2 
--"200 ��ng ti�n mua ph�t tri�n r��ng /#buy_addibox_yes(200)", -- script viet hoa By http://tranhba.com 3 
"400 v�n l��ng mua ph�t tri�n r��ng /#buy_addibox_yes(400)", -- script viet hoa By http://tranhba.com 3 
"Ta kh�ng c� h�ng th� /no", -- script viet hoa By http://tranhba.com 4 
}; 

local nDate = tonumber(GetLocalDate("%Y%m%d")); 

if (nDate >= 20080202 and nDate <= 20080302) then -- script viet hoa By http://tranhba.com  m�a xu�n ho�t ��ng trong l�c b�n trong 
Say(szMsg[1], 2, szMsg[3], szMsg[4]); 
else 
-- script viet hoa By http://tranhba.com tinhpn 20100803: Patch Request 
-- script viet hoa By http://tranhba.com Say(szMsg[1], 2, szMsg[2], szMsg[4]); 
Say(szMsg[1], 2, szMsg[3], szMsg[4]); 
end; 

end 

function buy_addibox_yes(nNedCount) 
if (nNedCount < 1 or nNedCount == nil) then 
print("Fail!!!!"); 
return 
end; 

--local nCount = CalcEquiproomItemCount(4, 417, 1, 1) 

--if (nCount < nNedCount) then 
if GetCash() < 4000000 then
Talk(1,"","Ng�i ti�n tr�n ng��i kh�ng �� 400 v�n , quy�n g�p �� ti�n tr� l�i �i .") 
return 1; 
end 
--ConsumeEquiproomItem(nNedCount, 4, 417, 1, 1) 

--WriteGoldLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName()..format("]: t�n hao %d ��ng ti�n , l�y ���c 1 c� ph�t tri�n r��ng .",nNedCount),-2,0,0,0); 
OpenStoreBox(1) 

Pay(4000000)
--UseSilver(1, 2, nNedCount); -- script viet hoa By http://tranhba.com  kim nguy�n b�o ��i v� ��ng ti�n ��ch ti�u hao th�ng k� ( tr�c ti�p ti�u hao nguy�n b�o ng�n phi�u , c�ng ��ng ti�n ��i ch� c�ng x� l� ) 
SaveNow(); -- script viet hoa By http://tranhba.com  l�p t�c t�n m�m 

Talk(1,"","Mua ph�t tri�n r��ng th�nh c�ng , ��ng th�i ��t ���c <color=yellow> trang b� tr�i ��nh <color> ch�c n�ng #") 
Msg2SubWorld("��i hi�p <color=white>"..GetName().."<color> �� ���c tr� v�t r��ng thi�t tr� <color=green>ph�t tri�n r��ng<color> ��ch m�i b�t ��u m�t m� .") 
end 


function box_help() 
str= 
{ 
"<#>Th�m c�u # m�t vai tr� ch� c� th� mua m�t ph�t tri�n r��ng . ph�t tri�n r��ng c� th� l�y cung c�p ng��i chung th�n s� d�ng , l�n nh� v� 60 c�ch , c� th� c�ng nguy�n c� tr� v�t r��ng gi�ng nhau , ch�ng qua l� kh�ng th� c�t gi� kim ti�n . ", 
"<#> mua ph�t tri�n v� ph�a sau , ng��i c�n c� th� l�y ���c m�t m�t m� kh�a , d�ng cho nguy�n c� tr� v�t r��ng # ph�t tri�n r��ng c�ng tr�n ng��i trang b� ��ch phong t�a b�o v� . ", 
"<#> phong t�a � thi�t ��nh m�t m� sau m�i c� th� t�o t�c d�ng . khi x� vu phong t�a tr�ng th�i l�c , tr�n ng��i trang b� kh�ng th� m�c th��ng ho�c th�o xu�ng , nh�ng s� kh�ng �nh h��ng nguy�n c� c�ng c� th� # nh� PK tr� gi� qu� cao l�c v�n s� r�i tr�n ng��i trang b� # . ", 
"<#> li�n quan t�i thi�t ��nh m�t m� # �i�m k�ch tr� v�t r��ng gi�i m�t ��ch <color=yellow> thi�t ��nh m�t m� <color> lu�n lu�n , b�n ra ti�u b�n g� , ph�a tr�n c� 0-9 h�n 10 c� con s� . ", 
"<#> l�n ��u thi�t tr� m�t m� , �i�m k�ch n�n h�ng l� v� thi�t ��nh k� m�i b�t ��u m�t m� # n�u �� thi�t tr� qu� m�t m� , �i�m k�ch n�n h�ng l� v� s�a ��i m�t m� . ", 
"<#> s�a ��i m�t m� tr��c , c�n tr��c ��a v�o c�u m�t m� , n�a ��a v�o hai l�n m�i thi�t m�t m� , m�i c� th� x�c ��nh s�a ��i m�t m� th�nh c�ng . m�t m� chi�u d�i �t nh�t l� 1 con s� ch� , d�i nh�t v� 9 v� . ", 
}; 
Talk(6,"",str[1],str[2], str[3], str[4], str[5], str[6]); 
end 


function no() 
end; 
