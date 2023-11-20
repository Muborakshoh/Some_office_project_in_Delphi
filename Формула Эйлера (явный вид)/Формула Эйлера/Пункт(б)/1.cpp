#include <iostream>
#include <math.h>
#include<fstream>

using namespace std;
double Func(double x);
double Func_solve(double x);

int main (){
   int n=30;
   double a=0.0, b=10.0, x = 0.0, y1 = 0.0, yn=0.0, h, y2 = 0.0;
   y1 = y2 = yn = 1.0;
   ofstream out("1.txt");
   ofstream rout("2.txt");
    x=0.0;
   for(int i=0;i<=n;i++)
   {
       yn = yn+Func(x);
       x = x+1.0;
       //rout<<x<<"\t"<<yn<<endl;
      }
   out<<"at h=1: "<<abs(Func_solve(x)-yn)<<endl;
   x=0.0;
   for(int i=0;i<=100;i++)
   {
       y1 = y1+0.1*Func(x);
       x = x+0.1;
       rout<<x<<"\t"<<y1<<endl;
   }
   out<<"at h=0.1: "<<abs(Func_solve(x)-y1)<<endl;
   x=0.0;

   for(int i=0;i<=1000;i++)
   {
       y2 = y2+0.01*Func(x);
       x = x+0.01;
   }
    out<<"at h=0.01: "<<abs(Func_solve(x)-y2);

   out.close();
}
double Func(double x){
return x+(x)+cos(x);
}
double Func_solve(double x){
return (x*x)/(3.0)+(x/1.0)+sin(x);
}
