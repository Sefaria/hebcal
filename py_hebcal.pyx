
cdef extern from "greg.h":
    ctypedef struct date_t:
        int mm
        int dd
        int yy
    long greg2abs( date_t )
    date_t abs2greg(long)

cdef extern from "common.h":
    date_t abs2hebrew(long)
    long hebrew2abs(date_t)




def py_greg2abs(d: date_t) -> long:
    greg2abs(d)

def py_hebrew2abs(d: date_t) -> long:
    hebrew2abs(d)

def py_abs2hebrew(l: long) -> date_t:
    abs2hebrew(l)

def py_abs2greg(l: long) -> date_t:
    abs2greg(l)

