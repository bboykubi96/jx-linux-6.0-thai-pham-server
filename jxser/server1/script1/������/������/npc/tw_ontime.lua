-- script viet hoa By http://tranhba.com  hai hå khu Thiªn v­¬ng gióp nhËp m«n nhiÖm vô ch­ng cÊt r­îu tİnh giê ch©n vèn 
-- script viet hoa By http://tranhba.com  Update: Dan_Deng(2003-08-16) 

function OnTimer() 
StopTimer() -- script viet hoa By http://tranhba.com  kÕt thóc tİnh giê 
Msg2Player("Ch­ng cÊt r­îu thêi gian ®· ®Õn #") 
SetTask(38,SetByte(GetTask(38),1,80)) 
end; 
