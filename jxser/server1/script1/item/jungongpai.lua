--zero 2007-07-30
IncludeLib("SETTING");
JUNGONGPAI_exp={
	100000,
	{2000000,30},
	{3000000,40},
	{5000000,30}}
function main(nItem)	
	local nEndYear= GetItemParam(nItem, 1);
	local nMonthDay= GetItemParam(nItem, 2);
	

	
	AddOwnExp(random(2000000,5000000))

end

function GetDesc(nItem)
	local nEndYear= GetItemParam(nItem, 1);
	local nMonthDay= GetItemParam(nItem, 2);
	local nEndMonth=floor(nMonthDay/100);
	local nEndDay=mod(nMonthDay,100);
	return "Thêi h¹n sö dông:"..nEndYear.."n¨m"..nEndMonth.."nguyÖt "..nEndDay.."nhËt ";
end