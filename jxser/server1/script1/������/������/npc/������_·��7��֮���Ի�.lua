-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n ng��i �i ���ng c�c chi lan ��i tho�i 

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
SetTask(1256, 2); 
return 
else 
Talk(1,"","Xong r�i , th�t xong r�i , ph�i l� t� ta ��y c� m�t v� anh h�ng h�o ki�t c� th� ti�n v�o tr�n nh� sao ? kh�ng ngh� t�i ca ca ta b� t�t b�nh �o�t �i li�u t�nh m�ng , th�t l� ��ng ti�c . # , hay l� �i h�i m�t ch�t ng��i kh�c �i .") 
return 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u ng�i ng�i ��n t�i s� th�i ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t nh�n .") 
return 
end 

i = random(0,1) 

if (i == 0) then 
Say("C�c chi lan # ��c c� phu nh�n th�t c� ph�c kh� , tr��ng phu l� m�t ng��i ng��i c�nh ng��ng ��ch ��i anh h�ng , th�t �� cho ng��i h�m m� . ",0) 
return 
end; 

if (i == 1) then 
Say("C�c chi lan # n� nh�n c� ��i tr�ng y�u nh�t ch�nh l� kh�ng mu�n g� l�i ng��i , t��ng lai c�a ta c�ng mu�n g� cho m�t thi�t c�t nhu t�nh ��ch ��i hi�p . ",0) 
end; 

end; 
