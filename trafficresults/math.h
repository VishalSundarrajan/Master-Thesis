#ifndef MATH_H
#define MATH_H
#include "Typecaster.h"

class math:public Typecaster<double>
{
  private:
   
  public:
   math();
   ~math();
   double mean(std::vector<std::string> &samples);
   double std_deviation(double mean,const std::vector<std::string> &samples);
   double margin_error(double std_dev,double samplesize);
};

#endif
