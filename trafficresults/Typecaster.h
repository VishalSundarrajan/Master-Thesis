#include <iostream>
#include <string>
#include <sstream>

#ifndef typecaster_H
#define typecaster_H

template <class T>
class Typecaster
{
  public:
    Typecaster();
    T stringToNumber(std::string); 
};


template <class T>
Typecaster<T>::Typecaster() {} //default constructor


template <class T>
T Typecaster<T>::stringToNumber(std::string text)
{
    std::string Text = text;//string containing the number
    T result;//number which will contain the result
    std::stringstream convert(Text); // stringstream used for the conversion. Initialized with the contents of Text
    if ( !(convert >> result))//give the value to Result using the characters in the string
     result = 0; //if that fails set Result to 0
    return result;
}



#endif


