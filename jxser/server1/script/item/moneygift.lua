function main(nItemIndex) 
Say("Quèc kh¸nh vui vÎ # ngµi cã thÓ dÉn ®i lÔ phÈm ®Õn c¸c ®¹i thµnh thŞ lµm lÔ ra m¾t quan ®æi lÊy ng©n l­îng . yªu cÇu 50 cÊp trë lªn , hoa hång tr­¬ng môc chØ cã thÓ cã 3 ng­êi tham gia .", 2, 
" bu«ng tha cho nªn vËt phÈm ./#del_moneygift("..nItemIndex..")", 
" bu«ng tha cho /OnCancel"); 
return 1; 
end; 

function OnCancel() 
end; 

function del_moneygift(nItemIndex) 
RemoveItemByIndex(nItemIndex); 
end;