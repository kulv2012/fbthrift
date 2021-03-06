#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libc.stdint cimport (
    int8_t as cint8_t,
    int16_t as cint16_t,
    int32_t as cint32_t,
    int64_t as cint64_t,
    uint32_t as cuint32_t,
)
from libcpp.string cimport string
from libcpp cimport bool as cbool, nullptr, nullptr_t
from cpython cimport bool as pbool
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap, pair as cpair
from thrift.py3.exceptions cimport cTException
cimport folly.iobuf as __iobuf
cimport thrift.py3.exceptions
cimport thrift.py3.types
from thrift.py3.common cimport Protocol as __Protocol
from thrift.py3.types cimport bstring, move, optional_field_ref
from folly.optional cimport cOptional





cdef extern from "src/gen-cpp2/module_types_custom_protocol.h" namespace "::cpp2":
    cdef cppclass cFoo__isset "::cpp2::Foo::__isset":
        bint myInteger
        bint myString
        bint myBools
        bint myNumbers

    cdef cppclass cFoo "::cpp2::Foo":
        cFoo() except +
        cFoo(const cFoo&) except +
        bint operator==(cFoo&)
        bint operator!=(cFoo&)
        bint operator<(cFoo&)
        bint operator>(cFoo&)
        bint operator<=(cFoo&)
        bint operator>=(cFoo&)
        cint32_t myInteger
        optional_field_ref[string] myString_ref()
        vector[cbool] myBools
        vector[cint32_t] myNumbers
        cFoo__isset __isset

    cdef shared_ptr[vector[cbool]] reference_shared_ptr_myBools "thrift::py3::reference_shared_ptr<std::vector<bool>>"(shared_ptr[cFoo]&, vector[cbool]&)
    cdef shared_ptr[vector[cint32_t]] reference_shared_ptr_myNumbers "thrift::py3::reference_shared_ptr<std::vector<int32_t>>"(shared_ptr[cFoo]&, vector[cint32_t]&)

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cFoo] move(unique_ptr[cFoo])
    cdef shared_ptr[cFoo] move_shared "std::move"(shared_ptr[cFoo])
    cdef unique_ptr[cFoo] move_unique "std::move"(unique_ptr[cFoo])

cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cFoo] const_pointer_cast "std::const_pointer_cast<const ::cpp2::Foo>"(shared_ptr[cFoo])



cdef class Foo(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cFoo] _cpp_obj
    cdef List__bool __field_myBools
    cdef List__i32 __field_myNumbers

    @staticmethod
    cdef unique_ptr[cFoo] _make_instance(
        cFoo* base_instance,
        bint* __isNOTSET,
        object myInteger,
        str myString,
        object myBools,
        object myNumbers
    ) except *

    @staticmethod
    cdef create(shared_ptr[cFoo])


cdef class List__bool(thrift.py3.types.Container):
    cdef shared_ptr[vector[cbool]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cbool]])
    @staticmethod
    cdef shared_ptr[vector[cbool]] _make_instance(object items) except *

cdef class List__i32(thrift.py3.types.Container):
    cdef shared_ptr[vector[cint32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[cint32_t]])
    @staticmethod
    cdef shared_ptr[vector[cint32_t]] _make_instance(object items) except *

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[vector[cbool]] move "std::move"(unique_ptr[vector[cbool]])
    cdef shared_ptr[vector[cbool]] move_shared "std::move"(shared_ptr[vector[cbool]])
    cdef shared_ptr[vector[cint32_t]] move "std::move"(unique_ptr[vector[cint32_t]])
    cdef shared_ptr[vector[cint32_t]] move_shared "std::move"(shared_ptr[vector[cint32_t]])
cdef extern from "<utility>" nogil:
    pass  
cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const vector[cbool]] const_pointer_cast "std::const_pointer_cast<const std::vector<bool>>"(shared_ptr[vector[cbool]])
    cdef shared_ptr[const vector[cint32_t]] const_pointer_cast "std::const_pointer_cast<const std::vector<int32_t>>"(shared_ptr[vector[cint32_t]])

