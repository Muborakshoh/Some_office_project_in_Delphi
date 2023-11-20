#include <iostream>
#include <math.h>
using namespace std;

double Func0(double x){
 return (pow(x,5)+cos(x)+log10(x*x));

}
double Func_differential(double x){
 return (5.0*pow(x,4)-sin(x)+2.0/(x*log(10)));

}
double Funcg(double x){
 return pow(10, 9)*(pow(x,5)+cos(x)+log10(x*x));

}
double Func_differentialsg(double x){
 return pow(10,9)*(5.0*pow(x,4)-sin(x)+2.0/(x*log(10)));

}
int main (){
double h = 1.0, f, x = 10.0, g;

for (int i = 0;i<=10;i++)
{
      f = abs(Func_differential(x)-(Func0(x+h)-Func0(x))/h);
      g = abs(Func_differentialsg(x)-(Funcg(x+h)-Funcg(x))/h);

      cout<<"f="<<f<<"\t"<<"g="<<g<<"\t"<<"h="<<h<<endl;
      h /=10.0;
}

}
