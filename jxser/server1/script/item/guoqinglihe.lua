-- script viet hoa By http://tranhba.com  qu�c kh�nh h�p qu� 
-- script viet hoa By http://tranhba.com by ti�u l�ng nhi�u h�n 
-- script viet hoa By http://tranhba.com 2007.08.08 

TB_LIBAO = 
{ 
1000000,-- script viet hoa By http://tranhba.com  t�ng x�c su�t 
{0.968, {"Qu�c kh�nh huy ch��ng ", 6,1,1496,1,}},-- script viet hoa By http://tranhba.com  qu�c kh�nh huy ch��ng 
{0.003, {"T�ng b�o �� m�nh v�n 1", 4,490,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 1 
{0.001, {"T�ng b�o �� m�nh v�n 2", 4,491,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 2 
{0.003, {"T�ng b�o �� m�nh v�n 3", 4,492,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 3 
{0.003, {"T�ng b�o �� m�nh v�n 4", 4,493,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 4 
{0.003, {"T�ng b�o �� m�nh v�n 5", 4,494,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 5 
{0.003, {"T�ng b�o �� m�nh v�n 6", 4,495,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 6 
{0.003, {"T�ng b�o �� m�nh v�n 7", 4,496,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 7 
{0.003, {"T�ng b�o �� m�nh v�n 8", 4,497,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 8 
{0.001, {"T�ng b�o �� m�nh v�n 9", 4,498,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 9 
{0.003, {"T�ng b�o �� m�nh v�n 10",4,499,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 10 
{0.003, {"T�ng b�o �� m�nh v�n 11",4,500,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 11 
{0.003, {"T�ng b�o �� m�nh v�n 12",4,501,1,1,}}, -- script viet hoa By http://tranhba.com  b�n �� m�nh v�n 12 
} 
GUOQINGLIHE_DATE_END = 070924 -- script viet hoa By http://tranhba.com  h�p qu� cu�i c�ng th�i gian s� d�ng 
function main(sel) 
local nData = tonumber(GetLocalDate("%y%m%d")) 
if nData >= GUOQINGLIHE_DATE_END then 
Talk(1,"","Ch�a �� ch� tr�ng , th�nh an l�p trang b� .") 
return 0 
end 
if ( CalcFreeItemCellCount() < 5 ) then 
Talk(1,"","Ch�a �� ch� tr�ng , th�nh an l�p trang b� .") 
return 1 
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
Msg2Player(format("Ng�i ��t ���c 1 <color=yellow>%s<color>",item[1])); 
WriteLog(format("[GuoQingLiHe]\t date:%s \t Account:%s \t Name:%s \t GetItem:%s \t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),item[1])); 

end
