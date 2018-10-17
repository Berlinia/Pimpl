#ifndef INCLUDED_DATA_H
#define INCLUDED_DATA_H

#include <string>
#include "impl/dataImp.ih"

class Data
{
    DataImp *d_pimpl;     //create pointer to DataImp object

    public:
        bool read();
        void display() const;
};

#endif
