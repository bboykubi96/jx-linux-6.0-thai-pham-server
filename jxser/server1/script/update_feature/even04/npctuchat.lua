/*
	Author:	DarkMoon
	File:	freescript_autonpcchat.lua
	Date:	11/15/16	11:50 pm
*/


tbChat = 
{
	"<color=cyan>Ch�c M�ng:!  <color=red>N�m M�i!!!<color>",
	"<color=cyan>An Khang Th�nh V��ng! !",
}

/* danh cho npc vina game hoac npc doi thoai
  vd: 
    function main()
     npcchat_npcmacdinh()
  end
 */
function npcchat_npcmacdinh1()
	local nNpcIndex = GetLastDiagNpc();
	local nTaskChat = GetNpcParam(nNpcIndex,1);
	if nTaskChat == 0 then 
		SetNpcParam(nNpcIndex,1,1); --set index ®Çu tiªn cña table npc chat.
		SetNpcTimer(nNpcIndex,20); --Tuú chØnh thêi gian npc tù chat (20 s)
	end
end

/* danh cho npc duoc add them vao server (doi voi npc doi thoai)
   vi du:
    local nNpcIndex = AddNpc(258,1,SubWorldID2Idx(53),200*8*32,200*16*32)
   npcchat_npcadd(nNpcIndex)
*/
function npcchat_npcadd(nNpcIndex)
	local nTaskChat = GetNpcParam(nNpcIndex,1);
	if nTaskChat == 0 then 
		SetNpcParam(nNpcIndex,1,1); --set index ®Çu tiªn cña table npc chat.
		SetNpcTimer(nNpcIndex,20); --Tuú chØnh thêi gian npc tù chat (20 s)
	end
end

function OnTimer(nNpcIndex,nTimeOut)
	local nTaskChat = GetNpcParam(nNpcIndex,1);
	if not nTaskChat or nTaskChat <= 0 then 
		nTaskChat = 1;
	else
		nTaskChat = nTaskChat + 1;
	end

	if nTaskChat > getn(tbChat) then 	
		nTaskChat = 1;
	end

	NpcChat(nNpcIndex,tbChat[nTaskChat],1);
	SetNpcParam(nNpcIndex,1,nTaskChat)
	SetNpcTimer(nNpcIndex,20);
end