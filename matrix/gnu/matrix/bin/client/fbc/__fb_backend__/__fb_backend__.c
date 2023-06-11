typedef   signed char       int8;
typedef unsigned char      uint8;
typedef   signed short      int16;
typedef unsigned short     uint16;
typedef   signed int        int32;
typedef unsigned int       uint32;
typedef   signed long long  int64;
typedef unsigned long long uint64;
typedef struct { char *data; int64 len; int64 size; } FBSTRING;
typedef int8 boolean;
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int64 );
void fb_Init( int32, uint8**, int32 );
void fb_End( int32 );

int32 main( int32 __FB_ARGC__$0, char** __FB_ARGV__$0 )
{
	int32 fb$result$0;
	__builtin_memset( &fb$result$0, 0, 4ll );
	fb_Init( __FB_ARGC__$0, (uint8**)__FB_ARGV__$0, 0 );
	label$0:;
	FBSTRING* vr$1 = fb_StrAllocTempDescZEx( (uint8*)"Back end is: gcc", 16ll );
	fb_PrintString( 0, (FBSTRING*)vr$1, 1 );
	fb_End( 0 );
	label$1:;
	fb_End( 0 );
	return fb$result$0;
}
