
#ifndef FILEOUT_H
#define FILEOUT_H


class FileOutOperation
{
  private:
   std::string fileName;
  public:
   FileOutOperation();
   FileOutOperation(std::string);
   ~FileOutOperation();
   void appendData (const std::vector<double> &v);
};

#endif
