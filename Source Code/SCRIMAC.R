//	StarDrawMac.r: Macintosh-specific resources

#include "types.r"
#include "ftab.r"
#include "CodeFrag.r"

resource 'SIZE' (-1)
{
	reserved,
	acceptSuspendResumeEvents,
	reserved,
	canBackground,				
	doesActivateOnFGSwitch,
	backgroundAndForeground,	
	dontGetFrontClicks,			
	ignoreAppDiedEvents,		
	is32BitCompatible,			
	isHighLevelEventAware,
	localAndRemoteHLEvents,
	isStationeryAware,
	useTextEditServices,
	reserved,
	reserved,
	reserved,

// Set different sizes depending on whether we're compiling for
//  PowerMacintosh or 68K

#ifdef _MPPC_

	3000 * 1024,
	3000 * 1024

#else //!_MPPC_

#ifdef _DEBUG
	3000 * 1024,
	3000 * 1024
#else
	2000 * 1024,
	2000 * 1024
#endif //DEBUG

#endif //_MPPC

};

resource 'BNDL' (128, purgeable)	// StarDraw bundle resource ID
{
	'SCRI',			// StarDraw signature
	0,						// resource ID of signature resource:
							// should be 0
 	{
		'ICN#',				// mapping local IDs in 'FREF's to 'ICN#' IDs
		{
			0, 128,
			1, 129
		},
		'FREF',				// local resource IDs for 'FREF's
		{
			0, 128,
			1, 129
		}
	}
};

resource 'FREF' (128, purgeable)	// StarDraw application
{
	'APPL', 0,
	""
};

resource 'FREF' (129, purgeable)	// StarDraw document
{
	'SCRI', 1,
	""
};

type 'SCRI' as 'STR ';

resource 'SCRI' (0, purgeable)
{
	"StarDraw Application"
};

#ifdef _MPPC_

resource 'cfrg' (0)
{
	{
		kPowerPC,
		kFullLib,
		kNoVersionNum,
		kNoVersionNum,
		kDefaultStackSize,
		kNoAppSubFolder,
		kIsApp,
		kOnDiskFlat,
		kZeroOffset,
		kWholeFork,
		"StarDraw"
	}
};

#endif //_MPPC_
