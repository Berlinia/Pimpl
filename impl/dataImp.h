#ifndef INCLUDED_DATAIMP_H
#define INCLUDED_DATAIMP_H

#include <string>
#include <iostream>

class DataImp
{
    std::string d_text;
    int d_value = 0;

    public:
        bool read();
        void display() const;
};

#endif
