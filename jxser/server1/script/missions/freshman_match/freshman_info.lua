CP_MAXROUND = 40 

CP_HELP_FRESHMAN = { 
" tranh t�i <color=yellow> v� l�m t�n t� li�n cu�c so t�i <color> m�c ��ch l� v� giang h� tay m�i ��ch ti�n b� , v� ��ng m�n nh�ng kh�c nh� ch�i s�ng l�p so t�i v� ngh� ��ch c� h�i , �� cao tay m�i ��ch v� c�ng k� n�ng , cho ��ng m�n huynh �� trao ��i ��ch c� h�i , tr� gi�p tay m�i th�i quen giang h� ��ch cu�c s�ng . ", 
"<color=yellow># ghi danh �i�u ki�n <color>: c�p b�c t� 50 ��n 90 c�p , �i g�p v� l�m t�n t� li�n cu�c so t�i quan vi�n ghi danh ."..CP_MAXROUND.." tr�ng .", 
"<color=yellow> tranh t�i th�i gian <color>: v� l�m t�n t� li�n cu�c so t�i t� 2005 n�m 6 th�ng 1 ng�y ��n 2005 n�m 6 th�ng 10 ng�y k�t th�c . <color=yellow>20:00<color> b�t ��u ��n <color=yellow>23:00<color> k�t th�c . m�i <color=yellow>3<color> gi� t�ng c�ng c� <color=yellow>9<color> tr�ng . m�i ��i phi�n tranh t�i ghi danh th�i gian l� 5 ph�t , tranh t�i th�i gian l� 15 ph�t .", 
" v� l�m t�n t� li�n cu�c so t�i d�a theo ph�n s� l�a ch�n tr��c n�m t�n . "..CP_MAXROUND.." � cu�c so t�i tr�ng , th�ng m�t cu�c ph�i 3 ph�n , ��nh ngang tay v� 1 ph�n , thua c�ng ch�a c� ph�n . ��n k�t th�c l�c , �� cho t� h� th�ng ch�n l�a tr��c n�m t�n , s�c phong m�n ph�i v� l�m t�n t� danh hi�u . ", 
" m�i tham gia ghi danh ��ch nh� ch�i � �� tham gia tr�nh trung , �em ��t ���c nh�t ��nh t��ng th��ng . m�i l�n tham gia m�t v�ng �em ��t ���c nh�t ��nh t��ng th��ng , ngo�i ra nh� ch�i c�n c� th� ��t ���c v�t ph�m , nh� # ph�o b�ng , huy�n tinh qu�ng th�ch , ph�c duy�n l� , ti�n th�o l� , th�y tinh . ) " 
} 

function help_freshmanmatch() 
Talk( 2, "help_freshmanmatch2", CP_HELP_FRESHMAN[ 1 ], CP_HELP_FRESHMAN[ 2 ]) 
end 

function help_freshmanmatch2() 
Talk( 2, "help_freshmanmatch3", CP_HELP_FRESHMAN[ 3 ], CP_HELP_FRESHMAN[ 4 ]) 
end 

function help_freshmanmatch3() 
Talk( 1, "", CP_HELP_FRESHMAN[ 5 ]) 
end 