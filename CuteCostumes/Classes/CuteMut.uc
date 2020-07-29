////////////////////////////////////////////////////////////////////////////
//
//	Cute Costumes,
//		a modified and extended version of MiniCostumePack.
//
//	Originally made by [C|AK]|[Forever]
//		https://steamcommunity.com/sharedfiles/filedetails/?id=1166248573
//
//	Customized by no7sag  --  Last Update: 31.1O.2O18
//		Modified: Price and texts
//		Added:	Husk Mask, Siren Mask, Elephant Hat, Chain Chomp Hat,
//				Kirby Hat, Peach Hat, Fox Ears, Aureola, Fairy Wings,
//				Pikachu's Tail, Yoshi Hat, Aqua Hair, Bunny Ears,
//				Daisy Hat, Zelda Hat
//				
//  ServerPerks requirement removed by Vel-San - 29.07.2020
//
////////////////////////////////////////////////////////////////////////////
//
//	Reminder: cX: + is up, - is down
//			  cY: + is back, - is front
//			  cZ: + is left, - is right
//
////////////////////////////////////////////////////////////////////////////

class CuteMut extends Mutator;

simulated function PostBeginPlay()
{
   SetTimer(0.1,false)  ;
}

 function Timer()
{
	local KFGameType KF;

	KF = KFGameType(Level.Game);
	if ( KF!=None )
	{
		if( KF.KFLRules!=None )
			KF.KFLRules.Destroy();
		KF.KFLRules = Spawn(class'CuteCostumes.CuteMutLevelRules');
	}
}

defaultproperties
{	
	// Mut Vars
    GroupName="KF-Costumes"
    FriendlyName="Cute Costumes NoSP - v1.0"
    Description="Add cute and cheap costumes to the trader in 'Off-Perk' section | Removed ServerPerks requirement by Vel-San"
	
    bAddToServerPackages=True
    bAlwaysRelevant=True
    RemoteRole=ROLE_SimulatedProxy
}
