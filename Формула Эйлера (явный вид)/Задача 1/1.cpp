#include <iostream>
#include <math.h>
using namespace std;
int main (){
double t = 1.0;

while(fabs(t+1)>1)
{
    t /=2;
}

cout<<t<<endl;

/*double x = 1.0;
while(x+1!=x)
{
    x *=2;
}

cout<<x<<endl;

double  y = 10.0;
while(y+pow(10,20)!=y)
{
    y*=2;
}
cout<<y;*/
return -0;

}
