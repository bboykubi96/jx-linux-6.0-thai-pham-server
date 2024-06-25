Include("\\script\\missions\\dragonboat\\include.lua")
Include("\\script\\missions\\dragonboat\\npc\\duanwu_convert.lua")
IncludeLib("RELAYLADDER") 

DWGOLDENLASTDATE = tonumber(date("%d")) -- script viet hoa By http://tranhba.com  l�n tr��c d�ng d�ng v�c to long chu ��i l�y ho�ng kim trang b� ��ch nh�t k� ch� ghi ch�p ng�y 
DWGOLDENMAXCOUNT = 2 -- script viet hoa By http://tranhba.com  �oan ng� d�ng d�ng v�c to long chu ��i ��nh qu�c an bang # hi�p c�t nhu t�nh , m�i ng�y m�i thai ph�c v� kh� c� th� ��i l�y s� l��ng , m�i thai gameserver ��ch th��ng h�n , c�ng 16 c� 
DWGOLDENNOWCOUNT = 0 -- script viet hoa By http://tranhba.com  tr��c m�t d�ng d�ng v�c to long chu ��i l�y ho�ng kim trang b� ��m 

DWORELASTDATE = tonumber(date("%d")) -- script viet hoa By http://tranhba.com  l�n tr��c d�ng th� h�nh long chu ��i l�y huy�n tinh # th�n b� qu�ng th�ch ��ch nh�t k� ch� ghi ch�p ng�y 
DWOREMAXCOUNT = 12 -- script viet hoa By http://tranhba.com  �oan ng� d�ng th� h�nh long chu ��i huy�n tinh # th�n b� qu�ng th�ch , m�i ng�y m�i thai ph�c v� kh� c� th� ��i l�y s� l��ng , m�i thai gameserver ��ch th��ng h�n , c�ng 96 c� 
DWORENOWCOUNT = 0 -- script viet hoa By http://tranhba.com  tr��c m�t d�ng th� h�nh long chu ��i l�y huy�n tinh # th�n b� qu�ng th�ch ��m 

AWARD_BIRDBOAT = { 
{"Ti�n th�o l� ",{6,1,71,1,0,0},30}, 
{"T� th�y tinh ",{239},15}, 
{" lam th�y tinh ",{238},15}, 
{"N��c bi�c tinh ",{240},15}, 
{"Tinh h�ng b�o th�ch ",{353},15}, 
{"Thi�n S�n b�o l� ",{6,1,72,1,0,0},10}, 
} 

AWARD_BEASTBOAT = { 
{"Huy�n tinh 5 c�p ",{6,1,147,5,0,0},20}, 
{"Huy�n tinh 6 c�p ",{6,1,147,6,0,0},43}, 
{"Huy�n tinh 7 c�p ",{6,1,147,7,0,0},30}, 
{"Huy�n tinh 8 c�p ",{6,1,147,8,0,0},3}, 
{"Th�n b� qu�ng th�ch ",{6,1,398,1,0,0},4}, 
} 

AWARD_HUGEBOAT = { 
{"��nh qu�c chi l�a m�ng xanh tr��ng sam ",{159},100}, 
{"��nh qu�c chi � sa ph�t quan ",{160},51}, 
{"��nh qu�c chi x�ch quy�n m�m ngoa ",{161},70}, 
{"��nh qu�c chi t� ��ng h� c� tay ",{162},70}, 
{"��nh qu�c chi ng�n t�m �ai l�ng ",{163},70}, 
{"An bang chi b�ng tinh th�ch gi�y chuy�n ",{164},51}, 
{"An bang chi hoa c�c th�ch chi�c nh�n ",{165},51}, 
{"An bang chi �i�n ho�ng th�ch ng�c b�i ",{166},51}, 
{"An bang chi m�u g� th�ch chi�c nh�n ",{167},51}, 
{"Hi�p c�t chi thi�t huy�t sam ",{186},70}, 
{"Hi�p c�t nhi�u t�nh ho�n ",{187},70}, 
{"Hi�p c�t chi �an t�m gi�i ",{188},70}, 
{"Hi�p c�t t�nh � k�t ",{189},20}, 
{"Nhu t�nh chi c�n qu�c ngh� th��ng ",{190},14}, 
{"Nhu t�nh chi th�c n� gi�y chuy�n ",{191},60}, 
{"Nhu t�nh chi ph��ng nghi chi�c nh�n ",{192},80}, 
{"Nhu t�nh chi tu� t�m ng�c b�i ",{193},51}, 
} 

function dragonboat_main() 
Say("Ti�t �oan ng� ho�t ��ng �� k�t th�c , nh�ng l� m�i ng��i c�n c� th� d�ng c�n s�t l�i v�t ph�m h�p th�nh long chu c�ng ��i l�y l� ph�m . ��ng h�ng tr��c m��i nh� ch�i mau t�i ta ��y ��i ho�ng kim trang b� . .", 5,"Ch� t�o long chu /duanwu_convert","D�ng long chu ��i l�y d�n t��ng /dragon_award","��ng h�ng tr��c m��i nh�n l�y ho�ng kim trang b� ./dragon_golden","T��ng quan ho�t ��ng /aboutboat","Kh�ng c�n /OnCancel"); 
end 

function want_playboat() 
OldSubWorld = SubWorld 
OldPlayer = PlayerIndex 
local totalboat = 0 
local freeboat = 0 
local startboat = 0 
local blevel = 0 
if (IsCaptain() ~= 1) then 
Say("Th�t xin l�i ! c�n ��i tr��ng ghi danh tham gia cu�c so t�i long chu ho�t ��ng m�i ���c .",0) 
return 
end 
if (GetTeamSize() < 4) then 
Say("Th�t xin l�i ! tham gia cu�c so t�i long chu ho�t ��ng ��i ng� �t nh�t c�n <color=red>4<color> ng��i . tr��c m�t ng�i ��ch ��i kh�ng �� ng��i ! nhanh �i t�m nh�ng ng��i n�y ��n ��y �i ",0) 
return 
end 
if (GetLevel() >= 90) then 
blevel = 1 
end 

for i = 1, GetTeamSize() do 
PlayerIndex = GetTeamMember(i) 
local bmbrlevel = 0 
if (GetLevel() >= 90) then 
bmbrlevel = 1 
end 

if (blevel ~= bmbrlevel) then 
if (blevel == 0) then 
Say("Th�t xin l�i ! � ng��i trong ��i ng� c� ng��i c�p b�c <color=red> v��t qua 90 c�p <color>, kh�ng th� tham gia tranh t�i ! ki�m tra sau tr� l�i tham gia ghi danh ! ",0) 
return 
else 
Say("Th�t xin l�i ! � ng��i trong ��i ng� c� ng��i c�p b�c <color=red> ch�a �� 90 c�p <color>, kh�ng th� tham gia tranh t�i ! ki�m tra sau tr� l�i tham gia ghi danh ! ",0) 
return 
end 
end 
end 

PlayerIndex = OldPlayer 
for i = 1, getn(map_map) do 
sub = SubWorldID2Idx(map_map[i]) 
if (sub >= 0) then 
print("have "..map_map[i]) 
			totalboat = totalboat + 1
SubWorld = sub 
local state = GetMissionV(VARV_STATE) 
if (state > 0) then 
startboat = 1 
end 
if ( state == 1 and GetMSPlayerCount(MISSION_MATCH, 1) == 0 and map_isadvanced[map_map[i]] == blevel) then 
				freeboat = freeboat + 1
end 
end 
end 
print("total"..totalboat.."free"..freeboat) 
local strlevel =""; 
if (blevel == 0) then 
strlevel = " s� c�p long chu cu�c so t�i " 
else 
strlevel = " cao c�p long chu cu�c so t�i " 
end 

if (startboat == 1) then 
if (freeboat == 0) then 
Say("N�n khu v�c �ang "..strlevel.."# b�t ��u . kh�ng c� ch� li�u ",0) 
return 
else 
Say("N�n khu v�c �ang "..strlevel.." cu�c so t�i long chu ghi danh giai �o�n , c�n c� <color=red>"..freeboat.."<color> long chu c�n v� �ch ��ch . tham gia tranh t�i c�n ��ng <color=red>5 v�n <color> hai , ng��i ngh� tham gia sao ?",2,"��ng v�y ! ta mu�n mang ta ��i tham gia ./dragon_join","Kh�ng c�n /OnCancel") 
return 
end 
else 
Say("Th�t xin l�i ! n�n khu v�c "..strlevel.." tr��c m�t kh�ng c� cu�c so t�i long chu tranh t�i . ghi danh <color=red> theo nh� l�c <color> b�t ��u . ghi danh th�i gian l� 5 ph�t . xin ch� � h� th�ng th�ng b�o !",0) 
return 
end 

end 

function dragon_join() 
local blevel = 0 
if (GetLevel() >= 90) then 
blevel = 1 
end 
if (IsCaptain() ~= 1) then 
Say("Th�t xin l�i ! c�n ��i tr��ng ghi danh tham gia cu�c so t�i long chu ho�t ��ng m�i ���c .",0) 
return 
end 
if (GetTeamSize() < 1) then 
Say("Th�t xin l�i ! tham gia cu�c so t�i long chu ho�t ��ng ��i ng� �t nh�t c�n <color=red>4<color> ng��i . tr��c m�t ng�i ��ch ��i kh�ng �� ng��i ! nhanh �i t�m nh�ng ng��i n�y ��n ��y �i ",0) 
return 
end 
local bhaveboat = 0 
local boatstr = " ti�u Long chu " 
if (blevel > 0) then 
boatstr = " truy�n th�ng long chu " 
end 

if (blevel == 0) then 
bhaveboat = CalcEquiproomItemCount( 6, 1, 422, 1 ) 
else 
bhaveboat = CalcEquiproomItemCount( 6, 1, 423, 1 ) 
end 

if (GetCash() < 50000 or bhaveboat == 0 and blevel == 0) then 
Say("Th�t xin l�i ! tham gia cu�c so t�i long chu tranh t�i c�n ��ng <color=red> 5 v�n l��ng c�ng "..boatstr.."<color> m�i ���c , ti�n c�a ng��i kh�ng �� ho�c l� kh�ng c� mang ti�u Long chu . chu�n b� xong tr� l�i !.", 0) 
return 
end 
if (GetCash() < 50000 or bhaveboat == 0 and blevel == 1) then 
Say("Th�t xin l�i ! tham gia cu�c so t�i long chu tranh t�i c�n ��ng <color=red> 5 v�n l��ng c�ng "..boatstr.."<color=red> m�i ���c , ti�n c�a ng��i kh�ng �� ho�c l� kh�ng c� mang truy�n th�ng long chu ! chu�n b� xong tr� l�i !", 0) 
return 
end 

local OldPlayer = PlayerIndex 

for i = 1, GetTeamSize() do 
PlayerIndex = GetTeamMember(i) 
local bmbrlevel = 0 
if (GetLevel() >= 90) then 
bmbrlevel = 1 
end 

if (blevel ~= bmbrlevel) then 
if (blevel == 0) then 
Say("Th�t xin l�i ! � ng��i trong ��i ng� c� ng��i c�p b�c <color=red> v��t qua 90 c�p <color>, kh�ng th� tham gia tranh t�i ! ki�m tra sau tr� l�i tham gia ghi danh ! ",0) 
return 
else 
Say("Th�t xin l�i ! � ng��i trong ��i ng� c� ng��i c�p b�c <color=red> ch�a �� 90 c�p <color>, kh�ng th� tham gia tranh t�i ! ki�m tra sau tr� l�i tham gia ghi danh ! ",0) 
return 
end 
end 
end 

PlayerIndex = OldPlayer 

OldSubWorld = SubWorld 

for i = 1, getn(map_map) do 
sub = SubWorldID2Idx(map_map[i]) 
if (sub >= 0) then 
SubWorld = sub 
local state = GetMissionV(VARV_STATE) 
if ( state == 1 and GetMSPlayerCount(MISSION_MATCH, 1) == 0 and blevel == map_isadvanced[map_map[i]] ) then 
local tabplayer = {} 
for i = 1, GetTeamSize() do 
tabplayer[i] = GetTeamMember(i) 
print("plal"..tabplayer[i]) 
end 
PlayerIndex = tabplayer[1] 
w,x,y = GetWorldPos() 
SetMissionV(VARV_SIGNUP_WORLD, w) 
SetMissionV(VARV_SIGNUP_POSX, x) 
SetMissionV(VARV_SIGNUP_POSY, y) 
SetMissionS(VARS_TEAM_NAME,GetName()) 

-- script viet hoa By http://tranhba.com  DEBUG 
print(format("%s t� (%d, %d, %d) c�ng v� tr� ti�n v�o long chu ", GetName(), w, x, y)); 

Pay(50000) 
if (blevel == 0) then 
ConsumeEquiproomItem( 1, 6, 1, 422, 1) 
else 
ConsumeEquiproomItem( 1, 6, 1, 423, 1) 
end 

for i = 1 , getn(tabplayer) do 
PlayerIndex = tabplayer[i] 
print("player"..PlayerIndex) 
JoinMission(MISSION_MATCH, 1) 
end 
return 
end 
end 
end 
SubWorld = OldSubWorld 
PlayerIndex = OldPlayer 
local strlevel =""; 
if (blevel == 0) then 
strlevel = " s� c�p long chu cu�c so t�i " 
else 
strlevel = " s� c�p long chu cu�c so t�i " 
end 
Say("Th�t xin l�i ! tr��c m�t <color=red>"..strlevel.."<color> # �� kh�ng c� ch� ng�i . xin ch� ch�t m�t v�ng !",0) 
end 

function dragon_award() 
Say("Cu�c so t�i long chu tranh t�i �ang nh� l�a nh� �� ��a ti�n h�nh , l�o phu �ang thu long chu . ng��i ngh� d�ng lo�i n�o long chu ��i l�y t��ng th��ng ?",7,"Ti�u Long chu ��i l�y ��u sa t�ng t� /dousha","Truy�n th�ng long chu ��i l�y h��ng c� t�ng t� /xianggu","M� ��u long chu ��i l�y ��n ho�ng t�ng t� /danhuang","�i�u ��u long chu ng�u nhi�n ��i l�y ti�n th�o l� , th�y tinh , b�o th�ch , Thi�n S�n b�o l� /birdboat_award","Th� v�t long chu ng�u nhi�n ��i l�y th�n b� qu�ng th�ch , 5- huy�n tinh qu�ng th�ch 8 c�p /beastboat_award","��i long chu ng�u nhi�n ��i l�y ��nh qu�c an bang , m�t b� nhu t�nh hi�p c�t ho�ng kim trang b� /hugeboat_award","Kh�ng c�n !/OnCancel"); 
end 

function dragon_golden() 
-- script viet hoa By http://tranhba.com Say(" l� quan # long chu cu�c so t�i �ang nh� l�a nh� �� ��ch ti�n h�nh trung , ph�i ch� t�i <color=red> ho�t ��ng k�t th�c <color> sau m�i c� th� t�i d�n t��ng nga . ",0); 
Say("Ng��i ngh� nh�n l�y c�i g� tranh t�i t��ng th��ng ?", 3,"S� c�p long chu cu�c so t�i /dragon_golden_low","#a cao c�p long chu cu�c so t�i /dragon_golden_high","Kh�ng c�n !/OnCancel"); 
end 

function dragon_golden_low() 
for i = 1, 10 do 
RoleName, Data = Ladder_GetLadderInfo(10141, i); 
if( GetName() == RoleName) then 
if(GetTask(1507) ~= 0) then 
Say("Ng��i �� nh�n l�y s� c�p long chu cu�c so t�i ��ng h�ng tr��c m��i t��ng th��ng !",0); 
return 0 
end 
if(CalcFreeItemCellCount() < 6) then 
Say("Trang b� c�a ng��i ch� tr�ng kh�ng �� . s�a sang l�i h�o sau tr� l�i ��i �i ",0); 
return 0 
end 
dragon_givegolden(); 
SetTask(1507,1); 
return 1 
end 
end 
Say("Ng��i kh�ng c� � ��y s� c�p long chu cu�c so t�i ��ng h�ng tr��c m��i h�ng ng� , kh�ng th� d�n t��ng .",0); 
end 

function dragon_golden_high() 
for i = 1, 10 do 
RoleName, Data = Ladder_GetLadderInfo(10142, i); 
if( GetName() == RoleName) then 
if(GetTask(1508) ~= 0) then 
Say("Ng��i �� nh�n l�y c�p long chu cu�c so t�i ��ng h�ng tr��c m��i t��ng th��ng !",0); 
return 0 
end 
if(CalcFreeItemCellCount() < 6) then 
Say("Trang b� c�a ng��i ch� tr�ng kh�ng �� . s�a sang l�i h�o sau tr� l�i ��i �i ",0); 
return 0 
end 
dragon_givegolden(); 
SetTask(1508,1); 
return 1 
end 
end 
Say("Kh�ng c� � ��y cao c�p long chu cu�c so t�i ��ng h�ng tr��c m��i h�ng ng� , kh�ng th� d�n t��ng .",0); 
end 

function aboutboat() 
Say("Ng��i ngh� hi�u r� kia h�ng nh�t ?", 5,"H�p th�nh long chu ��ch c�ng th�c /aboutmaking"," long chu cu�c so t�i l�ch s� /abouthistory","T��ng quan ghi danh /aboutjoin","Ch� � b� m�n /aboutnotice","Ta bi�t !/OnCancel"); 
end 

function aboutmaking() 
	local a = "С����= 1 ��ͷ + 1 ��β + 1 ���� + 1 ���� + 4 ��+ 1 ������ + 1 ��";
	local b = "<enter>��ͳ���� = 1 С����+ 4 ��";
	local c = "<enter>��ͷ����= 1 С����+ 1 ��ͳ���� + 1 ��ͷ";
	local d = " ��ͷ���� = 1 ��ͷ���� + 1 ��ͳ���� + 1 ��ͷ";
	local e = "<enter>��ͷ����= 1 ��ͷ���� + 1 ��ͷ���� + 1 ��ͷ";
	local f = "<enter>������ = 1 ��ͷ����+ 1 ��ͷ���� + 1 ��ͷ����";
Talk(2,"",a..b..c,d..e..f); 
end 

function abouthistory() 
Talk(1,"","Truy�n thuy�t , khu�t nguy�n nh�y s�ng sau , d�n b�n x� c�a m� th�y khu�t nguy�n th�n h�nh g�y g� , s� d�ng l� tr�c t�i c�m th�nh t�ng t� , �� th��ng long chu sau ��y h��ng H� N�i , d��i n��c ��ch th�y t�c l�i ��n l� long , li�n cho r�ng l� Long v��ng ��ch �� , c�ng kh�ng d�m �n , cho n�n , c� th� t� b�i cho khu�t nguy�n d�ng . ��y ch�nh l� long chu cu�c so t�i c�ng �n t�ng t� ��ch nguy�n do . "); 
end 

function aboutjoin() 
Talk(2,"","Nh� ch�i d�ng <color=red> ti�u Long chu c�ng truy�n th�ng long chu <color> l�m <color=red> ��i tr��ng <color>, d�n c�c v� ��i h�u ��n <color=red> l� quan ch� <color> ghi danh tham gia s� c�p c�ng cao c�p long chu cu�c so t�i , kh�ng c� gi� c� h�nh m�t l�n ,<color=red> ��n l�c �� <color> th�ng b�o b�t ��u ti�p nh�n ghi danh . ghi danh th�i gian l� n�m ph�t .","S� c�p tranh t�i nhi�u nh�t cho ph�p <color=red>8<color> ��i ng� tham gia , ��i �ng l� 8 tr��ng long chu b�n �� ; cao c�p tranh t�i nhi�u nh�t cho ph�p <color=red>16<color> ��i tham gia , ��i �ng l� 16 tr��ng long chu b�n �� . n�u nh� � l� quan ch� ghi danh s� l��ng �� r�i , xin/m�i nh� ch�i ��n nh�ng th�nh th� kh�c ��ch l� quan ch� ghi danh . "); 
end 

function aboutnotice() 
Talk(3,"","Ghi danh sau khi th�nh c�ng , t�t c� ��i ng� b� d�i �i ��n long chu b�n �� . �ang ��i tranh t�i th�i gian l�c b�t ��u , nh� ch�i <color=red> t� vong <color> c�ng s� b� ph�n ��nh v� m�t �i t� c�ch tranh t�i . n�u nh� ��i tr��ng t� vong , c�n s�t l�i th�nh vi�n nh� c� c� th� ti�p t�c tranh t�i c�ng d�n t��ng , nh�ng l� th�nh t�ch kh�ng th� k� v�o b�ng x�p h�ng . ."," � <color=red>2 chu sau <color> long chu cu�c so t�i ho�t ��ng k�t th�c <color=red> s� c�p c�ng cao c�p tranh t�i ��ng h�ng tr��c m��i ��i ng� <color> c� th� ��n l� quan ch� nh�n l�y ��nh qu�c an bang , 1 b�/v� nhu t�nh hi�p c�t ng�u nhi�n ho�ng kim trang b� .","Mu�n bi�t c�n k� tin t�c , m�i xem trang ch�nh # www.volam.com.vn"); 
end 

function dousha() 
Say("�n ��u sa t�ng t� ng�u nhi�n ��t ���c <color=red>1 v�n , 2 v�n , 5 v�n kinh nghi�m tr� gi� <color> ho�c l� tham gia <color=red> s� c�p long chu cu�c so t�i <color>, ng��i th�t mu�n ��i sao ?",2,"Ta mu�n ��i /dousha_yes","Kh�ng c�n !/OnCancel"); 
end 

function dousha_yes() 
if(CalcEquiproomItemCount(6,1,422,1) <= 0) then 
Say("Ng��i kh�ng c� ti�u Long chu kh�ng th� ��i t��ng th��ng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 1) then 
Say("Trang b� c�a ng��i ch� tr�ng kh�ng �� . s�a sang l�i h�o sau tr� l�i ��i �i ",0); 
return 
end 
DelCommonItem(6,1,422); 
AddItem(6,1,435,1,0,0); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: d�n m�t ��u sa t�ng t� "); 
Say("Ng��i ��t ���c ��u sa t�ng t� .",0); 
end 

function xianggu() 
Say(" # c�t h��ng c� t�ng t� ng�u nhi�n ��t ���c <color=red>5 v�n , 10 v�n , 25 v�n kinh nghi�m tr� gi� <color> ho�c l� tham gia <color=red> cao c�p long chu cu�c so t�i <color>, ng��i th�t mu�n ��i sao ?",2,"Ta mu�n ��i /xianggu_yes","Kh�ng c�n !/OnCancel"); 
end 

function xianggu_yes() 
if(CalcEquiproomItemCount(6,1,423,1) <= 0) then 
Say("Ng��i kh�ng c� <color=red> truy�n th�ng long chu <color>, kh�ng th� ��i t��ng th��ng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 1) then 
Say("Trang b� c�a ng��i ch� tr�ng kh�ng �� . s�a sang l�i h�o sau tr� l�i ��i �i ",0); 
return 
end 
DelCommonItem(6,1,423); 
AddItem(6,1,436,1,0,0); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: d�n m�t h��ng c� t�ng t� "); 
Say("Ng��i ��t ���c 1 c� h��ng c� t�ng t� .",0); 
end 

function danhuang() 
Say("�n ��n ho�ng t�ng t� ng�u nhi�n ��t ���c <color=red>15 v�n , 30 v�n , 75 v�n kinh nghi�m tr� gi� <color>, ng��i th�t mu�n ��i sao ?",2,"Ta mu�n ��i /danhuang_yes","Kh�ng c�n !/OnCancel"); 
end 

function danhuang_yes() 
if(CalcEquiproomItemCount(6,1,424,1) <= 0) then 
Say("Ng��i kh�ng c� <color=red> m� ��u long chu <color>, kh�ng th� ��i t��ng th��ng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 1) then 
Say("Trang b� c�a ng��i ch� tr�ng kh�ng �� . s�a sang l�i h�o sau tr� l�i ��i �i ",0); 
return 
end 
DelCommonItem(6,1,424); 
AddItem(6,1,437,1,0,0); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: d�n m�t ��n ho�ng t�ng t� "); 
Say("Ng��i ��t ���c 1 c� ��n ho�ng t�ng t� .",0); 
end 

function birdboat_award() 
local awardpro = {} 
if(CalcEquiproomItemCount(6,1,425,1) <= 0) then 
Say("Ng��i kh�ng c� <color=red> �i�u ��u long chu <color>, kh�ng th� ��i t��ng th��ng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 1) then 
Say("Trang b� c�a ng��i ch� tr�ng kh�ng �� . s�a sang l�i h�o sau tr� l�i ��i �i ",0); 
return 
end 
for i = 1, getn(AWARD_BIRDBOAT) do 
awardpro[i] = AWARD_BIRDBOAT[i][3]; 
end 
numth = randomaward(awardpro); 
if( getn(AWARD_BIRDBOAT[numth][2]) == 6 ) then 
AddItem(AWARD_BIRDBOAT[numth][2][1],AWARD_BIRDBOAT[numth][2][2],AWARD_BIRDBOAT[numth][2][3],AWARD_BIRDBOAT[numth][2][4],AWARD_BIRDBOAT[numth][2][6],AWARD_BIRDBOAT[numth][2][6]); 
else 
AddEventItem(AWARD_BIRDBOAT[numth][2][1]) 
end 
DelCommonItem(6,1,425); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: d�n m�t "..AWARD_BIRDBOAT[numth][1]); 
Say("Ng��i ��t ���c 1 c� "..AWARD_BIRDBOAT[numth][1]..".",0); 
end 

function beastboat_award() 
local awardpro = {}; 
if(CalcEquiproomItemCount(6,1,426,1) <= 0) then 
Say("Ng��i kh�ng c� <color=red> th� v�t long chu color>, kh�ng th� ��i t��ng th��ng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 1) then 
Say("Trang b� c�a ng��i ch� tr�ng kh�ng �� . s�a sang l�i h�o sau tr� l�i ��i �i ",0); 
return 
end 

local nNowDate = tonumber(date("%d")); 
if ( nNowDate == DWORELASTDATE ) then -- script viet hoa By http://tranhba.com  n�u nh� l�n tr��c d�ng h�nh th� long chu ��i l�y huy�n tinh # th�n b� qu�ng th�ch l� ng�y �� l�i c�a 
if ( DWORENOWCOUNT >= DWOREMAXCOUNT ) then -- script viet hoa By http://tranhba.com  ��t t�i d�ng h�nh th� long chu ��i l�y huy�n tinh # th�n b� qu�ng th�ch l�n nh�t ��m kh�ng th� ��i l�i 
print("H�m nay d�ng th� v�t long chu ��i l�y huy�n tinh c�ng th�n b� qu�ng th�ch �� v��t qua s� l��ng .") 
Say("H�m nay d�ng th� v�t long chu ��i l�y huy�n tinh c�ng th�n b� qu�ng th�ch qu� nhi�u . l�o phu kh�ng c� h�ng . �i nh�ng th�nh th� kh�c �i , ng�y mai tr� l�i !",0); 
return 
end 
else -- script viet hoa By http://tranhba.com  n�u nh� d�ng h�nh th� long chu ��i l�y huy�n tinh # th�n b� qu�ng th�ch m�y ng�y k� c�ng tr��c m�t kh�ng ph�i l� c�ng m�t ng�y 
DWORELASTDATE = nNowDate; -- script viet hoa By http://tranhba.com  ��i m�i g�n nh�t ��ch nh�t k� 
DWORENOWCOUNT = 0; -- script viet hoa By http://tranhba.com  tr��c m�t d�ng h�nh th� long chu ��i l�y huy�n tinh # th�n b� qu�ng th�ch ��m ��a 0 
end 

for i = 1, getn(AWARD_BEASTBOAT) do 
awardpro[i] = AWARD_BEASTBOAT[i][3]; 
end 
numth = randomaward(awardpro); 
if( getn(AWARD_BEASTBOAT[numth][2]) == 6 ) then 
AddItem(AWARD_BEASTBOAT[numth][2][1],AWARD_BEASTBOAT[numth][2][2],AWARD_BEASTBOAT[numth][2][3],AWARD_BEASTBOAT[numth][2][4],AWARD_BEASTBOAT[numth][2][6],AWARD_BEASTBOAT[numth][2][6]); 
else 
AddEventItem(AWARD_BEASTBOAT[numth][2][1]) 
end 
	DWORENOWCOUNT = DWORENOWCOUNT + 1;
DelCommonItem(6,1,426); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: d�n m�t "..AWARD_BEASTBOAT[numth][1]); 
Say("Ng��i ��t ���c 1 c� "..AWARD_BEASTBOAT[numth][1]..".",0); 
end 

function hugeboat_award() 
local awardpro = {}; 
if(CalcEquiproomItemCount(6,1,427,1) <= 0) then 
Say("Ng��i kh�ng c� <color=red> ��i long chu <color>, kh�ng th� ��i t��ng th��ng !",0); 
return 
end 
if(CalcFreeItemCellCount() < 6) then 
Say("Trang b� c�a ng��i ch� tr�ng kh�ng �� . s�a sang l�i h�o sau tr� l�i ��i �i ",0); 
return 
end 

local nNowDate = tonumber(date("%d")); 
if ( nNowDate == DWGOLDENLASTDATE ) then -- script viet hoa By http://tranhba.com  n�u nh� l�n tr��c d�ng d�ng v�c to long chu ��i l�y ho�ng kim trang b� l� ng�y �� l�i c�a 
if ( DWGOLDENNOWCOUNT >= DWGOLDENMAXCOUNT ) then -- script viet hoa By http://tranhba.com  ��t t�i d�ng d�ng v�c to long chu ��i l�y ho�ng kim trang b� l�n nh�t ��m kh�ng th� ��i l�i 
print("H�m nay d�ng ��i long chu ��i l�y ho�ng kim trang b� qu� nhi�u .") 
Say("H�m nay d�ng ��i long chu ��i l�y ho�ng kim trang b� qu� nhi�u . �i nh�ng th�nh th� kh�c �i , ng�y mai tr� l�i !",0); 
return 
end 
else -- script viet hoa By http://tranhba.com  n�u nh� d�ng d�ng v�c to long chu ��i l�y ho�ng kim trang b� nh�t k� c�ng tr��c m�t kh�ng ph�i l� c�ng m�t ng�y 
DWGOLDENLASTDATE = nNowDate; -- script viet hoa By http://tranhba.com  ��i m�i g�n nh�t ��ch nh�t k� 
DWGOLDENNOWCOUNT = 0; -- script viet hoa By http://tranhba.com  tr��c m�t d�ng d�ng v�c to long chu ��i l�y ho�ng kim trang b� ��m ��a 0 
end 

for i = 1, getn(AWARD_HUGEBOAT) do 
awardpro[i] = AWARD_HUGEBOAT[i][3]; 
end 
numth = randomaward(awardpro); 
if( getn(AWARD_HUGEBOAT[numth][2]) == 6 ) then 
AddItem(AWARD_HUGEBOAT[numth][2][1],AWARD_HUGEBOAT[numth][2][2],AWARD_HUGEBOAT[numth][2][3],AWARD_HUGEBOAT[numth][2][4],AWARD_HUGEBOAT[numth][2][6],AWARD_HUGEBOAT[numth][2][6]); 
else 
AddGoldItem(0,AWARD_HUGEBOAT[numth][2][1]) 
end 
	DWGOLDENNOWCOUNT = DWGOLDENNOWCOUNT + 1;
DelCommonItem(6,1,427); 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: d�n m�t "..AWARD_HUGEBOAT[numth][1]); 
Say("Ng��i ��t ���c 1 c� "..AWARD_HUGEBOAT[numth][1]..".",0); 
end 

function randomaward(aryProbability) 
local nRandNum; 
local nSum = 0; 
local nArgCount = getn( aryProbability ); 
local nCompareSum = 0; 
for i = 1, nArgCount do 
		nSum = nSum + aryProbability[i];
end 
nRandNum = random(1,nSum); 
for i = 1,nArgCount do 
		nCompareSum = nCompareSum + aryProbability[i]
if( nRandNum <= nCompareSum) then 
return i; 
end 
end 
end 

function dragon_givegolden() 
local awardpro = {}; 
for i = 1, getn(AWARD_HUGEBOAT) do 
awardpro[i] = AWARD_HUGEBOAT[i][3]; 
end 
numth = randomaward(awardpro); 
AddGoldItem(0,AWARD_HUGEBOAT[numth][2][1]) 
WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: ��ng h�ng tr��c m��i ��t ���c 1 c� "..AWARD_HUGEBOAT[numth][1]); 
Say("Ng��i ��t ���c 1 c� "..AWARD_HUGEBOAT[numth][1]..".",0); 
end
