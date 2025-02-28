//*******************************
//			NPC Globals
//*******************************

var C_NPC DiegoNpc;
var C_NPC DraxNpc;
var C_NPC KirgoNpc;
var C_NPC OrryNpc;
var C_NPC RatfordNpc;
var C_NPC WhistlerNpc;
func void B_InitNpcGlobals() 
{
	DiegoNpc = Hlp_GetNpc(PC_Thief);
	DraxNpc = Hlp_GetNpc(ORG_819_Drax);
	KirgoNpc = Hlp_GetNpc(GRD_251_Kirgo);
	OrryNpc = Hlp_GetNpc(GRD_254_Orry);
	RatfordNpc = Hlp_GetNpc(ORG_818_Ratford);
	WhistlerNpc = Hlp_GetNpc(STT_309_Whistler);
};
