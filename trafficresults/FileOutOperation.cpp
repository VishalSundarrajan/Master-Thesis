#include <string>
#include <vector>
#include <fstream>
#include <iostream>
#include "FileOutOperation.h"

FileOutOperation::FileOutOperation() {} //default constructor

FileOutOperation::FileOutOperation(std::string fileName)
{
  this->fileName=fileName;
}

FileOutOperation::~FileOutOperation() {}

void FileOutOperation::appendData(const std::vector<double> &v)
{
  std::ifstream destnFile;
  destnFile.open(fileName.c_str());
  if( remove( fileName.c_str()) != 0 )
    perror( "Error deleting file" );
  std::ofstream newDestn(fileName.c_str());
  int i=0;
  //std::cout<<"V_size"<<v.size()<<std::endl;
  for(std::string line;getline(destnFile,line);)
  {
    //std::cout<<line<<std::endl;
    newDestn<<line<<"\t"<<v.at(i)<<std::endl;
    i++;
  }  
  destnFile.close();
}
