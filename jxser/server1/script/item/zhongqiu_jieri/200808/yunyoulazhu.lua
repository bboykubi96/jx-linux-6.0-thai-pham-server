-- script viet hoa By http://tranhba.com zhongchaolong 
-- script viet hoa By http://tranhba.com  d�o ch�i c�y n�n 
-- script viet hoa By http://tranhba.com 1 canh gi� b�n trong ��nh tr�ch s� ��t ���c kinh nghi�m g�p b�i 
-- script viet hoa By http://tranhba.com 100% x�c su�t �� cho 4 lo�i ��n l�ng # con b��m ��n l�ng # , # n�m gi�c tinh ��n l�ng # , # vi�n ��n l�ng # , # tr��ng ��n l�ng # ��ng th�i xu�t hi�n , t�n t�i th�i gian l� 5 ph�t . 
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\taskctrl.lua")
Include("\\script\\event\\zhongqiu_jieri\\200808\\lib\\common.lua")

local tbNpcList = 
{ 
	{szName = "��������", nLevel = 1, nNpcId = 1215, nTime = 60*5, szScriptPath = "\\script\\event\\zhongqiu_jieri\\200808\\sanyue\\denglong.lua"},
	{szName = "���ǵ���", nLevel = 1, nNpcId = 1216,nTime = 60*5, szScriptPath = "\\script\\event\\zhongqiu_jieri\\200808\\sanyue\\denglong.lua"},
	{szName = "Բ����", nLevel = 1, nNpcId = 1218, nTime = 60*5, szScriptPath = "\\script\\event\\zhongqiu_jieri\\200808\\sanyue\\denglong.lua"},
	{szName = "���ܵ���", nLevel = 1, nNpcId = 1217, nTime = 60*5, szScriptPath = "\\script\\event\\zhongqiu_jieri\\200808\\sanyue\\denglong.lua"},

} 

function main() 
zhongqiu0808_ResetTask() 
local nDate = tonumber(GetLocalDate("%y%m%d")) 
if nDate > zhongqiu0808_ItemEndTime then 
Say("N�n v�t ph�m �� qua k� .",0) 
return 0; 
end 
-- script viet hoa By http://tranhba.com  if zhongqiu0808_PlayerLimit() ~= 1 then 
-- script viet hoa By http://tranhba.com  
-- script viet hoa By http://tranhba.com  Say("Ph�i l� 50 c�p tr� l�n sung tr� gi� nh� ch�i . ", 0) 
-- script viet hoa By http://tranhba.com  return 1 
-- script viet hoa By http://tranhba.com  end 
AddSkillState(892, 1, 1, 18*60*60); 


local nMapId,nPosX,nPosY = GetWorldPos() 
	zhongqiu0808_CallNpc(%tbNpcList[random(1,getn(%tbNpcList))], nMapId, (nPosX + random(-5,5))*32, (nPosY + random(-5,5))*32 )


end
