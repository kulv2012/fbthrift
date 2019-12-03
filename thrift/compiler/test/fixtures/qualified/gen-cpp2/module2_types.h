/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
#pragma once

#include <thrift/lib/cpp2/gen/module_types_h.h>


#include "thrift/compiler/test/fixtures/qualified/gen-cpp2/module0_types.h"
#include "thrift/compiler/test/fixtures/qualified/gen-cpp2/module1_types.h"

namespace apache {
namespace thrift {
namespace tag {
struct first;
struct second;
struct s;
struct id;
} // namespace tag
namespace detail {
#ifndef APACHE_THRIFT_ACCESSOR_first
#define APACHE_THRIFT_ACCESSOR_first
APACHE_THRIFT_DEFINE_ACCESSOR(first);
#endif
#ifndef APACHE_THRIFT_ACCESSOR_second
#define APACHE_THRIFT_ACCESSOR_second
APACHE_THRIFT_DEFINE_ACCESSOR(second);
#endif
#ifndef APACHE_THRIFT_ACCESSOR_s
#define APACHE_THRIFT_ACCESSOR_s
APACHE_THRIFT_DEFINE_ACCESSOR(s);
#endif
#ifndef APACHE_THRIFT_ACCESSOR_id
#define APACHE_THRIFT_ACCESSOR_id
APACHE_THRIFT_DEFINE_ACCESSOR(id);
#endif
} // namespace detail
} // namespace thrift
} // namespace apache

// BEGIN declare_enums

// END declare_enums
// BEGIN struct_indirection

// END struct_indirection
// BEGIN forward_declare
namespace module2 {
class Struct;
class BigStruct;
} // module2
// END forward_declare
// BEGIN typedefs

// END typedefs
// BEGIN hash_and_equal_to
// END hash_and_equal_to
namespace module2 {
class Struct final : private apache::thrift::detail::st::ComparisonOperators<Struct> {
 public:

  Struct() {}
  // FragileConstructor for use in initialization lists only.
  [[deprecated("This constructor is deprecated")]]
  Struct(apache::thrift::FragileConstructor,  ::module0::Struct first__arg,  ::module1::Struct second__arg);

  Struct(Struct&&) = default;

  Struct(const Struct&) = default;

  Struct& operator=(Struct&&) = default;

  Struct& operator=(const Struct&) = default;
  void __clear();
 public:
   ::module0::Struct first;
 public:
   ::module1::Struct second;

 public:
  struct __isset {
    bool first;
    bool second;
  } __isset = {};
  bool operator==(const Struct& rhs) const;
  bool operator<(const Struct& rhs) const;
  const  ::module0::Struct& get_first() const&;
   ::module0::Struct get_first() &&;

  template <typename T_Struct_first_struct_setter =  ::module0::Struct>
   ::module0::Struct& set_first(T_Struct_first_struct_setter&& first_) {
    first = std::forward<T_Struct_first_struct_setter>(first_);
    __isset.first = true;
    return first;
  }
  const  ::module1::Struct& get_second() const&;
   ::module1::Struct get_second() &&;

  template <typename T_Struct_second_struct_setter =  ::module1::Struct>
   ::module1::Struct& set_second(T_Struct_second_struct_setter&& second_) {
    second = std::forward<T_Struct_second_struct_setter>(second_);
    __isset.second = true;
    return second;
  }

  template <class Protocol_>
  uint32_t read(Protocol_* iprot);
  template <class Protocol_>
  uint32_t serializedSize(Protocol_ const* prot_) const;
  template <class Protocol_>
  uint32_t serializedSizeZC(Protocol_ const* prot_) const;
  template <class Protocol_>
  uint32_t write(Protocol_* prot_) const;

 private:
  template <class Protocol_>
  void readNoXfer(Protocol_* iprot);

  friend class ::apache::thrift::Cpp2Ops< Struct >;
};

void swap(Struct& a, Struct& b);

template <class Protocol_>
uint32_t Struct::read(Protocol_* iprot) {
  auto _xferStart = iprot->getCursorPosition();
  readNoXfer(iprot);
  return iprot->getCursorPosition() - _xferStart;
}

} // module2
namespace module2 {
class BigStruct final : private apache::thrift::detail::st::ComparisonOperators<BigStruct> {
 public:

  BigStruct() :
      id(0) {}
  // FragileConstructor for use in initialization lists only.
  [[deprecated("This constructor is deprecated")]]
  BigStruct(apache::thrift::FragileConstructor,  ::module2::Struct s__arg, int32_t id__arg);

  BigStruct(BigStruct&&) = default;

  BigStruct(const BigStruct&) = default;

  BigStruct& operator=(BigStruct&&) = default;

  BigStruct& operator=(const BigStruct&) = default;
  void __clear();
 public:
   ::module2::Struct s;
 public:
  int32_t id;

 public:
  struct __isset {
    bool s;
    bool id;
  } __isset = {};
  bool operator==(const BigStruct& rhs) const;
  bool operator<(const BigStruct& rhs) const;
  const  ::module2::Struct& get_s() const&;
   ::module2::Struct get_s() &&;

  template <typename T_BigStruct_s_struct_setter =  ::module2::Struct>
   ::module2::Struct& set_s(T_BigStruct_s_struct_setter&& s_) {
    s = std::forward<T_BigStruct_s_struct_setter>(s_);
    __isset.s = true;
    return s;
  }

  int32_t get_id() const {
    return id;
  }

  int32_t& set_id(int32_t id_) {
    id = id_;
    __isset.id = true;
    return id;
  }

  template <class Protocol_>
  uint32_t read(Protocol_* iprot);
  template <class Protocol_>
  uint32_t serializedSize(Protocol_ const* prot_) const;
  template <class Protocol_>
  uint32_t serializedSizeZC(Protocol_ const* prot_) const;
  template <class Protocol_>
  uint32_t write(Protocol_* prot_) const;

 private:
  template <class Protocol_>
  void readNoXfer(Protocol_* iprot);

  friend class ::apache::thrift::Cpp2Ops< BigStruct >;
};

void swap(BigStruct& a, BigStruct& b);

template <class Protocol_>
uint32_t BigStruct::read(Protocol_* iprot) {
  auto _xferStart = iprot->getCursorPosition();
  readNoXfer(iprot);
  return iprot->getCursorPosition() - _xferStart;
}

} // module2
