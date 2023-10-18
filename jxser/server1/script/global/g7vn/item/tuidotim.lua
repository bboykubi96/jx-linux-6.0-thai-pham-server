Include("\\script\\lib\\awardtemplet.lua")

nWidth = 2
nHeight = 4
nFreeItemCellLimit = 1

function main(nIndexItem)
dofile("script/global/g7vn/item/tuidotim.lua")
local ranchung=random(1,6)
if ranchung==1 then
	local ranvk=random(1,3)
		if ranvk<=2 then
			local randong=random(1,6)
			if randong==1 then
				AddQualityItem(2,0,0,random(0,5),random(7,10),random(0,4),0,-1,0,0,0,0,0)
			elseif randong==2 then
				AddQualityItem(2,0,0,random(0,5),random(7,10),random(0,4),0,-1,-1,0,0,0,0)
			elseif randong==3 then
				AddQualityItem(2,0,0,random(0,5),random(7,10),random(0,4),0,-1,-1,-1,0,0,0)
			elseif randong==4 then
				AddQualityItem(2,0,0,random(0,5),random(7,10),random(0,4),0,-1,-1,-1,-1,0,0)
			elseif randong==5 then
				AddQualityItem(2,0,0,random(0,5),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong==6 then
				AddQualityItem(2,0,0,random(0,5),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
		else
			local randong=random(1,6)
			if randong==1 then
				AddQualityItem(2,0,1,random(0,2),random(7,10),random(0,4),0,-1,0,0,0,0,0)
			elseif randong==2 then
				AddQualityItem(2,0,1,random(0,2),random(7,10),random(0,4),0,-1,-1,0,0,0,0)
			elseif randong==3 then
				AddQualityItem(2,0,1,random(0,2),random(7,10),random(0,4),0,-1,-1,-1,0,0,0)
			elseif randong==4 then
				AddQualityItem(2,0,1,random(0,2),random(7,10),random(0,4),0,-1,-1,-1,-1,0,0)
			elseif randong==5 then
				AddQualityItem(2,0,1,random(0,2),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong==6 then
				AddQualityItem(2,0,1,random(0,2),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
		end
elseif ranchung==2 then
			local randong=random(1,6)
			if randong==1 then
				AddQualityItem(2,0,2,random(0,13),random(7,10),random(0,4),0,-1,0,0,0,0,0)
			elseif randong==2 then
				AddQualityItem(2,0,2,random(0,13),random(7,10),random(0,4),0,-1,-1,0,0,0,0)
			elseif randong==3 then
				AddQualityItem(2,0,2,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,0,0,0)
			elseif randong==4 then
				AddQualityItem(2,0,2,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,-1,0,0)
			elseif randong==5 then
				AddQualityItem(2,0,2,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong==6 then
				AddQualityItem(2,0,2,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
elseif ranchung==3 then
			local randong=random(1,6)
			if randong==1 then
				AddQualityItem(2,0,7,random(0,13),random(7,10),random(0,4),0,-1,0,0,0,0,0)
			elseif randong==2 then
				AddQualityItem(2,0,7,random(0,13),random(7,10),random(0,4),0,-1,-1,0,0,0,0)
			elseif randong==3 then
				AddQualityItem(2,0,7,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,0,0,0)
			elseif randong==4 then
				AddQualityItem(2,0,7,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,-1,0,0)
			elseif randong==5 then
				AddQualityItem(2,0,7,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong==6 then
				AddQualityItem(2,0,7,random(0,13),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
elseif ranchung==4 then
			local randong=random(1,6)
			if randong==1 then
				AddQualityItem(2,0,8,random(0,1),random(7,10),random(0,4),0,-1,0,0,0,0,0)
			elseif randong==2 then
				AddQualityItem(2,0,8,random(0,1),random(7,10),random(0,4),0,-1,-1,0,0,0,0)
			elseif randong==3 then
				AddQualityItem(2,0,8,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,0,0,0)
			elseif randong==4 then
				AddQualityItem(2,0,8,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,-1,0,0)
			elseif randong==5 then
				AddQualityItem(2,0,8,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong==6 then
				AddQualityItem(2,0,8,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
elseif ranchung==5 then
			local randong=random(1,6)
			if randong==1 then
				AddQualityItem(2,0,6,random(0,1),random(7,10),random(0,4),0,-1,0,0,0,0,0)
			elseif randong==2 then
				AddQualityItem(2,0,6,random(0,1),random(7,10),random(0,4),0,-1,-1,0,0,0,0)
			elseif randong==3 then
				AddQualityItem(2,0,6,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,0,0,0)
			elseif randong==4 then
				AddQualityItem(2,0,6,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,-1,0,0)
			elseif randong==5 then
				AddQualityItem(2,0,6,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong==6 then
				AddQualityItem(2,0,6,random(0,1),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
elseif ranchung==6 then
			local randong=random(1,6)
			if randong==1 then
				AddQualityItem(2,0,5,random(0,3),random(7,10),random(0,4),0,-1,0,0,0,0,0)
			elseif randong==2 then
				AddQualityItem(2,0,5,random(0,3),random(7,10),random(0,4),0,-1,-1,0,0,0,0)
			elseif randong==3 then
				AddQualityItem(2,0,5,random(0,3),random(7,10),random(0,4),0,-1,-1,-1,0,0,0)
			elseif randong==4 then
				AddQualityItem(2,0,5,random(0,3),random(7,10),random(0,4),0,-1,-1,-1,-1,0,0)
			elseif randong==5 then
				AddQualityItem(2,0,5,random(0,3),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,0)
			elseif randong==6 then
				AddQualityItem(2,0,5,random(0,3),random(7,10),random(0,4),0,-1,-1,-1,-1,-1,-1)
			end
end
end

