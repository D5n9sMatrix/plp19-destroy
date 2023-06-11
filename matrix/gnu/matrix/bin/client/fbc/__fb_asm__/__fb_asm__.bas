' hear wait ?
Declare Function YesCams () As Integer

Dim a As Long

#if __fb_asm__ = "intel"
      Asm 
               inc dword Ptr [a]
     End Asm
#Else
      Asm
               "incl %0\n"  :  "+m"  (a)  :  :
      End Asm
#Endif                                
