default_includes = ["include"]

def includes_list(srcs):
    return default_includes + depset([src[:src.rfind("/") - len(src)] for src in srcs]).to_list()

hdrs_patterns = [
    "include/boost/%s.h",
    "include/boost/%s_fwd.h",
    "include/boost/%s.hpp",
    "include/boost/%s_fwd.hpp",
    "include/boost/%s/**/*",
    "libs/%s/src/*.ipp",
]

def hdr_list(name):
    return native.glob(depset([hdrs_pattern % (name) for hdrs_pattern in hdrs_patterns]).to_list())

def boost_library(
        name,
        includes = [],
        hdrs = [],
        srcs = [],
        visibility = ["//visibility:public"],
        **kwargs):
    return native.cc_library(
        name = name,
        visibility = visibility,
        includes = includes_list(srcs) + includes,
        hdrs = hdr_list(name) + hdrs,
        srcs = srcs,
        licenses = ["notice"],
        **kwargs
    )
