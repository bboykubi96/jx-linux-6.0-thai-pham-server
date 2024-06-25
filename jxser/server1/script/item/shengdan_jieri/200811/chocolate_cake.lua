Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\shengdan_jieri\\200811\\head.lua");

tb_chocolate_award = 
{ 
{szName="1 danh v�ng ", nRepute = 1, nRate = 9.8545}, 
{szName="2 danh v�ng ", nRepute = 2, nRate = 23}, 
{szName="3 danh v�ng ", nRepute = 3, nRate = 25}, 
{szName="10 danh v�ng ", nRepute = 10, nRate = 8}, 
{szName="50 danh v�ng ", nRepute = 50, nRate = 1}, 
{szName=" ��nh n��c � sa ph�t quan ", tbProp={0, 160}, nQuality = 1, nRate = 0.006}, 
{szName=" ��nh n��c l�a m�ng xanh tr��ng sam ", tbProp={0, 159}, nQuality = 1, nRate = 0.02}, 
{szName=" ��nh n��c ng�n t�m �ai l�ng ", tbProp={0, 163}, nQuality = 1, nRate = 0.1}, 
{szName=" ��nh n��c x�ch quy�n m�m ngoa ", tbProp={0, 161}, nQuality = 1, nRate = 0.04}, 
{szName=" ��nh n��c t� ��ng h� c� tay ", tbProp={0, 162}, nQuality = 1, nRate = 0.1}, 
{szName=" an bang b�ng tinh th�ch gi�y chuy�n ", tbProp={0, 164}, nQuality = 1, nRate = 0.005}, 
{szName=" an bang m�u g� th�ch chi�c nh�n ", tbProp={0, 167}, nQuality = 1, nRate = 0.015}, 
{szName=" an bang hoa c�c th�ch chi�c nh�n ", tbProp={0, 165}, nQuality = 1, nRate = 0.015}, 
{szName=" an bang �i�n ho�ng th�ch ng�c b�i ", tbProp={0, 166}, nQuality = 1, nRate = 0.02}, 
{szName=" ��ng s�t ph� th�y ng�c h�ng v�ng ", tbProp={0, 146}, nQuality = 1, nRate = 0.007}, 
{szName=" ��ng s�t b�ch kim t� ph��ng gi�i ", tbProp={0, 145}, nQuality = 1, nRate = 0.007}, 
{szName=" ��ng s�t b�ch kim �i�u long gi�i ", tbProp={0, 143}, nQuality = 1, nRate = 0.007}, 
{szName=" ��ng s�t b�ch ng�c c�n kh�n b�i ", tbProp={0, 144}, nQuality = 1, nRate = 0.007}, 
{szName="6 li�n huy�n tinh qu�ng th�ch ", tbProp={6, 1, 147, 6, 0, 0}, nRate = 1}, 
{szName="7 li�n huy�n tinh qu�ng th�ch ", tbProp={6, 1, 147, 7, 0, 0}, nRate = 0.2}, 
{szName="8 li�n huy�n tinh qu�ng th�ch ", tbProp={6, 1, 147, 8, 0, 0}, nRate = 0.05}, 
{szName=" ti�u b�ng tinh ", tbProp={6, 1, 1850, 1, 0, 0}, nRate = 0.07, nExpiredTime = 20090111}, 
{szName=" th�n b� qu�ng th�ch ", tbProp={6, 1, 398, 1, 0, 0}, nRate = 0.002}, 
{szName=" m�u tr�ng c�y n�n ", tbProp={6, 1, 1851, 1, 0, 0}, nRate = 6, nExpiredTime = 20090111}, 
{szName=" m�u xanh l� c�y c�y n�n ", tbProp={6, 1, 1852, 1, 0, 0}, nRate = 3, nExpiredTime = 20090111}, 
{szName=" m�t to th�n ch�y m�nh v�n (1/9) /9)", tbProp={4, 594, 1, 1, 0, 0}, nRate = 0.0015}, 
{szName=" m�t to th�n ch�y m�nh v�n (3/9) /9)", tbProp={4, 596, 1, 1, 0, 0}, nRate = 0.0015}, 
{szName=" m�t to th�n ch�y m�nh v�n (5/9) /9)", tbProp={4, 598, 1, 1, 0, 0}, nRate = 0.0015}, 
{szName=" m�t to th�n ch�y m�nh v�n (6/9) /9)", tbProp={4, 599, 1, 1, 0, 0}, nRate = 0.0015}, 
{szName=" m�t to th�n ch�y m�nh v�n (8/9) /9)", tbProp={4, 601, 1, 1, 0, 0}, nRate = 0.0015}, 
{szName=" b�ng h�n ��n ch� phi �ao m�nh v�n (2/9)", tbProp={4, 981, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b�ng h�n ��n ch� phi �ao m�nh v�n (3/9)", tbProp={4, 982, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b�ng h�n ��n ch� phi �ao m�nh v�n (4/9)", tbProp={4, 983, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b�ng h�n ��n ch� phi �ao m�nh v�n (7/9)", tbProp={4, 986, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b�ng h�n ��n ch� phi �ao m�nh v�n (9/9)", tbProp={4, 988, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b�n kh�ng h�ng ma gi�i �ao m�nh v�n (1/9) /9)", tbProp={4, 585, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b�n kh�ng h�ng ma gi�i �ao m�nh v�n (4/9) /9)", tbProp={4, 588, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b�n kh�ng h�ng ma gi�i �ao m�nh v�n (6/9) /9)", tbProp={4, 590, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b�n kh�ng h�ng ma gi�i �ao m�nh v�n (8/9) /9)", tbProp={4, 592, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" b�n kh�ng h�ng ma gi�i �ao m�nh v�n (9/9) /9)", tbProp={4, 593, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" u minh s�ng m�nh v�n (2/9) /9)", tbProp={4, 685, 1, 1, 0, 0}, nRate = 0.008}, 
{szName=" u minh s�ng m�nh v�n (3/9) /9)", tbProp={4, 686, 1, 1, 0, 0}, nRate = 0.008}, 
{szName=" u minh s�ng m�nh v�n (5/9) /9)", tbProp={4, 688, 1, 1, 0, 0}, nRate = 0.008}, 
{szName=" u minh s�ng m�nh v�n (6/9) /9)", tbProp={4, 689, 1, 1, 0, 0}, nRate = 0.008}, 
{szName=" u minh s�ng m�nh v�n (9/9) /9)", tbProp={4, 692, 1, 1, 0, 0}, nRate = 0.008}, 
{szName=" ng�n n�m h�n thi�t m�nh v�n (3/9) /9)", tbProp={4, 704, 1, 1, 0, 0}, nRate = 0.004}, 
{szName=" ng�n n�m h�n thi�t m�nh v�n (4/9) /9)", tbProp={4, 705, 1, 1, 0, 0}, nRate = 0.004}, 
{szName=" ng�n n�m h�n thi�t m�nh v�n (5/9) /9)", tbProp={4, 706, 1, 1, 0, 0}, nRate = 0.004}, 
{szName=" ng�n n�m h�n thi�t m�nh v�n (7/9) /9)", tbProp={4, 708, 1, 1, 0, 0}, nRate = 0.004}, 
{szName=" ng�n n�m h�n thi�t m�nh v�n (9/9) /9)", tbProp={4, 710, 1, 1, 0, 0}, nRate = 0.004}, 
{szName=" t�m gi�ng ng�c tr� m�nh v�n (2/6) /6)", tbProp={4, 802, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" t�m gi�ng ng�c tr� m�nh v�n (4/6) /6)", tbProp={4, 804, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" t�m gi�ng ng�c tr� m�nh v�n (5/6) /6)", tbProp={4, 805, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" t�m gi�ng ng�c tr� m�nh v�n (6/6) /6)", tbProp={4, 806, 1, 1, 0, 0}, nRate = 0.005}, 
{szName=" t� ho�ng ph��ng nghi �ao m�nh v�n (1/9) /9)", tbProp={4, 630, 1, 1, 0, 0}, nRate = 0.01}, 
{szName=" t� ho�ng ph��ng nghi �ao m�nh v�n (3/9) /9)", tbProp={4, 632, 1, 1, 0, 0}, nRate = 0.01}, 
{szName=" t� ho�ng ph��ng nghi �ao m�nh v�n (4/9) /9)", tbProp={4, 633, 1, 1, 0, 0}, nRate = 0.01}, 
{szName=" t� ho�ng ph��ng nghi �ao m�nh v�n (6/9) /9)", tbProp={4, 635, 1, 1, 0, 0}, nRate = 0.01}, 
{szName=" u l�ng kim x� d�y c�t t�c m�nh v�n (2/6) /6)", tbProp={4, 826, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" u l�ng kim x� d�y c�t t�c m�nh v�n (3/6) /6)", tbProp={4, 827, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" u l�ng kim x� d�y c�t t�c m�nh v�n (4/6) /6)", tbProp={4, 828, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" u l�ng kim x� d�y c�t t�c m�nh v�n (6/6) /6)", tbProp={4, 830, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" c�ng th� kh�ng long h� c� tay m�nh v�n (1/6) /6)", tbProp={4, 855, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" c�ng th� kh�ng long h� c� tay m�nh v�n (2/6) /6)", tbProp={4, 856, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" c�ng th� kh�ng long h� c� tay m�nh v�n (3/6) /6)", tbProp={4, 857, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" c�ng th� kh�ng long h� c� tay m�nh v�n (5/6) /6)", tbProp={4, 859, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" ng� long Thi�n m�n th�c y�u ho�n m�nh v�n (1/6)", tbProp={4, 1152, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" ng� long Thi�n m�n th�c y�u ho�n m�nh v�n (3/6)", tbProp={4, 1154, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" ng� long Thi�n m�n th�c y�u ho�n m�nh v�n (5/6)", tbProp={4, 1156, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" ng� long Thi�n m�n th�c y�u ho�n m�nh v�n (6/6)", tbProp={4, 1157, 1, 1, 0, 0}, nRate = 0.007}, 
{szName=" l�ng nh�c v� c�c huy�n ng�c b�i m�nh v�n (1/6) /6)", tbProp={4, 879, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" l�ng nh�c v� c�c huy�n ng�c b�i m�nh v�n (2/6) /6)", tbProp={4, 880, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" l�ng nh�c v� c�c huy�n ng�c b�i m�nh v�n (4/6) /6)", tbProp={4, 882, 1, 1, 0, 0}, nRate = 0.003}, 
{szName=" h�n thi�t vinh d� l�nh b�i ", tbProp={6, 1, 1257, 1, 0, 0}, nRate = 10}, 
{szName=" ��ng xanh vinh d� l�nh b�i ", tbProp={6, 1, 1256, 1, 0, 0}, nRate = 1}, 
{szName=" b�c tr�ng vinh d� l�nh b�i ", tbProp={6, 1, 1255, 1, 0, 0}, nRate = 1}, 
{szName=" ho�ng kim vinh d� l�nh b�i ", tbProp={6, 1, 1254, 1, 0, 0}, nRate = 0.02}, 
{szName=" v� l�m b� t�ch h", tbProp={6, 1, 26, 1, 0, 0}, nRate = 0.1}, 
{szName=" T�y T�y Kinh ", tbProp={6, 1, 22, 1, 0, 0}, nRate = 0.1}, 
{szName=" m�m n�u t�m tr�i qua ", tbProp={6, 1, 12, 1, 0, 0}, nRate = 2}, 
{szName=" thi�t La H�n ", tbProp={6, 1, 23, 1, 0, 0}, nRate = 5}, 
{szName=" th�n b� ��i bao ti�n l� x� ", tbProp={6, 1, 402,1, 0, 0}, nRate = 3}, 

}; 

function main(nItemIndex) 
christmas_resettask(); 
if GetItemParam(nItemIndex, 1) ~= 0 and GetItemParam(nItemIndex, 1) <= tonumber(GetLocalDate("%Y%m%d")) then 
Talk(1,"","N�n v�t ph�m �� qua k� ") 
return 0 
end 
if (CalcFreeItemCellCount() < 20) then 
Say("��i hi�p ��ch trang b� �� ��y !", 0); 
return 1; 
end 
	if (100 + GetTask(christmas_getexp_taskid) <= GetTask(christmas_bingjing_taskid))	then
		SetTask(christmas_getexp_taskid, 100 + GetTask(christmas_getexp_taskid));
AddOwnExp(1000000); 
tbAwardTemplet:GiveAwardByList(tb_chocolate_award, "Ho# #ng gi#g sinh 2008_B#h Kem Socola"); 
else 
Say("��i hi�p �� ��n ��t cao nh�t kinh nghi�m th��ng h�n , kh�ng th� ti�p t�c s� d�ng b�nh cake .", 0); 
return 1; 
end 
end