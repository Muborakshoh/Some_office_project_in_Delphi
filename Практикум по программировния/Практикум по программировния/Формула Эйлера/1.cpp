#include <iostream>
#include <math.h>
using namespace std;
double Function_1(double x)
{
    return pow(x,2)+x+cos(x);
}
double Function_diff(double x)
{
    return 2*x+1-sin(x);
}
int main (){

 int n = 3;
 double  h,a = 0.0,b = 1.0, x,yn,y1=0.0;
  h = (b-a)/n;
  cout<<"Euler method: "<<endl;
  for (int j = 0;j<=n;j++){
      yn = y1+1*Function_1(x);
      y1 = yn;
      x = a+1*j;
      cout<<h<<"\t"<<x<<"\t"<<y1<<"\t"<<fabs(Function_diff(x)-yn)<<endl;
  }
  for (int j = 0;j<=n/10;j++){
      yn = y1+0.1*Function_1(x);
      y1 = yn;
      x = a+0.1*j;
      cout<<h<<"\t"<<x<<"\t"<<y1<<"\t"<<fabs(Function_diff(x)-yn)<<endl;
  }
  for (int j = 0;j<=n/100;j++){
      yn = y1+0.01*Function_1(x);
      y1 = yn;
      x = a+0.01*j;
      cout<<h<<"\t"<<x<<"\t"<<y1<<"\t"<<fabs(Function_diff(x)-yn)<<endl;
  }
}
