#include <iostream>
#include <math.h>
#include <fstream>
#include <windows.h>
using namespace std;
void Func(double h, double t0 = 0, double T = 1000*M_PI){
double x=0, z=1, t ;
ofstream out("1.txt");
out<<x<<"\t"<<z<<"\n";

for (int i = 1;i<=int(T/h);i++)
{

   t0+= h;
   t= -x;
   x = x+h*z;
   z = z + h*(t);
   out<<x<<"\t"<<z<<"\n";

}

   t= -x;
   x = x+(T-t0)*z;
   z = z + (T-t0)*(t);
cout<<"Погрешность при h="<<h<<": "<<abs(sin(T)-x)<<" "<<abs(cos(T)-z)<<endl;

out.close();

}
int main(){
    SetConsoleCP(1251);
    SetConsoleOutputCP(1251);
    cout<<"---------------------------------при T=1000pi--------------------------------------"<<endl;
    Func(1);
    Func(0.1);
    Func(0.01);
    cout<<"---------------------------------при T=pi--------------------------------------"<<endl;
    Func(1, 0, M_PI);
    Func(0.1, 0, M_PI);
    Func(0.01, 0, M_PI);
    cout<<"---------------------------------при T=10pi--------------------------------------"<<endl;
    Func(1, 0, 10*M_PI);
    Func(0.1, 0, 10*M_PI);
    Func(0.01, 0, 10*M_PI);
    cout<<"---------------------------------при T=100pi--------------------------------------"<<endl;
    Func(1, 0, 100*M_PI);
    Func(0.1, 0, 100*M_PI);
    Func(0.01, 0, 100*M_PI);

}
