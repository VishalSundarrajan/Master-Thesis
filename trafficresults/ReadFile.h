
#ifndef READFILE_H
#define READFILE_H

#include <fstream>


class ReadFile
{
  private:
   std::string fileName, searchWord, breakPoint, nextWord;
   std::ifstream srcFile;
   int current_fPosition,skip;
  public:
   ReadFile();
   ReadFile(std::string,std::string,std::string, int);
   ~ReadFile();
   void fillSeedValues(std::vector<std::string>&);
};

#endif
