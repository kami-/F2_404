// F2 - Folk Group Markers
// Credits: Please see the F2 online manual (http://www.ferstaberinde.com/f2/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

if (!isDedicated && (player != player)) then
{
    waitUntil {player == player};
    waitUntil {time > 10};
};

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction

_unitfaction = toLower (faction player);

// If the unitfaction is different from the group leader's faction, the latters faction is used
if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};

// As PMC units are used as exchange medics and engineers, they are defaulted to the UN markers.
// Change "bis_un" to "bis_tk_gue" when using the TK Local Platoon
//if (_unitfaction == "pmc_baf") then {_unitfaction = "bis_un";};

// ====================================================================================

// PRECOMPILE
// Prevents the next script to be read by the engine everytime it's used:

fnc_folk_localGroupMarker = compile preprocessFile "f\common\markers\folk_localGroupMarker.sqf";
fnc_folk_localSpecialistMarker = compile preprocessFile "f\common\markers\folk_localSpecialistMarker.sqf";

// ====================================================================================
switch (_unitfaction) do
{

// ====================================================================================

// MARKERS: US
// Markers seen by players in US slots.

	case "bis_us":
	{
		["GrpUS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUS_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUS_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUS_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUS_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUS_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUS_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUS_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUS_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//special forces
		
		["GrpUS_SOF_SL", 0, "SOF SL", "ColorYellow"] spawn fnc_folk_localGroupMarker;	
		["UnitUS_SOF_M", 0, "SOF M", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["GrpUS_SOF_1", 1, "SOF 1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUS_SOF_2", 1, "SOF 2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUS_SOF_3", 1, "SOF 3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
	};

// ====================================================================================
	
// USMC
// Markers seen by players in USMC slots.
	
	case "usmc":
	{
		["GrpUSMC_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMC_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMC_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMC_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMC_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUSMC_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMC_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMC_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUSMC_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMC_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMC_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["GrpUSMCD_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMCD_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMCD_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCD_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCD_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCD_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCD_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCD_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["GrpUSMCD_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCD_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUSMCD_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCD_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCD_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUSMCD_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCD_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCD_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		
		["GrpUSMCW_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMCW_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUSMCW_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCW_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCW_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCW_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCW_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCW_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCW_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUSMCW_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUSMCW_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUSMCW_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCW_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCW_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUSMCW_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCW_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUSMCW_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
	};

// ====================================================================================
	
// CDF
// Markers seen by players in CDF slots.
	
	case "cdf":
	{
		["GrpCDF_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpCDF_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpCDF_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpCDF_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpCDF_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpCDF_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpCDF_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpCDF_TNK3",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpCDF_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["GrpCDF_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpCDF_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitCDF_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitCDF_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitCDF_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitCDF_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitCDF_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitCDF_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================

// MARKERS: TAKISTANI ARMY
// Markers seen by players in TAKISTANI ARMY slots.

	case "bis_tk":
	{
		["GrpTK_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpTK_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpTK_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpTK_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpTK_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpTK_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpTK_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpTK_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpTK_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpTK_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpTK_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpTK_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpTK_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpTK_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpTK_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpTK_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpTK_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpTK_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpTK_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpTK_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpTK_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpTK_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpTK_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpTK_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpTK_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpTK_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpTK_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpTK_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpTK_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["UnitTK_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitTK_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitTK_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitTK_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitTK_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitTK_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//Special Forces
		
		["GrpTK_SOF_SL", 0, "SOF SL", "ColorYellow"] spawn fnc_folk_localGroupMarker;	
		["UnitTK_SOF_M", 0, "SOF M", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["GrpTK_SOF_1", 1, "SOF 1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpTK_SOF_2", 1, "SOF 2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpTK_SOF_3", 1, "SOF 3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
	};
	
// ====================================================================================
	
// MARKERS: RUSSIA
// Markers seen by players in RUSSIA slots.
	
	case "ru":
	{
		["GrpRU_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRU_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRU_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRU_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRU_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRU_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRU_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRU_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRU_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRU_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRU_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRU_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRU_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRU_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRU_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpRU_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpRU_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpRU_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;		
		["GrpRU_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpRU_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpRU_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRU_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRU_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpRU_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRU_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpRU_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpRU_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpRU_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpRU_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["GrpRU_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRU_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpRU_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["UnitRU_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRU_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRU_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitRU_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRU_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRU_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		["GrpRUD_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRUD_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpRUD_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpRUD_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpRUD_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["GrpRUD_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpRUD_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["UnitRUD_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRUD_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRUD_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitRUD_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRUD_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitRUD_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		
		//Special Forces
		
		["GrpRU_SOF_SL", 0, "SOF SL", "ColorYellow"] spawn fnc_folk_localGroupMarker;	
		["UnitRU_SOF_M", 0, "SOF M", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["GrpRU_SOF_1", 1, "SOF 1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpRU_SOF_2", 1, "SOF 2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpRU_SOF_3", 1, "SOF 3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
	};

// ====================================================================================

// MARKERS: TAKISTANI MILITIA
// Markers seen by players in TAKISTANI MILITIA slots.

	case "bis_tk_ins":
	{
		["GrpINS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpINS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpINS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpINS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpINS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpINS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpINS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpINS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpINS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpINS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpINS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpINS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpINS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpINS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpINS_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpINS_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpINS_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpINS_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpINS_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpINS_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpINS_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpINS_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpINS_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpINS_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpINS_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpINS_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpINS_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["GrpINS_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpINS_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitINS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitINS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;				
		["UnitINS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitINS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitINS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitINS_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// ====================================================================================

// MARKERS: INSURGENT
// Markers seen by players in INSURGENT (CHDKZ) slots.

	case "ins":
	{
		["GrpA2INS_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpA2INS_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpA2INS_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpA2INS_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_IFV4",  7, "IFV4", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpA2INS_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpA2INS_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["GrpA2INS_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2INS_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitA2INS_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2INS_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;				
		["UnitA2INS_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitA2INS_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2INS_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2INS_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
       
// ====================================================================================

// MARKERS: TAKISTANI LOCALS (INDEPENDENT)
// Markers seen by players in TAKISTANI LOCALS (INDEPENDENT) slots.

	case "bis_tk_gue":
	{
		["GrpGUE_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpGUE_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpGUE_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;		
		["GrpGUE_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpGUE_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpGUE_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["GrpGUE_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpGUE_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitGUE_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitGUE_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitGUE_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitGUE_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitGUE_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitGUE_DSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================
	
// MARKERS: GUERILLA (NAPA)
// Markers seen by players in GUERILLA (NAPA) slots.

	case "gue":
	{
		["GrpA2GUE_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpA2GUE_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpA2GUE_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpA2GUE_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpA2GUE_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpA2GUE_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpA2GUE_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["GrpA2GUE_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpA2GUE_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitA2GUE_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2GUE_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2GUE_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitA2GUE_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2GUE_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitA2GUE_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};


// ====================================================================================

// MARKERS: UN
// Markers seen by players in UN slots.

	case "bis_un":
	{
		["GrpUN_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUN_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUN_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUN_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUN_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUN_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpUN_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUN_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUN_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUN_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpUN_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUN_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUN_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUN_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUN_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUN_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUN_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUN_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUN_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpUN_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpUN_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpUN_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpUN_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpUN_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUN_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUN_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpUN_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;			

		["GrpUN_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpUN_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitUN_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUN_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUN_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitUN_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUN_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitUN_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};

// ====================================================================================

// MARKERS: BRITISH ARMED FORCES
// Markers seen by players in BRITISH ARMED FORCES slots.

	case "bis_baf":
	{
		["GrpBAF_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpBAF_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpBAF_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpBAF_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitBAF_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitBAF_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitBAF_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	};
	
// ====================================================================================

// MARKERS: CZECH REPUBPLIC
// Markers seen by players in CZECH REPUBPLIC slots.

	case "bis_cz":
	{

	};

// ====================================================================================

// MARKERS: GERMAN
// Markers seen by players in GERMAN slots.

	case "bis_ger":
	{
		["GrpDE_SOF_SL", 0, "SOF SL", "ColorYellow"] spawn fnc_folk_localGroupMarker;	
		["UnitDE_SOF_M", 0, "SOF M", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["GrpDE_SOF_1", 1, "SOF 1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpDE_SOF_2", 1, "SOF 2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpDE_SOF_3", 1, "SOF 3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
	};

// ====================================================================================

// MARKERS: PMC
// Markers seen by players in PMC slots.

	case "pmc_baf":
	{
		["GrpPMC_CO", 0, "CO", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_DC", 0, "DC", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_ASL", 0, "ASL", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_A1", 1, "A1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_A2", 1, "A2", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpPMC_A3", 1, "A3", "ColorRed"] spawn fnc_folk_localGroupMarker;		
		["GrpPMC_BSL", 0, "BSL", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_B1", 1, "B1", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_B2", 1, "B2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_B3", 1, "B3", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_CSL", 0, "CSL", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_C1", 1, "C1", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_C2", 1, "C2", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_C3", 1, "C3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_DSL", 0, "DSL", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_D1", 1, "D1", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_D2", 1, "D2", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_D3", 1, "D3", "ColorBrown"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_MMG1", 2, "MMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_MMG2", 2, "MMG2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_MAT1", 3, "MAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_MAT2", 3, "MAT2", "ColorOrange"] spawn fnc_folk_localGroupMarker;		
		["GrpPMC_ST1",  4, "ST1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpPMC_HMG1",  2, "HMG1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_MTR1",  5, "MTR1", "ColorOrange"] spawn fnc_folk_localGroupMarker;	
		["GrpPMC_HAT1",  3, "HAT1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_SAM1",  3, "SAM1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_ENG1",  6, "ENG1", "ColorYellow"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_IFV1",  7, "IFV1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_IFV2",  7, "IFV2", "ColorBlue"] spawn fnc_folk_localGroupMarker;	
		["GrpPMC_IFV3",  7, "IFV3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_IFV4",  7, "IFV4", "ColorBrown"] spawn fnc_folk_localGroupMarker;		
		["GrpPMC_TNK1",  7, "TNK1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_TNK2",  7, "TNK2", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpPMC_TNK3",  7, "TNK3", "ColorRed"] spawn fnc_folk_localGroupMarker;	
		["GrpPMC_TNK4",  7, "TNK4", "ColorRed"] spawn fnc_folk_localGroupMarker;			
		["GrpPMC_TH1",  8, "TH1", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_TH2",  8, "TH2", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_TH3",  8, "TH3", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_TH4",  8, "TH4", "ColorOrange"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_AH1",  8, "AH1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["UnitPMC_CO_M", 0, "COM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitPMC_DC_M", 0, "DCM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitPMC_ASL_M", 0, "AM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;		
		["UnitPMC_BSL_M", 0, "BM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitPMC_CSL_M", 0, "CM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["UnitPMC_DSL_M", 0, "DM", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
	
	
	
		["GrpPMC_SL", 0, "PMC SL", "ColorYellow"] spawn fnc_folk_localGroupMarker;	
		["UnitPMC_M", 0, "PMC M", "ColorBlack"] spawn fnc_folk_localSpecialistMarker;
		["GrpPMC_1", 1, "PMC 1", "ColorRed"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_2", 1, "PMC 2", "ColorBlue"] spawn fnc_folk_localGroupMarker;
		["GrpPMC_3", 1, "PMC 3", "ColorGreen"] spawn fnc_folk_localGroupMarker;
	};

// ====================================================================================

// MARKERS: CIVILIAN (TAKISTANI)
// Markers seen by players in CIVILIAN (TAKISTANI) slots.

	case "bis_tk_civ":
	{

	};

// ====================================================================================

// MARKERS: CIVILIAN (SPECIAL)
// Markers seen by players in CIVILIAN (SPECIAL) slots.

	case "bis_civ_special":
	{

	};
       
// ====================================================================================

	
};

// ====================================================================================

if (true) exitWith {};
