func void B_GiveDeathInv ()
{
	//-------- Abfragen, ob die Trophy schon mal verteilt wurde --------
	if	(self.aivar[AIV_MM_DEATHINVGIVEN])
	{
		return;
	};
	
	//-------- Merken --------
	self.aivar[AIV_MM_DEATHINVGIVEN] = TRUE;
};










