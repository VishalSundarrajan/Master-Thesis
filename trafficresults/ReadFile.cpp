#include <string>
#include <vector>
#include <fstream>
#include <iostream>
#include "ReadFile.h"

ReadFile::ReadFile() {} //default constructor

ReadFile::ReadFile(std::string fileName,std::string searchWord,std::string breakPoint)
{
  this->searchWord=searchWord;
  this->breakPoint=breakPoint;
  srcFile.open(fileName.c_str());
  current_fPosition=0;
}

ReadFile::~ReadFile()
{
  srcFile.clear();
  srcFile.close();
  current_fPosition=0;
}


void ReadFile::fillSeedValues(std::vector<std::string> &v)
{
 srcFile.seekg(current_fPosition);
  while (srcFile >> nextWord) 
   {
     if((searchWord.compare(nextWord))==0)
       {
        srcFile >> nextWord;
        srcFile >> nextWord;
        v.push_back(nextWord);
        current_fPosition=srcFile.tellg();
       }
     else if(breakPoint.compare(nextWord)==0)
       {
         srcFile >> nextWord;
         if(nextWord.compare("100")==0) {}
         else 
          { 
              break; 
          }
       }
   } 
 current_fPosition=srcFile.tellg();
}
