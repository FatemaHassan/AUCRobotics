// Generated by gencpp from file pkg/wordCount.msg
// DO NOT EDIT!


#ifndef PKG_MESSAGE_WORDCOUNT_H
#define PKG_MESSAGE_WORDCOUNT_H

#include <ros/service_traits.h>


#include <pkg/wordCountRequest.h>
#include <pkg/wordCountResponse.h>


namespace pkg
{

struct wordCount
{

typedef wordCountRequest Request;
typedef wordCountResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct wordCount
} // namespace pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pkg::wordCount > {
  static const char* value()
  {
    return "58903d21a3264f3408d79ba79e9f7c7e";
  }

  static const char* value(const ::pkg::wordCount&) { return value(); }
};

template<>
struct DataType< ::pkg::wordCount > {
  static const char* value()
  {
    return "pkg/wordCount";
  }

  static const char* value(const ::pkg::wordCount&) { return value(); }
};


// service_traits::MD5Sum< ::pkg::wordCountRequest> should match
// service_traits::MD5Sum< ::pkg::wordCount >
template<>
struct MD5Sum< ::pkg::wordCountRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pkg::wordCount >::value();
  }
  static const char* value(const ::pkg::wordCountRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pkg::wordCountRequest> should match
// service_traits::DataType< ::pkg::wordCount >
template<>
struct DataType< ::pkg::wordCountRequest>
{
  static const char* value()
  {
    return DataType< ::pkg::wordCount >::value();
  }
  static const char* value(const ::pkg::wordCountRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pkg::wordCountResponse> should match
// service_traits::MD5Sum< ::pkg::wordCount >
template<>
struct MD5Sum< ::pkg::wordCountResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pkg::wordCount >::value();
  }
  static const char* value(const ::pkg::wordCountResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pkg::wordCountResponse> should match
// service_traits::DataType< ::pkg::wordCount >
template<>
struct DataType< ::pkg::wordCountResponse>
{
  static const char* value()
  {
    return DataType< ::pkg::wordCount >::value();
  }
  static const char* value(const ::pkg::wordCountResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PKG_MESSAGE_WORDCOUNT_H
