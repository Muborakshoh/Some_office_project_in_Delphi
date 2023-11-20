#include <iostream>
#include <math.h>
using namespace std;

double Func(double x){
 return (pow(x,5)+cos(x)+log10(x*x));

}
double Func_derivatives(double x){
 return (5.0*pow(x,4)-sin(x)+2.0/(x*log(x)));

}
double Funcg(double x){
 return pow(10, 9)*(pow(x,5)+cos(x)+log10(x*x));

}
double Func_derivativesg(double x){
 return pow(10,9)*(5.0*pow(x,4)-sin(x)+2.0/(x*log(x)));

}
int main (){
double h = 1.0, f, x = 10.0, g;

for (int i = 0;i<=20;i++)
{
      f = abs(Func_derivatives(x)-(Func(x+h)-Func(x))/h);
      g = abs(Func_derivativesg(x)-(Funcg(x+h)-Funcg(x))/h);

      cout<<"f="<<f<<"\t"<<"g="<<g<<"\t"<<"h="<<h<<endl;
      h /=10.0;
}

}
