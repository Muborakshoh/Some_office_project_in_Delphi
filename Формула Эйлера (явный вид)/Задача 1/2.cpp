#include <iostream>
#include <math.h>
using namespace std;


double Func(double x){

 return (pow(x,31)/(x+6));
}

/*int main (){
double I0 = log(7.0/6.0), In;
 for (int i=0;i<31;i++)
 {
     In = 1.0/(i+1)-6*I0;
     I0 = In;
 }
 cout<<In;
 return 0;
}
*/
/*int main (){
double I0 = log(7.0/6.0), In;
 for (int i=60;i>=31;i--)
 {
     In = 1.0/(6*(i+1))-I0/6;
     I0 = In;
 }
 cout<<In;
 return 0;
}
*/
int main (){
double Sum = 0.0;
for (int i = 0;i<=999;i++)
{
  Sum +=Func(i/(1000.0)+1/(2000.0));

}
 Sum *=(1/1000.0);
 cout<<Sum;
}


