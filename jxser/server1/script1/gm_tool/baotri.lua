IncludeLib("SETTING")
Include("\\script\\gm_tool\\config.lua")
CONST_LEFT_TIME = 10
leftTime = 10
offTime = 5
function OnTimer()    
if(GetTask(TASK_BAOTRI) ~= 1) then        
StopTimer()   
end    
local strThongBao = "Server s� ��ng �� b�o tr� trong v�ng %d ph�t n�a. D� ki�n th�i gian b�o tr� l� %d ph�t. ��i hi�p h�y b� tr� th�i gian ngh� ng�i h�p l�. Tr�n tr�ng!"    
local strBaoTri = "Server ��ng �� b�o tr�. D� ki�n th�i gian b�o tr� l� %d ph�t. ��i hi�p h�y b� tr� th�i gian ngh� ng�i h�p l�. Tr�n tr�ng!"     
if leftTime > 0 then         
Msg2SubWorld(format(strThongBao,leftTime,offTime))         
leftTime = leftTime - 1     
else        
 Msg2SubWorld(format(strBaoTri,offTime))         
leftTime = CONST_LEFT_TIME         
SetTask(TASK_BAOTRI,0)                  
StopTimer()   
end
end 