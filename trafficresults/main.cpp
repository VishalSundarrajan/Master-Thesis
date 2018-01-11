#include <string>
#include <vector>
#include <iostream>
#include <array>
#include "ReadFile.h"
#include "FileOutOperation.h"
#include "math.h"

//main

int main()
{
  ReadFile rdfileobj("Oscar-Results/outputs/1c1_failures.txt", "Blocking”, 2, "Load:”, ”100”);
  math mathobj;
  double std_dev;
  std::vector<std::string> samples; 
  std::vector<double> mean, std_error;
  for(int i=0;i<5;++i)
   {
    rdfileobj.fillSeedValues(samples);
    mean.push_back(mathobj.mean(samples));
    std_dev=mathobj.std_deviation(mean.at(i),samples);
    //std::cout<<" Std_deviation: "<<std_dev<<std::endl;
    std_error.push_back(mathobj.margin_error(std_dev, static_cast<double>(samples.size())));
    samples.clear();
   } 
  
  FileOutOperation wrfileobj("Oscar-Results/data/uni_palin+nonpalin.txt");
  wrfileobj.appendData(mean);
  wrfileobj.appendData(std_error);
  return 0;
}
 
