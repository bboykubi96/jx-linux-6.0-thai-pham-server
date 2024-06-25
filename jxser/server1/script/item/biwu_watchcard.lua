IncludeLib("ITEM") 
function main( nItemIdx ) 
local nMon = GetItemParam(nItemIdx,1) 
local nDay = GetItemParam(nItemIdx,2) 
-- script viet hoa By http://tranhba.com Say("Ng­¬i ng­êi xem kho¸n ®Ých sö dông nhËt kú v× <color=yellow>2005 n¨m "..nMon.." th¸ng "..nDay.." ngµy <color> . ng­êi xem kho¸n chØ cã thÓ sö dông mét lÇn , sö dông sau , lµ ®­îc ë ng­êi xem kho¸n ®Ých nhËt kú lóc ®o¹n bªn trong ®¨ng vµo ®¹i héi vâ l©m tæng quyÕt cuéc so tµi phôc vô khÝ , xem cuéc chiÕn . du kú kh«ng cã hiÖu qu¶ . ng­¬i nhÊt ®Þnh ph¶i b©y giê sö dông sao ? ", 2,"Ta muèn b©y giê sö dông /#sure2usewatchcard("..nItemIdx..")","Cßn lµ chê ®i /OnCancel") 
Say("ThËt xin lçi , ng­¬i sö dông ng­êi xem cuèn ®· qua kú #",0); 
end 

function sure2usewatchcard(nItemIdx) 
local count = CalcEquiproomItemCount( 6, 1, 443, 1 ) 
if ( count == 0 ) then 
Say("Di ? ng­¬i ng­êi xem kho¸n ®©y ? kh«ng thÊy n÷a/råi # kh«ng thÊy sÏ dïng kh«ng ®­îc a #", 0) 
return 
end 
local nMon = GetItemParam(nItemIdx,1) 
local nDay = GetItemParam(nItemIdx,2) 
	local nDate = nMon * 100 + nDay
AddExtPoint(1,nDate) 
Say("Ng­¬i ng­êi xem kho¸n ®Ých sö dông nhËt kú v× <color=yellow>2005 n¨m "..nMon.." th¸ng "..nDay.." ngµy <color> , xin/mêi ë h÷u hiÖu kú ngµy ®ã ®¨ng lôc ®¹i héi vâ l©m tranh tµi phôc vô khÝ quan s¸t tranh tµi . ", 0) 
DelCommonItem(6,1,443) 
end 

function GetDesc( nItem ) 
local szDesc; 
local nIssueID, nIDCount; 
local nPayYear1, nPayMonth1, nPayDay1, nPayYear2, nPayMonth2, nPayDay2; 

nPayYear1 = 2005 
nPayMonth1 = GetItemParam( nItem, 1 ) 
nPayDay1 = GetItemParam( nItem, 2 ) 

szDesc = "" 
szDesc = szDesc..format( "\n ®¹i héi vâ l©m quyÕt cuéc so tµi ng­êi xem kho¸n ng­êi xem nhËt kú #<color=yellow>%04d n¨m %02d th¸ng %02d ngµy <color=> toµn ngµy ", nPayYear1, nPayMonth1, nPayDay1 ); 
return szDesc; 
end 
