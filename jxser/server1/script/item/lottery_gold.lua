-- script viet hoa By http://tranhba.com  ho�ng kim v� s� 
-- script viet hoa By http://tranhba.com  Fanghao Wu 
-- script viet hoa By http://tranhba.com  2004.11.13 

function main( nItemIdx ) 
local szDesc; 
szDesc = "<color=yellow> v� s� may m�n d�y s� #\n\n"; 
szDesc = szDesc..Lottery_GetDesc( "lottery_gold", nItemIdx ); 
szDesc = szDesc.."<color>"; 
Talk( 1, "", szDesc ); 
return 1; 
end 

function GetDesc( nItem ) 
local szDesc; 
local nIssueID, nIDCount; 
local nPayYear1, nPayMonth1, nPayDay1, nPayYear2, nPayMonth2, nPayDay2; 

nIssueID = GetItemParam( nItem, 1 ); 
	nIDCount = GetItemParam( nItem, 4 ) -  GetItemParam( nItem, 3 ) + 1;
nPayPrizeDate1 = GetItemParam( nItem, 5 ); 
nPayPrizeDate2 = GetItemParam( nItem, 6 ); 

	nPayYear1 = 2000 + nPayPrizeDate1 / 10000;
nPayMonth1 = mod( nPayPrizeDate1 / 100, 100 ); 
nPayDay1 = mod( nPayPrizeDate1 , 100 ); 
	nPayYear2 = 2000 + nPayPrizeDate2 / 10000;
nPayMonth2 = mod( nPayPrizeDate2 / 100, 100 ); 
nPayDay2 = mod( nPayPrizeDate2 , 100 ); 

szDesc = "<color=yellow>" 
szDesc = szDesc..format( "\n v� s� ph�t ���c k� s� # th� %03d k� ", nIssueID ); 
szDesc = szDesc..format( "\n v� s� khai t��ng th�i gian # %04d-%02d-%02d 10:00", nPayYear1, nPayMonth1, nPayDay1 ); 
szDesc = szDesc..format( "\n ��i t��ng ch�n ch� th�i gian # %04d-%02d-%02d 10:00", nPayYear2, nPayMonth2, nPayDay2 ); 
szDesc = szDesc..format( "\n\n%d c� may m�n d�y s� # b�n ph�i ki�n �i�m k�ch tra x�t #\n", nIDCount ); 
szDesc = szDesc.."<color>"; 

return szDesc; 
end
