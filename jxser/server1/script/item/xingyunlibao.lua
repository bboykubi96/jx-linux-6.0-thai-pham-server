-- script viet hoa By http://tranhba.com  may m�n l� t�i 
-- script viet hoa By http://tranhba.com by ti�u l�ng nhi�u h�n 
-- script viet hoa By http://tranhba.com 2007.04.13 

TB_LIBAO = 
{ 
1000000,-- script viet hoa By http://tranhba.com  t�ng x�c su�t 
{0.00125, {"Ch�n �u�i b�ch h� gi� b� ", 0,2,9,10,2,}}, -- script viet hoa By http://tranhba.com  ch�n �u�i b�ch h� c�u [ n��c thu�c t�nh ] 
{0.00125, {"Ch�n �u�i b�ch h� gi� b� ", 0,2,9,10,3,}}, -- script viet hoa By http://tranhba.com  ch�n �u�i b�ch h� c�u [ h�a thu�c t�nh ] 
{0.00125, {"Tuy�n long b�o ", 0,2,6,10,2,}}, -- script viet hoa By http://tranhba.com  tuy�n long b�o [ n��c thu�c t�nh ] 
{0.00125, {"Tuy�n long b�o ", 0,2,6,10,3,}}, -- script viet hoa By http://tranhba.com  tuy�n long b�o [ h�a thu�c t�nh ] 
{0.00125, {"Thi�n t�m �ai l�ng ", 0,6,0,10,2,}}, -- script viet hoa By http://tranhba.com  thi�n t�m �ai l�ng [ n��c thu�c t�nh ] 
{0.00125, {"Thi�n t�m �ai l�ng ", 0,6,0,10,3,}}, -- script viet hoa By http://tranhba.com  thi�n t�m �ai l�ng [ h�a thu�c t�nh ] 
{0.00125, {"B�ch kim �ai l�ng ", 0,6,1,10,2,}}, -- script viet hoa By http://tranhba.com  b�ch kim �ai l�ng [ n��c thu�c t�nh ] 
{0.00125, {"B�ch kim �ai l�ng ", 0,6,1,10,3,}}, -- script viet hoa By http://tranhba.com  b�ch kim �ai l�ng [ h�a thu�c t�nh ] 
{0.15, {"Ti�n th�o l� ", 6,1,71,1,}}, -- script viet hoa By http://tranhba.com  ti�n th�o l� 
{0.1796, {"Hoa qu� r��u ", 6,1,125,1,}}, -- script viet hoa By http://tranhba.com  hoa qu� r��u 
{0.0001, {"An bang b�ng tinh th�ch gi�y chuy�n ", 0,164,}}, -- script viet hoa By http://tranhba.com  an bang � b�ng tinh th�ch gi�y chuy�n 
{0.0001, {"An bang hoa c�c th�ch chi�c nh�n ", 0,165,}}, -- script viet hoa By http://tranhba.com  an bang � hoa c�c th�ch chi�c nh�n 
{0.0001, {"An bang m�u g� th�ch chi�c nh�n ", 0,167,}}, -- script viet hoa By http://tranhba.com  an bang � m�u g� th�ch chi�c nh�n 
{0.0001, {"An bang �i�n ho�ng th�ch ng�c b�i ", 0,166,}}, -- script viet hoa By http://tranhba.com  an bang � �i�n ho�ng th�ch ng�c b�i 
{0.0004, {"��nh n��c � sa ph�t quan ", 0,160,}}, -- script viet hoa By http://tranhba.com  ��nh n��c � � sa ph�t quan 
{0.0004, {"��nh n��c l�a m�ng xanh tr��ng sam ", 0,159,}}, -- script viet hoa By http://tranhba.com  ��nh n��c � l�a m�ng xanh tr��ng sam 
{0.0004, {"��nh n��c l�a m�ng xanh tr��ng sam ", 0,162,}}, -- script viet hoa By http://tranhba.com  ��nh n��c � t� ��ng h� c� tay 
{0.0004, {"��nh n��c ng�n t�m �ai l�ng ", 0,163,}}, -- script viet hoa By http://tranhba.com  ��nh n��c � ng�n t�m �ai l�ng 
{0.0004, {"��nh n��c x�ch quy�n m�m ngoa ", 0,161,}}, -- script viet hoa By http://tranhba.com  ��nh n��c � x�ch quy�n m�m ngoa 
{0.0002, {"Theo ��m ng�c s� t� ", 0,10,5,10,}}, -- script viet hoa By http://tranhba.com  theo ��m ng�c s� t� 80 c�p m� 
{0.0002, {"X�ch th� ", 0,10,5,2,}}, -- script viet hoa By http://tranhba.com  x�ch th� 80 c�p m� 
{0.0002, {"V� l�m m�t t�ch ", 6,1,26,1,}}, -- script viet hoa By http://tranhba.com  v� l�m m�t t�ch 
{0.0002, {"T�y T�y Kinh ", 6,1,22,1,}}, -- script viet hoa By http://tranhba.com  T�y T�y Kinh 
{0.65, {"Chi�n c�ng hoa ", 6,1,1414,1,}} -- script viet hoa By http://tranhba.com  chi�n c�ng hoa 
} 

function main(sel) 
local nDate = tonumber(GetLocalDate("%y%m%d")); 
if (nDate > 070513) then 
return 0 
end; 
if (GetLevel() < 50) then 
Msg2Player("50 c�p tr� l�n �� sung tr� gi� nh� ch�i m�i c� th� s� d�ng ."); 
return 1; 
end; 
if ( CalcFreeItemCellCount() < 12 ) then 
Say("Xin/m�i l�n n�a an b�i trang b� b�o ��m c� 12 c� ch� tr�ng .",0); 
return 1; 
end 
local SumPe = TB_LIBAO[1]; 
local Rand = random(1,SumPe); 
local Sum = 0; 
for i=2,getn(TB_LIBAO) do 
local pnum = TB_LIBAO[i][1]; 
local item = TB_LIBAO[i][2]; 
		Sum = Sum + pnum * SumPe;
if Rand < Sum then 
award_item(item); 
break; 
end 
end 
end 

function award_item(item) 
local nidx ; 
if getn(item) == 3 then 
nidx = AddGoldItem(item[2], item[3]); 
elseif getn(item) == 5 then 
nidx = AddItem(item[2], item[3], item[4], item[5],0,0); 
elseif getn(item) == 6 then 
nidx = AddQualityItem(2,item[2], item[3], item[4], item[5],item[6],255,-1,-1,-1,-1,-1,-1) 
end 
Msg2Player("Ng�i ��t ���c m�t "..item[1]); 
WriteLog(format("[xingyunlibao]\t date:%s \t Account:%s \t Name:%s \t GetItem:%s \t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),item[1])); 

end
