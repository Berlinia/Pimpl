#include "data.ih"

bool Data::read()
{
    return d_pimpl -> DataImp::read(); //use DataImp's function by pointing
}
