#include <iostream>
#include <math.h>
#include <sstream>
using namespace std;
int main ()
{
  double a=1.0, b = pow(10.0, 20.0),c=1.0;
  double D, x1, x2;

  if (a<0 || a>0){
  D = (b*b-4.0*(a*c));
  if (D>=0){
      if (b>0) x1 = (-b-sqrt(D))/(2.0*a); else   x1 = (-b+sqrt(D))/(2.0*a);
      x2 = c/(a*x1);
      cout<<x1<<" "<<x2;
   }
 else if (D<0)
{

  cout<<-b/(2.0*a)<<"+"<<"i"<<sqrt(-D)/(2.0*a)<<endl;
  cout<<-b/(2.0*a)<<"-"<<"i"<<sqrt(-D)/(2.0*a)<<endl;
}
  } else {
  if (b<0 || b>0){
  x1 = -c/b;
  cout<<x1<<" ";

  } else {

  if (c>0 || c<0) cout<<"No solution"; else cout<<"All solution";
  }
  }
  return 0;



}
