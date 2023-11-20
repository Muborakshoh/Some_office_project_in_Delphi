#include <iostream>
#include <math.h>
#include<fstream>

using namespace std;
double line(double x);
double parabole(double x);

int main (){
  ofstream out("1.txt");
  int n = 20;
  double  h,t0 = 0.0,T = 10.0, x=0.0, y1=0.0, yn;
  h = (T-t0)/n;
  out<<x<<"\t"<<y1<<"\t"<<parabole(x)<<"\n";
  //cout<<"x="<<x<<"\t"<<"y="<<y1<<"\t"<<"y*="<<parabole(x)<<"\t"<<"y-y*="<<fabs(y1-parabole(x))<<"\n";
  for (int i = 1;i<=n;i++){

      yn = y1 + h*line(x);
      y1 = yn;
      x = t0+i*h;
     // out<<x<<"\t"<<y1<<"\t"<<parabole(x)<<"\n";
      //cout<<"x="<<x<<"\t"<<"y="<<y1<<"\t"<<"y*="<<parabole(x)<<"\t"<<"y-y*="<<fabs(y1-parabole(x))<<"\n";
   }
   yn=0.0;
   y1=0.0;
   x=0.0;
   for (int i = 1;i<=n;i++){

      yn = y1 + line(x);
      y1 = yn;
      x = t0+i;
      }
      cout<<"h=1"<<"\t"<<abs(parabole(x)-yn)<<"\n";
      yn=0.0;
      y1=0.0;
      x=0.0;
   for (int i = 1;i<=n;i++){

      yn = y1 + 0.1*line(x);
      y1 = yn;
      x = t0+i*0.1;}
      cout<<"h=0.1"<<"\t"<<abs(parabole(x)-yn)<<"\n";
      yn=0.0;
      y1=0.0;
      x=0.0;
   for (int i = 1;i<=n;i++){

      yn = y1 + 0.01*line(x);
      y1 = yn;
      x = t0+i*0.01;}
      cout<<"h=0.01"<<"\t"<<abs(parabole(x)-yn)<<"\n";

   out.close();
}


double line(double x){
return 2.0*x;
}

double parabole(double x){
return x*x;
}
