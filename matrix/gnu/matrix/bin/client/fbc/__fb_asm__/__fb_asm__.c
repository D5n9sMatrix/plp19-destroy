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
static void fb_ctor____fb_asm__( void ) __attribute__(( constructor ));

__attribute__(( constructor )) static void fb_ctor____fb_asm__( void )
{
	label$0:;
	int32 A$0;
	__builtin_memset( &A$0, 0, 4ll );
	__asm__ __volatile__( "inc dword Ptr [%0]" : "+m" (A$0) :  : "cc", "memory", "rax", "rbx", "rcx", "rdx", "rdi", "rsi", "r8", "r9", "r10", "r11", "r12", "r13", "r14", "r15" );
	label$1:;
}
