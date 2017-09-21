#include <string>
#include <vector>
#include <iostream>
#include <cmath>  
#include "math.h"

math::math() {} //default constructor

math::~math(){}//destructor

double math::mean(std::vector<std::string> &samples)
{
  math myobj;
  double total=0;
  for (unsigned int i = 0; i < samples.size(); ++i)
   {
    total= total + myobj.Typecaster<double>::stringToNumber(samples.at(i));
   }
  return (total/samples.size());
}

double math::std_deviation(double mean,const std::vector<std::string> &samples)
{
  math myobj;
  double square_total=0;
  for(unsigned int i=0; i<samples.size();i++)  
    {
      square_total= square_total+ pow(std::abs((myobj.Typecaster<double>::stringToNumber(samples.at(i)))-mean),2);
    }
 return (sqrt(square_total/samples.size()));
}

double math::margin_error(double std_dev,double samplesize)
{
  return ((std_dev/sqrt(samplesize))*1.96);
}
