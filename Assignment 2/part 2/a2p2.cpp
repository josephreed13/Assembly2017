// Joseph Reed, 2318-253, Assignment 2 Part 2
// 03/23/2017

#include <iostream>
using namespace std;

int  a1[12],
     a2[12],
     a3[12];
char reply;
int  used1,
     used2,
     used3,
     remCount,
     anchor;
int* hopPtr1;
int* hopPtr11;
int* hopPtr2;
int* hopPtr22;
int* hopPtr222;
int* hopPtr3;
int* endPtr1;
int* endPtr2;
int* endPtr3;

char begA1Str[] = "\nbeginning a1: ";
char proA1Str[] = "processed a1: ";
char comA2Str[] = "          a2: ";
char comA3Str[] = "          a3: ";
char einStr[]   = "Enter integer #";
char moStr[]    = "Max of ";
char ieStr[]    = " ints entered...";
char emiStr[]   = "Enter more ints? (n or N = no, others = yes) ";
char dacStr[]   = "Do another case? (n or N = no, others = yes) ";
char dlStr[]    = "================================";
char byeStr[]   = "bye...";

int main()
{

DW1:
               used1 = 0;
               hopPtr1 = a1;
DW2:
               cout << einStr;
               cout << (used1 + 1);
               cout << ':' << ' ';
               cin >> *hopPtr1;
               ++used1;
               ++hopPtr1;
               if(used1 != 12) goto else1;
I1:
               cout << moStr;
               cout << 12;
               cout << ieStr;
               cout << endl;
               reply = 'n';
               goto endI1;
else1:
               cout << emiStr;
               cin >> reply;
endI1:
               if (reply != 'n' && reply != 'N') goto DW2;

               cout << begA1Str;
               hopPtr1 = a1;
               endPtr1 = a1 + used1;
               goto endW1;
W1:
               if(hopPtr1 != endPtr1 - 1) goto else2;
I2:
               cout << *hopPtr1 << endl;
               goto endI2;
else2:
               cout << *hopPtr1 << ' ';
endI2:
               ++hopPtr1;
endW1:
               if(hopPtr1 < endPtr1) goto W1;

               hopPtr1 = a1;
               hopPtr2 = a2;
               used2 = 0;
               goto FTest1;
F1:
               *hopPtr2 = *hopPtr1;
               ++hopPtr1;
               ++hopPtr2;
               ++used2;
FTest1:
               if(hopPtr1 < endPtr1) goto F1;

               hopPtr2 = a2;
               endPtr2 = a2 + used2;
W2:
               if(hopPtr2 >= endPtr2) goto endW2;
               anchor = *hopPtr2;
               hopPtr22 = hopPtr2 + 1;
               goto FTest2;
F2:                  
               if(*hopPtr22 != anchor) goto endI3;
I3:
               hopPtr222 = hopPtr22 + 1;
               goto FTest3;
F3:                        
               *(hopPtr222 - 1) = *hopPtr222;
               ++hopPtr222;                         
FTest3:
               if(hopPtr222 < endPtr2) goto F3;
               --used2;
               --endPtr2;
               --hopPtr22;
endI3:
               ++hopPtr22;
FTest2:
               if(hopPtr22 < endPtr2) goto F2;                   
               ++hopPtr2;
               goto W2;
endW2:
               used3 = 0;
               hopPtr3 = a3;
               hopPtr1 = a1;
W3:
               if(hopPtr1 < endPtr1) goto endW3;
               *hopPtr3 = *hopPtr1;
               ++used3;
               ++hopPtr3;
               anchor = *hopPtr1;
               remCount = 0;
               hopPtr11 = hopPtr1 + 1;
               goto FTest4;
F4:                  
               if (*hopPtr11 != anchor) goto else4;
I4:
               ++remCount;
               goto endI4;
else4:
               *(hopPtr11 - remCount) = *hopPtr11;
endI4:
               ++hopPtr11;
FTest4:
               if(hopPtr11 < endPtr1) goto F4;
               used1 -= remCount;
               endPtr1 -= remCount;
               ++hopPtr1;
               goto W3;
endW3:
               cout << proA1Str;
               hopPtr1 = a1;
               goto FTest5;
F5:                
               if(hopPtr1 != endPtr1 - 1) goto else5;
I5:
               cout << *hopPtr1 << endl;
               goto endI5;
else5: 
               cout << *hopPtr1 << ' ';
endI5:
               ++hopPtr1;
FTest5:
               if(hopPtr1 < endPtr1) goto F5;                
               cout << comA2Str;
               hopPtr2 = a2;
               goto FTest6;
F6:                
               if(hopPtr2 != endPtr2 - 1) goto else6;
I6:     
               cout << *hopPtr2 << endl;
               goto endI6;
else6: 
               cout << *hopPtr2 << ' ';
endI6:                
               ++hopPtr2;
FTest6:
               if(hopPtr2 < endPtr2) goto F6;
               cout << comA3Str;
               hopPtr3 = a3;
               endPtr3 = a3 + used3;
W4:   
               if(hopPtr3 >= endPtr3) goto endW4;
               if(hopPtr3 != endPtr3 -1) goto else7;
I7:                   
               cout << *hopPtr3 << endl;
               goto endI7;  
else7:
               cout << *hopPtr3 << ' ';
endI7:                   
               ++hopPtr3;
endW4:
               cout << endl;
               cout << dacStr;
               cin >> reply;
               cout << endl;
               if (reply != 'n' && reply != 'N') goto DW1;

               cout << dlStr;
               cout << '\n';
               cout << byeStr;
               cout << '\n';
               cout << dlStr;
               cout << '\n';

               return 0;
}
