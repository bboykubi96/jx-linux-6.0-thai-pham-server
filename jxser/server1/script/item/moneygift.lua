function main(nItemIndex) 
Say("Qu�c kh�nh vui v� # ng�i c� th� d�n �i l� ph�m ��n c�c ��i th�nh th� l�m l� ra m�t quan ��i l�y ng�n l��ng . y�u c�u 50 c�p tr� l�n , hoa h�ng tr��ng m�c ch� c� th� c� 3 ng��i tham gia .", 2, 
" bu�ng tha cho n�n v�t ph�m ./#del_moneygift("..nItemIndex..")", 
" bu�ng tha cho /OnCancel"); 
return 1; 
end; 

function OnCancel() 
end; 

function del_moneygift(nItemIndex) 
RemoveItemByIndex(nItemIndex); 
end;