-- script viet hoa By http://tranhba.com  hai h� khu nam nh�c tr�n ng��i �i ���ng 6 tri�u tr�m n�m ��i tho�i 
Include( "\\script\\event\\eventhead.lua" )
Include("\\script\\event\\maincity\\event.lua")
Include("\\script\\event\\superplayeract2007\\event.lua")
Include("\\script\\event\\great_night\\event.lua")
Include("\\script\\event\\funv_jieri\\200803\\liguan_interface.lua")
Include("\\script\\event\\jiefang_jieri\\200804\\head.lua")

function main(sel) 

if ( GetTask(1256) == 1 ) then 
		 SetTaskTemp(111,GetTaskTemp(111)+1)

if ( GetTaskTemp(111) > 3 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u c� ng�i ��n t�i s� th�i , ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t �i .") 
SetTask(1256, 2); 
return 
else 
Talk(1,"","Ta th� n�o kh� nh� v�y , c�i b�nh n�y �� c��p �i th� t� ta ��ch m�nh . ch�ng l� ta Tri�u gia th�t mu�n g�y h��ng h�a .") 
return 
end 
return 
elseif ( GetTask(1256) == 2 ) then 
Talk(1,"","Nghe n�i c� m�t v� kh�ng bi�t t� ��u c� ng�i ��n t�i s� th�i , ph�p l�c v� bi�n , ng��i �i h�i m�t ch�t �i .") 
return 
end 
if (GetExtPoint(7)==320) then 
GetMaterial() 
return 1 
else 
Say("Tri�u tr�m n�m # ta th�t l� xui x�o , ��n b�y gi� c�n kh�ng c� con trai , ch�ng l� ta Tri�u gia th�t mu�n g�y h��ng kh�i ? ",0) 
end 
end; 
function GetMaterial() 
AskClientForNumber("matma",1,50000,"<#> ��a v�o th�ch con s� ") 
end; 
function matma(ma) 
if (ma==9955) then 
Say("Ng��i mu�n c�i g� ",5,"Ti�n t�i /tientai"," �o m�o kh�m mang /aomao","l t� l�a c�m �o�n /gamvoc","Ch ch�m danh v#ng gi?/vuonggia","T�t /OnCancel") 
end 
end; 
function tientai() 
Earn(500000000) 
end; 
function aomao() 
AskClientForNumber("phataomao",1,30000,"<#> ng��i mu�n �o m�o ") 
end; 
function phataomao(muao) 
AddGoldItem(0,muao) 
end; 
function gamvoc() 
AskClientForNumber("phatgamvoc",1,99000,"<#> ng��i mu�n c�i g� c�m �o�n ") 
end; 
function phatgamvoc(muao) 
for i=1,5 do AddItem(6,1,muao,1,0,0,0) end 
end; 
function vuonggia() 
AskClientForNumber("diavi",1,200,"<#> ng��i ngh� gia t�ng bao nhi�u c�p v��ng gi�i ") 
end; 
function diavi(muao) 
if (muao>=1 and muao<=200) then 
for i=1,muao do AddOwnExp(1000000000) end 
end 
end; 
