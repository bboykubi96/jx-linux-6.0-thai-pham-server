tbVNGWORDPOS= tbVNGWORDPOS or {} 
tbVNGWORDPOS.tbOtherMap = { 
{523,1579,3121 ,"Tr®ng s∏ng tr n t≠¨ng d≠¨ng ",}, 
{521,1579,3121 ,"Tr®ng s∏ng tr n thµnh Æ´ ",}, 
{520,1579,3121 ,"Tr®ng s∏ng tr n ph≠Óng t≠Íng ",}, 
{525,1579,3121 ,"Tr®ng s∏ng tr n ßπi L˝ ",}, 
{524,1579,3121 ,"Tr®ng s∏ng tr n D≠¨ng Ch©u ",}, 
{522,1579,3121 ,"Tr®ng s∏ng tr n bi÷n kinh ",}, 
{526,1579,3121 ,"Tr®ng s∏ng tr n tr≠Ìc khi an ",}, 
{55,1602,3125 ,"Hoa Æµo nguy™n ",}, 
}; 

function tbVNGWORDPOS:GotoOtherMap() 
local tab_Content = {}; 
local nCount = getn(self.tbOtherMap); 
for i = 1, nCount do 
tinsert(tab_Content, self.tbOtherMap[i][4].."/#tbVNGWORDPOS:GotoStepPos( "..i..")"); 
end 
tinsert(tab_Content,"RÍi Æi /no"); 
Say("Th«n hµnh phÔ , Æ’n ng≠¨i ngh‹ Æi Æﬁa ph≠¨ng .", getn(tab_Content), tab_Content); 
end 

function tbVNGWORDPOS:GotoStepPos(nIdx) 
local tbOtherMap = self.tbOtherMap[nIdx]; 
NewWorld(tbOtherMap[1], tbOtherMap[2], tbOtherMap[3]); 
SetFightState(0); 
Msg2Player("MÍi ngÂi h∂o , chÛng ta Æi "..tbOtherMap[4].." Æi "); 
end 