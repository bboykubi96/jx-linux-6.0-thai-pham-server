-- script viet hoa By http://tranhba.com description: ���ng m�n ���ng th� 20 c�p nhi�m v� # xu�t s� nhi�m v� 
-- script viet hoa By http://tranhba.com author: yuanlan 
-- script viet hoa By http://tranhba.com date: 2003/3/11 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-22), gia nh�p m�n ph�i nhi�m v� c�p b�c y�u c�u 
-- script viet hoa By http://tranhba.com Dan_Deng(2003-07-24), gia nh�p tr� l�i m�n ph�i nhi�m v� 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-13) 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-09-21) l�n n�a thi�t k� tr� l�i m�n ph�i c�ng tr�n ph�i tuy�t h�c t��ng quan 
-- script viet hoa By http://tranhba.com  Update#Dan_Deng(2003-10-27) l�m tr�ng ph�n s� m�n nhi�m v� gia nh�p h�y b� nhi�m v� ch�c n�ng , c�ng v�i c�ng m�i m�n ph�i ��i �ng 

Include("\\script\\global\\skills_table.lua")
Include([[\script\event\teachersday06_v\prize_qingyika.lua]]); 
Include("\\script\\task\\lv120skill\\head.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_function.lua")	-- script viet hoa By http://tranhba.com  ����Ͷʦ
-- script viet hoa By http://tranhba.com dinhhq: new lunar year 2011 
Include("\\script\\vng_event\\LunarYear2011\\npc\\mastergift.lua")

function main() 


oldentencetn() 
end; 

function oldentencetn() 
-- script viet hoa By http://tranhba.com  if (check_skill() == 0) then 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end 
local UTask_tr = GetTask(4); 
local nFactID = GetLastFactionNumber(); 



local tbDes = {"Ta mu�n chuy�n ��i v� m�n ph�i Thi�n Nh�n/#daiyitoushi_main(7)","Mu�n m�i d�y nh�ng chuy�n kh�c /common_talk"}; 

Say("G�n nh�t ta b� b�n nhi�u vi�c , ng��i c� chuy�n g� ?", getn(tbDes), tbDes); 
end 


function no() 
end 
