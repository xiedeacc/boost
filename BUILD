load("//bazel:build_rules.bzl", "boost_library")

boost_library(
    name = "atomic",
    srcs = ["libs/atomic/src/lockpool.cpp"],
    hdrs = ["include/boost/memory_order.hpp"],
    defines = [
        "BOOST_ATOMIC_SOURCE",
        "BOOST_ATOMIC_STATIC_LINK",
    ],
    linkstatic = 1,
    deps = [
        ":assert",
        ":config",
        ":cstdint",
    ],
)

boost_library(
    name = "assert",
    deps = [
        ":config",
        ":current_function",
    ],
)

boost_library(
    name = "config",
)

boost_library(
    name = "cstdint",
    deps = [
        ":config",
        ":limits",
    ],
)

boost_library(
    name = "type_traits",
    hdrs = ["include/boost/aligned_storage.hpp"],
    deps = [
        ":config",
        ":detail",
        ":static_assert",
        ":version",
    ],
)

boost_library(
    name = "version",
)

boost_library(
    name = "chrono",
    srcs = [
        "libs/chrono/src/chrono.cpp",
        "libs/chrono/src/process_cpu_clocks.cpp",
        "libs/chrono/src/thread_clock.cpp",
    ],
    copts = [
        "-Wall",
        "-Wextra",
        "-Wno-long-long",
        "-Wno-variadic-macros",
    ],
    defines = [
        "BOOST_CHRONO_STATIC_LINK",
    ],
    linkopts = [
        "-lrt",
        "-lpthread",
    ],
    linkstatic = 1,
    deps = [
        ":config",
        ":cstdint",
        ":detail",
        ":exception",
        ":mpl",
        ":operators",
        ":predef",
        ":ratio",
        ":system",
        ":type_traits",
        ":typeof",
        ":utility",
        ":version",
    ],
)

boost_library(
    name = "mpl",
    deps = [
        ":config",
        ":core",
        ":detail",
        ":move",
        ":preprocessor",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "operators",
    hdrs = ["include/boost/operators_v1.hpp"],
    deps = [
        ":config",
        ":core",
        ":detail",
    ],
)

boost_library(
    name = "predef",
    deps = [":assert"],
)

boost_library(
    name = "ratio",
    deps = [
        ":config",
        ":core",
        ":cstdint",
        ":integer_traits",
        ":mpl",
        ":static_assert",
        ":type_traits",
    ],
)

boost_library(
    name = "system",
    srcs = [
        "libs/system/src/error_code.cpp",
    ],
    defines = [
        "BOOST_CHRONO_STATIC_LINK",
    ],
    linkstatic = 1,
    deps = [
        ":cerrno",
        ":config",
        ":cstdint",
    ],
)

boost_library(
    name = "cerrno",
)

boost_library(
    name = "core",
    hdrs = [
        "include/boost/checked_delete.hpp",
        "include/boost/noncopyable.hpp",
        "include/boost/ref.hpp",
        "include/boost/swap.hpp",
    ],
    deps = [
        ":config",
        ":current_function",
    ],
)

boost_library(
    name = "utility",
    deps = [
        ":config",
        ":container_hash",
        ":core",
        ":cstdint",
        ":detail",
        ":preprocessor",
        ":static_assert",
        ":type_traits",
    ],
)

boost_library(
    name = "current_function",
)

boost_library(
    name = "exception",
    srcs = [
        "libs/exception/src/clone_current_exception_non_intrusive.cpp",
    ],
    hdrs = [
        "include/boost/exception_ptr.hpp",
        "include/boost/throw_exception.hpp",
    ],
    linkstatic = 1,
    deps = [
        ":assert",
        ":config",
        ":core",
        ":current_function",
        ":detail",
        ":tuple",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "move",
    deps = [
        ":assert",
        ":config",
        ":core",
        ":cstdint",
        ":static_assert",
    ],
)

boost_library(
    name = "preprocessor",
)

boost_library(
    name = "cstdlib",
)

boost_library(
    name = "rational",
    deps = [
        ":assert",
        ":detail",
        ":exception",
        ":operators",
        ":static_assert",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "multiprecision",
    deps = [
        ":container_hash",
        ":core",
        ":exception",
        ":functional",
        ":math",
        ":mpl",
        ":predef",
        ":random",
        ":rational",
        ":smart_ptr",
        ":static_assert",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "polygon",
    includes = ["include/boost/polygon"],
    deps = [
        ":config",
        ":cstdint",
    ],
)

boost_library(
    name = "qvm",
    deps = [
        ":config",
        ":exception",
        ":static_assert",
        ":utility",
    ],
)

boost_library(
    name = "progress",
    deps = [
        ":cstdint",
        ":timer",
    ],
)

boost_library(
    name = "hof",
)

boost_library(
    name = "multi_array",
    deps = [
        ":array",
        ":concept_check",
        ":functional",
        ":iterator",
        ":mpl",
        ":type",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "msm",
    deps = [
        ":any",
        ":parameter",
        ":phoenix",
        ":proto",
        ":serialization",
    ],
)

boost_library(
    name = "metaparse",
    deps = [
        ":config",
        ":mpl",
        ":predef",
        ":preprocessor",
        ":static_assert",
        ":type_traits",
    ],
)

boost_library(
    name = "logic",
    deps = [
        ":core",
        ":detail",
    ],
)

boost_library(
    name = "lockfree",
    deps = [
        ":align",
        ":array",
        ":atomic",
        ":core",
        ":cstdint",
        ":detail",
        ":iterator",
        ":mpl",
        ":parameter",
        ":predef",
        ":static_assert",
        ":tuple",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "local_function",
    deps = [
        ":detail",
        ":mpl",
        ":preprocessor",
        ":smart_ptr",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "icl",
    deps = [
        ":concept_check",
        ":container",
        ":detail",
        ":iterator",
        ":mpl",
        ":range",
        ":rational",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "heap",
    deps = [
        ":array",
        ":bind",
        ":concept_check",
        ":exception",
        ":intrusive",
        ":iterator",
        ":parameter",
        ":static_assert",
    ],
)

boost_library(
    name = "hana",
    deps = [
        ":fusion",
        ":mpl",
        ":tuple",
        ":version",
    ],
)

boost_library(
    name = "gil",
    deps = [
        ":filesystem",
        ":function",
        ":integer",
        ":iterator",
        ":lambda",
        ":mpl",
        ":numeric_conversion",
    ],
)

boost_library(
    name = "geometry",
    deps = [
        ":algorithm",
        ":array",
        ":container",
        ":core",
        ":exception",
        ":fusion",
        ":multiprecision",
        ":numeric_conversion",
        ":polygon",
        ":qvm",
        ":range",
        ":rational",
        ":serialization",
        ":smart_ptr",
        ":static_assert",
        ":thread",
        ":tokenizer",
        ":tuple",
        ":type_traits",
        ":variant",
    ],
)

boost_library(
    name = "generator_iterator",
    deps = [
        ":core",
        ":iterator",
    ],
)

boost_library(
    name = "cxx11_char_types",
    deps = [
        ":config",
        ":cstdint",
    ],
)

boost_library(
    name = "dll",
    deps = [
        ":core",
        ":cstdint",
        ":detail",
        ":filesystem",
        ":move",
        ":mpl",
        ":predef",
        ":smart_ptr",
        ":spirit",
    ],
)

boost_library(
    name = "flyweight",
    deps = [
        ":exception",
        ":interprocess",
        ":multi_index",
        ":parameter",
        ":serialization",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "detail",
    hdrs = [
        "include/boost/blank.hpp",
        "include/boost/blank_fwd.hpp",
        "include/boost/call_traits.hpp",
        "include/boost/compressed_pair.hpp",
    ],
    deps = [
        ":assert",
        ":config",
        ":core",
        ":cstdint",
        ":limits",
        ":version",
    ],
)

boost_library(
    name = "static_assert",
    deps = [":detail"],
)

boost_library(
    name = "limits",
    deps = [":config"],
)

boost_library(
    name = "integer_traits",
    deps = [
        ":config",
        ":limits",
    ],
)

boost_library(
    name = "integer",
    deps = [
        ":config",
        ":core",
        ":cstdint",
        ":detail",
        ":integer_traits",
        ":limits",
        ":static_assert",
    ],
)

boost_library(
    name = "container",
    srcs = [
        "libs/container/src/dlmalloc_ext_2_8_6.c",
    ] + glob([
        "libs/container/src/*.cpp",
    ]),
    hdrs = [
        "libs/container/src/dlmalloc_2_8_6.c",
    ],
    defines = ["BOOST_CONTAINER_STATIC_LINK"],
    linkstatic = 1,
    deps = [
        ":assert",
        ":config",
        ":core",
        ":cstdint",
        ":intrusive",
        ":move",
        ":static_assert",
    ],
)

boost_library(
    name = "intrusive",
    deps = [
        ":assert",
        ":config",
        ":core",
        ":functional",
        ":static_assert",
    ],
)

boost_library(
    name = "poly_collection",
    deps = [
        ":config",
        ":core",
        ":detail",
        ":iterator",
        ":mp11",
        ":mpl",
        ":type_erasure",
        ":type_traits",
    ],
)

boost_library(
    name = "smart_ptr",
    hdrs = [
        "include/boost/enable_shared_from_this.hpp",
        "include/boost/intrusive_ptr.hpp",
        "include/boost/make_shared.hpp",
        "include/boost/make_unique.hpp",
        "include/boost/pointer_to_other.hpp",
        "include/boost/scoped_array.hpp",
        "include/boost/scoped_ptr.hpp",
        "include/boost/shared_array.hpp",
        "include/boost/shared_ptr.hpp",
        "include/boost/weak_ptr.hpp",
    ],
    deps = [
        ":assert",
        ":config",
        ":core",
        ":cstdint",
        ":detail",
        ":exception",
        ":move",
        ":predef",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "align",
    deps = [
        ":assert",
        ":config",
        ":core",
        ":exception",
        ":static_assert",
    ],
)

boost_library(
    name = "context",
    srcs = [
        "libs/context/src/asm/jump_x86_64_sysv_elf_gas.S",
        "libs/context/src/asm/make_x86_64_sysv_elf_gas.S",
        "libs/context/src/asm/ontop_x86_64_sysv_elf_gas.S",
        "libs/context/src/execution_context.cpp",
        "libs/context/src/posix/stack_traits.cpp",
    ],
    defines = [
        "BOOST_CONTEXT_SOURCE",
        "BOOST_DISABLE_ASSERTS",
    ],
    linkstatic = 1,
    deps = [
        ":assert",
        ":config",
        ":cstdint",
        ":detail",
        ":pool",
        ":predef",
        ":smart_ptr",
    ],
)

boost_library(
    name = "pool",
    deps = [
        ":assert",
        ":config",
        ":detail",
        ":exception",
        ":integer",
        ":limits",
        ":type_traits",
    ],
)

boost_library(
    name = "contract",
    srcs = ["libs/contract/src/contract.cpp"],
    hdrs = [
        "include/boost/contract_macro.hpp",
    ],
    defines = ["BOOST_CONTRACT_STATIC_LINK"],
    linkstatic = 1,
    deps = [
        ":any",
        ":assert",
        ":config",
        ":core",
        ":detail",
        ":exception",
        ":function",
        ":mpl",
        ":optional",
        ":preprocessor",
        ":smart_ptr",
        ":static_assert",
        ":system",
        ":thread",
        ":type_traits",
        ":typeof",
        ":utility",
    ],
)

boost_library(
    name = "tokenizer",
    hdrs = [
        "include/boost/token_functions.hpp",
        "include/boost/token_iterator.hpp",
    ],
    deps = [
        ":assert",
        ":config",
        ":detail",
        ":exception",
        ":iterator",
        ":mpl",
    ],
)

boost_library(
    name = "thread",
    srcs = [
        "libs/thread/src/future.cpp",
        "libs/thread/src/pthread/once.cpp",
        "libs/thread/src/pthread/thread.cpp",
    ],
    hdrs = [
        "libs/thread/src/pthread/once_atomic.cpp",
    ],
    copts = [
        "-Wall",
        "-Wextra",
        "-pedantic",
        "-Wno-long-long",
        "-Wno-variadic-macros",
        "-Wunused-function",
        "-Wno-unused-parameter",
    ],
    defines = [
        "BOOST_THREAD_PLATFORM_PTHREAD",
        "BOOST_THREAD_BUILD_LIB=1",
        "BOOST_THREAD_POSIX",
        "BOOST_THREAD_USES_CHRONO",
    ],
    linkopts = [
        "-lrt",
        "-lpthread",
    ],
    linkstatic = 1,
    deps = [
        ":algorithm",
        ":assert",
        ":atomic",
        ":bind",
        ":chrono",
        ":config",
        ":container",
        ":core",
        ":date_time",
        ":detail",
        ":exception",
        ":function",
        ":functional",
        ":intrusive",
        ":io",
        ":iterator",
        ":lexical_cast",
        ":move",
        ":mpl",
        ":optional",
        ":predef",
        ":preprocessor",
        ":smart_ptr",
        ":static_assert",
        ":system",
        ":tuple",
        ":type_traits",
    ],
)

boost_library(
    name = "algorithm",
    deps = [
        ":config",
        ":core",
        ":detail",
        ":exception",
        ":function",
        ":iterator",
        ":mpl",
        ":range",
        ":regex",
        ":static_assert",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "function",
    hdrs = [
        "include/boost/function_equal.hpp",
    ],
    deps = [
        ":assert",
        ":bind",
        ":config",
        ":core",
        ":integer",
        ":preprocessor",
        ":type_index",
        ":type_traits",
        ":typeof",
    ],
)

boost_library(
    name = "iterator",
    hdrs = [
        "include/boost/function_output_iterator.hpp",
        "include/boost/generator_iterator.hpp",
        "include/boost/indirect_reference.hpp",
        "include/boost/iterator_adaptors.hpp",
        "include/boost/next_prior.hpp",
        "include/boost/pointee.hpp",
        "include/boost/shared_container_iterator.hpp",
    ],
    deps = [
        ":assert",
        ":concept_check",
        ":config",
        ":core",
        ":detail",
        ":function_types",
        ":fusion",
        ":limits",
        ":mpl",
        ":operators",
        ":optional",
        ":static_assert",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "function_types",
    deps = [
        ":config",
        ":detail",
        ":mpl",
    ],
)

boost_library(
    name = "fusion",
    deps = [
        ":config",
        ":core",
        ":detail",
        ":function_types",
        ":functional",
        ":get_pointer",
        ":mpl",
        ":preprocessor",
        ":static_assert",
        ":tuple",
        ":type_traits",
        ":typeof",
        ":utility",
    ],
)

boost_library(
    name = "range",
    deps = [
        ":array",
        ":assert",
        ":concept_check",
        ":config",
        ":core",
        ":detail",
        ":functional",
        ":integer",
        ":iterator",
        ":mpl",
        ":optional",
        ":preprocessor",
        ":regex",
        ":static_assert",
        ":tuple",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "bind",
    hdrs = ["include/boost/mem_fn.hpp"],
    deps = [
        ":core",
        ":get_pointer",
        ":is_placeholder",
        ":type",
        ":visit_each",
    ],
)

boost_library(
    name = "get_pointer",
)

boost_library(
    name = "is_placeholder",
)

boost_library(
    name = "type",
)

boost_library(
    name = "visit_each",
)

boost_library(
    name = "yap",
    deps = [
        ":hana",
        ":type_index",
    ],
)

boost_library(
    name = "units",
    deps = [
        ":serialization",
        ":utility",
    ],
)

boost_library(
    name = "uuid",
    deps = [
        ":cast",
        ":random",
        ":serialization",
    ],
)

boost_library(
    name = "type_index",
    deps = [
        ":config",
        ":container_hash",
        ":core",
        ":exception",
        ":functional",
        ":preprocessor",
        ":smart_ptr",
        ":static_assert",
    ],
)

boost_library(
    name = "container_hash",
    deps = [
        ":assert",
        ":config",
        ":core",
        ":cstdint",
        ":detail",
        ":integer",
        ":limits",
        ":static_assert",
        ":type_traits",
    ],
)

boost_library(
    name = "functional",
    deps = [
        ":config",
        ":container_hash",
        ":detail",
        ":function_types",
        ":mpl",
        ":type_traits",
        ":typeof",
    ],
)

boost_library(
    name = "array",
    deps = [
        ":assert",
        ":config",
        ":core",
        ":detail",
        ":exception",
    ],
)

boost_library(
    name = "concept_check",
    hdrs = ["include/boost/concept_archetype.hpp"],
    deps = [
        ":concept",
        ":config",
        ":functional",
    ],
)

boost_library(
    name = "concept",
)

boost_library(
    name = "optional",
    deps = [
        ":assert",
        ":config",
        ":core",
        ":detail",
        ":exception",
        ":move",
        ":none",
        ":predef",
        ":static_assert",
        ":type",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "none",
    hdrs = [
        "include/boost/non_type.hpp",
        "include/boost/none_t.hpp",
    ],
)

boost_library(
    name = "regex",
    srcs = [
        "libs/regex/src/c_regex_traits.cpp",
        "libs/regex/src/cpp_regex_traits.cpp",
        "libs/regex/src/cregex.cpp",
        "libs/regex/src/fileiter.cpp",
        "libs/regex/src/icu.cpp",
        "libs/regex/src/instances.cpp",
        "libs/regex/src/internals.hpp",
        "libs/regex/src/posix_api.cpp",
        "libs/regex/src/regex.cpp",
        "libs/regex/src/regex_debug.cpp",
        "libs/regex/src/regex_raw_buffer.cpp",
        "libs/regex/src/regex_traits_defaults.cpp",
        "libs/regex/src/static_mutex.cpp",
        "libs/regex/src/usinstances.cpp",
        "libs/regex/src/w32_regex_traits.cpp",
        "libs/regex/src/wc_regex_traits.cpp",
        "libs/regex/src/wide_posix_api.cpp",
        "libs/regex/src/winstances.cpp",
    ],
    hdrs = [
        "include/boost/cregex.hpp",
    ],
    linkstatic = 1,
    deps = [
        ":assert",
        ":config",
        ":core",
        ":cstdint",
        ":detail",
        ":exception",
        ":format",
        ":functional",
        ":integer",
        ":limits",
        ":mpl",
        ":predef",
        ":smart_ptr",
        ":type_traits",
    ],
)

boost_library(
    name = "format",
    deps = [
        ":assert",
        ":config",
        ":core",
        ":detail",
        ":exception",
        ":limits",
        ":optional",
        ":smart_ptr",
        ":utility",
    ],
)

boost_library(
    name = "tuple",
    deps = [
        ":config",
        ":core",
        ":static_assert",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "timer",
    srcs = [
        "libs/timer/src/auto_timers_construction.cpp",
        "libs/timer/src/cpu_timer.cpp",
    ],
    defines = ["BOOST_TIMER_STATIC_LINK"],
    linkstatic = 1,
    deps = [
        ":chrono",
        ":io",
        ":system",
    ],
)

boost_library(
    name = "date_time",
    srcs = [
        "libs/date_time/src/gregorian/date_generators.cpp",
        "libs/date_time/src/gregorian/greg_month.cpp",
        "libs/date_time/src/gregorian/greg_names.hpp",
        "libs/date_time/src/gregorian/greg_weekday.cpp",
    ],
    defines = ["DATE_TIME_INLINE"],
    linkstatic = 1,
    deps = [
        ":algorithm",
        ":assert",
        ":config",
        ":container",
        ":core",
        ":cstdint",
        ":exception",
        ":io",
        ":lexical_cast",
        ":limits",
        ":mpl",
        ":numeric_conversion",
        ":operators",
        ":range",
        ":serialization",
        ":smart_ptr",
        ":static_assert",
        ":tokenizer",
        ":type_traits",
    ],
)

boost_library(
    name = "serialization",
    srcs = [
        "libs/serialization/src/archive_exception.cpp",
        "libs/serialization/src/basic_archive.cpp",
        "libs/serialization/src/basic_iarchive.cpp",
        "libs/serialization/src/basic_iserializer.cpp",
        "libs/serialization/src/basic_oarchive.cpp",
        "libs/serialization/src/basic_oserializer.cpp",
        "libs/serialization/src/basic_pointer_iserializer.cpp",
        "libs/serialization/src/basic_pointer_oserializer.cpp",
        "libs/serialization/src/basic_serializer_map.cpp",
        "libs/serialization/src/basic_text_iprimitive.cpp",
        "libs/serialization/src/basic_text_oprimitive.cpp",
        "libs/serialization/src/basic_text_wiprimitive.cpp",
        "libs/serialization/src/basic_text_woprimitive.cpp",
        "libs/serialization/src/basic_xml_archive.cpp",
        "libs/serialization/src/binary_iarchive.cpp",
        "libs/serialization/src/binary_oarchive.cpp",
        "libs/serialization/src/codecvt_null.cpp",
        "libs/serialization/src/extended_type_info.cpp",
        "libs/serialization/src/extended_type_info_no_rtti.cpp",
        "libs/serialization/src/extended_type_info_typeid.cpp",
        "libs/serialization/src/polymorphic_binary_iarchive.cpp",
        "libs/serialization/src/polymorphic_binary_oarchive.cpp",
        "libs/serialization/src/polymorphic_iarchive.cpp",
        "libs/serialization/src/polymorphic_oarchive.cpp",
        "libs/serialization/src/polymorphic_text_iarchive.cpp",
        "libs/serialization/src/polymorphic_text_oarchive.cpp",
        "libs/serialization/src/polymorphic_text_wiarchive.cpp",
        "libs/serialization/src/polymorphic_text_woarchive.cpp",
        "libs/serialization/src/polymorphic_xml_iarchive.cpp",
        "libs/serialization/src/polymorphic_xml_oarchive.cpp",
        "libs/serialization/src/polymorphic_xml_wiarchive.cpp",
        "libs/serialization/src/polymorphic_xml_woarchive.cpp",
        "libs/serialization/src/stl_port.cpp",
        "libs/serialization/src/text_iarchive.cpp",
        "libs/serialization/src/text_oarchive.cpp",
        "libs/serialization/src/text_wiarchive.cpp",
        "libs/serialization/src/text_woarchive.cpp",
        "libs/serialization/src/utf8_codecvt_facet.cpp",
        "libs/serialization/src/void_cast.cpp",
        "libs/serialization/src/xml_archive_exception.cpp",
        "libs/serialization/src/xml_grammar.cpp",
        "libs/serialization/src/xml_iarchive.cpp",
        "libs/serialization/src/xml_oarchive.cpp",
        "libs/serialization/src/xml_wgrammar.cpp",
        "libs/serialization/src/xml_wiarchive.cpp",
        "libs/serialization/src/xml_woarchive.cpp",
    ],
    copts = [
        "-ftemplate-depth-255",
        "-fvisibility=hidden",
        "-fvisibility-inlines-hidden",
    ],
    linkstatic = 1,
    deps = [
        ":archive",
        ":config",
        ":detail",
    ],
)

boost_library(
    name = "archive",
    deps = [
        ":array",
        ":assert",
        ":config",
        ":core",
        ":detail",
        ":integer",
        ":io",
        ":iterator",
        ":mpl",
        ":smart_ptr",
        ":spirit",
        ":static_assert",
        ":type_traits",
    ],
)

boost_library(
    name = "spirit",
    deps = [
        ":algorithm",
        ":array",
        ":assert",
        ":concept_check",
        ":core",
        ":detail",
        ":endian",
        ":exception",
        ":filesystem",
        ":foreach",
        ":function",
        ":function_types",
        ":fusion",
        ":integer",
        ":io",
        ":iostreams",
        ":iterator",
        ":lexical_cast",
        ":math",
        ":move",
        ":mpl",
        ":optional",
        ":phoenix",
        ":pool",
        ":predef",
        ":preprocessor",
        ":proto",
        ":range",
        ":regex",
        ":smart_ptr",
        ":static_assert",
        ":tti",
        ":type_traits",
        ":typeof",
        ":unordered",
        ":utility",
        ":variant",
        ":version",
    ],
)

boost_library(
    name = "unordered",
    hdrs = [
        "include/boost/unordered_map.hpp",
        "include/boost/unordered_set.hpp",
    ],
    deps = [
        ":assert",
        ":config",
        ":core",
        ":detail",
        ":exception",
        ":functional",
        ":limits",
        ":move",
        ":predef",
        ":preprocessor",
        ":smart_ptr",
        ":tuple",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "process",
    deps = [
        ":algorithm",
        ":asio",
        ":filesystem",
        ":fusion",
        ":iterator",
        ":none",
        ":system",
        ":tokenizer",
        ":type_index",
    ],
)

boost_library(
    name = "variant",
    deps = [
        ":assert",
        ":bind",
        ":config",
        ":detail",
        ":exception",
        ":functional",
        ":integer",
        ":move",
        ":mpl",
        ":preprocessor",
        ":type_index",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "phoenix",
    deps = [
        ":function",
        ":fusion",
        ":get_pointer",
        ":is_placeholder",
        ":predef",
        ":proto",
        ":range",
        ":smart_ptr",
        ":version",
        ":visit_each",
    ],
)

boost_library(
    name = "proto",
    deps = [
        ":fusion",
        ":static_assert",
        ":version",
    ],
)

boost_library(
    name = "tti",
    deps = [
        ":config",
        ":detail",
        ":function_types",
        ":mpl",
        ":preprocessor",
        ":type_traits",
    ],
)

boost_library(
    name = "endian",
    deps = [
        ":assert",
        ":config",
        ":core",
        ":cstdint",
        ":current_function",
        ":predef",
        ":static_assert",
        ":type_traits",
    ],
)

boost_library(
    name = "filesystem",
    srcs = [
        "libs/filesystem/src/codecvt_error_category.cpp",
        "libs/filesystem/src/operations.cpp",
        "libs/filesystem/src/path.cpp",
        "libs/filesystem/src/path_traits.cpp",
        "libs/filesystem/src/portability.cpp",
        "libs/filesystem/src/unique_path.cpp",
        "libs/filesystem/src/utf8_codecvt_facet.cpp",
        "libs/filesystem/src/windows_file_codecvt.cpp",
    ],
    defines = [
        "_INCLUDE_STDC__SOURCE_199901",
        "BOOST_FILESYSTEM_STATIC_LINK",
    ],
    linkstatic = 1,
    deps = [
        ":assert",
        ":config",
        ":cstdint",
        ":detail",
        ":functional",
        ":io",
        ":iterator",
        ":smart_ptr",
        ":static_assert",
        ":system",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "foreach",
    deps = [
        ":iterator",
    ],
)

boost_library(
    name = "iostreams",
    srcs = [
        "libs/iostreams/src/file_descriptor.cpp",
        "libs/iostreams/src/mapped_file.cpp",
    ],
    defines = [
        "BOOST_IOSTREAMS_USE_DEPRECATED",
    ],
    deps = [
        ":assert",
        ":bind",
        ":config",
        ":core",
        ":cstdint",
        ":detail",
        ":exception",
        ":function",
        ":integer_traits",
        ":iterator",
        ":mpl",
        ":numeric_conversion",
        ":preprocessor",
        ":range",
        ":regex",
        ":smart_ptr",
        ":static_assert",
        ":type",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "any",
    deps = [
        ":config",
        ":exception",
        ":mpl",
        ":static_assert",
        ":type_index",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "io",
    deps = [":detail"],
)

boost_library(
    name = "lexical_cast",
    deps = [
        ":array",
        ":chrono",
        ":config",
        ":container",
        ":core",
        ":detail",
        ":exception",
        ":integer",
        ":limits",
        ":math",
        ":mpl",
        ":numeric_conversion",
        ":range",
        ":static_assert",
        ":type_traits",
    ],
)

boost_library(
    name = "lambda",
    deps = [
        ":config",
        ":detail",
        ":is_placeholder",
        ":iterator",
        ":mpl",
        ":preprocessor",
        ":tuple",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "math",
    hdrs = ["include/boost/cstdfloat.hpp"],
    deps = [
        ":array",
        ":atomic",
        ":concept_check",
        ":exception",
        ":fusion",
        ":integer",
        ":lambda",
        ":predef",
        ":range",
        ":static_assert",
        ":tuple",
        ":type_traits",
        ":utility",
        ":version",
    ],
)

boost_library(
    name = "typeof",
    deps = [
        ":config",
        ":detail",
        ":mpl",
        ":preprocessor",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "numeric_conversion",
    hdrs = glob([
        "include/boost/numeric/conversion/**/*.hpp",
    ]),
    deps = [
        ":config",
        ":detail",
        ":exception",
        ":integer",
        ":limits",
        ":mpl",
        ":type",
        ":type_traits",
    ],
)

boost_library(
    name = "coroutine",
    srcs = [
        "libs/coroutine/src/detail/coroutine_context.cpp",
        "libs/coroutine/src/exceptions.cpp",
    ],
    defines = [
        "BOOST_COROUTINES_SOURCE",
        "BOOST_COROUTINES_NO_DEPRECATION_WARNING",
    ],
    linkstatic = 1,
    deps = [
        ":context",
        ":system",
        ":thread",
    ],
)

boost_library(
    name = "coroutine2",
    deps = [
        ":assert",
        ":config",
        ":context",
        ":detail",
    ],
)

boost_library(
    name = "fiber",
    srcs = [
        "libs/fiber/src/algo/algorithm.cpp",
        "libs/fiber/src/algo/round_robin.cpp",
        "libs/fiber/src/algo/shared_work.cpp",
        "libs/fiber/src/algo/work_stealing.cpp",
        "libs/fiber/src/barrier.cpp",
        "libs/fiber/src/condition_variable.cpp",
        "libs/fiber/src/context.cpp",
        "libs/fiber/src/fiber.cpp",
        "libs/fiber/src/future.cpp",
        "libs/fiber/src/mutex.cpp",
        "libs/fiber/src/properties.cpp",
        "libs/fiber/src/recursive_mutex.cpp",
        "libs/fiber/src/recursive_timed_mutex.cpp",
        "libs/fiber/src/scheduler.cpp",
        "libs/fiber/src/timed_mutex.cpp",
    ],
    defines = [
        "BOOST_FIBERS_SOURCE",
        "BOOST_DISABLE_ASSERTS",
    ],
    linkstatic = 1,
    deps = [
        ":context",
        ":filesystem",
        ":intrusive",
        ":predef",
    ],
)

boost_library(
    name = "graph",
    srcs = [
        "libs/graph/src/graphml.cpp",
        "libs/graph/src/read_graphviz_new.cpp",
    ],
    linkstatic = 1,
    deps = [
        ":algorithm",
        ":any",
        ":array",
        ":assert",
        ":bimap",
        ":bind",
        ":core",
        ":detail",
        ":dynamic_bitset",
        ":functional",
        ":implicit_cast",
        ":integer",
        ":lexical_cast",
        ":math",
        ":multi_index_container",
        ":none",
        ":operators",
        ":optional",
        ":parameter",
        ":pending",
        ":preprocessor",
        ":property_tree",
        ":random",
        ":range",
        ":regex",
        ":smart_ptr",
        ":test",
        ":tti",
        ":tuple",
        ":typeof",
        ":unordered",
        ":variant",
        ":version",
        ":xpressive",
    ],
)

boost_library(
    name = "multi_index",
    deps = [
        ":config",
        ":core",
        ":detail",
        ":exception",
        ":functional",
        ":iterator",
        ":limits",
        ":move",
        ":mpl",
        ":preprocessor",
        ":serialization",
        ":static_assert",
        ":tuple",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "bimap",
    deps = [
        ":concept_check",
        ":config",
        ":detail",
        ":exception",
        ":functional",
        ":iterator",
        ":lambda",
        ":mpl",
        ":multi_index",
        ":operators",
        ":property_map",
        ":serialization",
        ":static_assert",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "property_map",
    deps = [
        ":concept_check",
        ":cstdint",
        ":detail",
        ":exception",
        ":function",
        ":iterator",
        ":lexical_cast",
        ":mpl",
        ":multi_index",
        ":optional",
        ":serialization",
        ":smart_ptr",
        ":static_assert",
        ":type",
        ":type_traits",
        ":utility",
        ":version",
    ],
)

boost_library(
    name = "mpi",
    deps = [
        ":any",
        ":bind",
        ":concept_check",
        ":detail",
        ":exception",
        ":function",
        ":iterator",
        ":lexical_cast",
        ":mpl",
        ":multi_index",
        ":optional",
        ":python",
        ":serialization",
        ":smart_ptr",
        ":static_assert",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "python",
    deps = [
        ":config",
        ":core",
        ":detail",
        ":get_pointer",
        ":iterator",
        ":mpl",
        ":preprocessor",
        ":smart_ptr",
        ":static_assert",
        ":type",
        ":utility",
    ],
)

boost_library(
    name = "dynamic_bitset",
    deps = [
        ":assert",
        ":config",
        ":detail",
        ":exception",
        ":integer",
        ":move",
        ":serialization",
        ":static_assert",
    ],
)

boost_library(
    name = "implicit_cast",
)

boost_library(
    name = "xpressive",
    deps = [
        "assert",
        "config",
        ":core",
        ":current_function",
        ":detail",
        ":exception",
        ":iterator",
        ":lexical_cast",
        ":mpl",
        ":numeric_conversion",
        ":optional",
        ":preprocessor",
        ":proto",
        ":range",
        ":smart_ptr",
        ":static_assert",
        ":type_traits",
        ":typeof",
        ":utility",
        ":version",
    ],
)

boost_library(
    name = "multi_index_container",
    deps = [
        ":core",
        ":detail",
        ":move",
        ":mpl",
        ":multi_index",
    ],
)

boost_library(
    name = "property_tree",
    deps = [
        ":any",
        ":assert",
        ":bind",
        ":config",
        ":core",
        ":exception",
        ":format",
        ":iterator",
        ":limits",
        ":multi_index",
        ":multi_index_container",
        ":optional",
        ":range",
        ":serialization",
        ":static_assert",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "test",
    deps = [
        ":algorithm",
        ":bind",
        ":config",
        ":core",
        ":detail",
        ":exception",
        ":function",
        ":io",
        ":iterator",
        ":mpl",
        ":optional",
        ":preprocessor",
        ":smart_ptr",
        ":static_assert",
        ":timer",
        ":type",
        ":type_traits",
        ":utility",
        ":version",
    ],
)

boost_library(
    name = "random",
    hdrs = ["include/boost/nondet_random.hpp"],
    deps = [
        ":assert",
        ":config",
        ":dynamic_bitset",
        ":exception",
        ":integer",
        ":io",
        ":math",
        ":operators",
        ":pending",
        ":range",
        ":static_assert",
        ":type_traits",
        ":utility",
    ],
)

boost_library(
    name = "pending",
    deps = [
        ":integer",
        ":limits",
        ":mpl",
        ":none",
        ":operators",
        ":optional",
        ":property_map",
        ":serialization",
        ":static_assert",
        ":type_traits",
        ":unordered",
        ":utility",
    ],
)

boost_library(
    name = "parameter",
    deps = [
        ":detail",
        ":mpl",
        ":preprocessor",
        ":type_traits",
    ],
)

boost_library(
    name = "locale",
    srcs = [
        "libs/locale/src/encoding/codepage.cpp",
        "libs/locale/src/posix/codecvt.cpp",
        "libs/locale/src/posix/collate.cpp",
        "libs/locale/src/posix/converter.cpp",
        "libs/locale/src/posix/numeric.cpp",
        "libs/locale/src/posix/posix_backend.cpp",
        "libs/locale/src/shared/date_time.cpp",
        "libs/locale/src/shared/format.cpp",
        "libs/locale/src/shared/formatting.cpp",
        "libs/locale/src/shared/generator.cpp",
        "libs/locale/src/shared/ids.cpp",
        "libs/locale/src/shared/localization_backend.cpp",
        "libs/locale/src/shared/message.cpp",
        "libs/locale/src/shared/mo_lambda.cpp",
        "libs/locale/src/util/codecvt_converter.cpp",
        "libs/locale/src/util/default_locale.cpp",
        "libs/locale/src/util/gregorian.cpp",
        "libs/locale/src/util/info.cpp",
        "libs/locale/src/util/locale_data.cpp",
    ],
    hdrs = glob([
        "libs/locale/src/**/*.hpp",
        "libs/locale/src/**/*.ipp",
    ]),
    copts = [
        "-Wno-deprecated-declarations",
    ],
    defines = [
        "BOOST_THREAD_NO_LIB=1",
        "BOOST_LOCALE_WITH_ICONV=1",
        "BOOST_LOCALE_NO_STD_BACKEND=1",
        "BOOST_LOCALE_NO_WINAPI_BACKEND=1",
    ],
    deps = [
        ":assert",
        ":function",
        ":iterator",
        ":smart_ptr",
        ":system",
        ":thread",
        ":type_traits",
        ":version",
    ],
)

boost_library(
    name = "log",
    srcs = [
        "libs/log/src/alignment_gap_between.hpp",
        "libs/log/src/attribute_name.cpp",
        "libs/log/src/attribute_set.cpp",
        "libs/log/src/attribute_set_impl.hpp",
        "libs/log/src/attribute_value_set.cpp",
        "libs/log/src/bit_tools.hpp",
        "libs/log/src/code_conversion.cpp",
        "libs/log/src/core.cpp",
        "libs/log/src/date_time_format_parser.cpp",
        "libs/log/src/default_attribute_names.cpp",
        "libs/log/src/default_sink.cpp",
        "libs/log/src/default_sink.hpp",
        "libs/log/src/dump.cpp",
        "libs/log/src/dump_avx2.cpp",
        "libs/log/src/dump_ssse3.cpp",
        "libs/log/src/event.cpp",
        "libs/log/src/exceptions.cpp",
        "libs/log/src/format_parser.cpp",
        "libs/log/src/global_logger_storage.cpp",
        "libs/log/src/id_formatting.hpp",
        "libs/log/src/murmur3.hpp",
        "libs/log/src/named_scope.cpp",
        "libs/log/src/named_scope_format_parser.cpp",
        "libs/log/src/once_block.cpp",
        "libs/log/src/permissions.cpp",
        "libs/log/src/posix/ipc_reliable_message_queue.cpp",
        "libs/log/src/posix/ipc_sync_wrappers.hpp",
        "libs/log/src/posix/object_name.cpp",
        "libs/log/src/process_id.cpp",
        "libs/log/src/process_name.cpp",
        "libs/log/src/record_ostream.cpp",
        "libs/log/src/severity_level.cpp",
        "libs/log/src/spirit_encoding.cpp",
        "libs/log/src/spirit_encoding.hpp",
        "libs/log/src/stateless_allocator.hpp",
        "libs/log/src/syslog_backend.cpp",
        "libs/log/src/text_file_backend.cpp",
        "libs/log/src/text_multifile_backend.cpp",
        "libs/log/src/text_ostream_backend.cpp",
        "libs/log/src/thread_id.cpp",
        "libs/log/src/thread_specific.cpp",
        "libs/log/src/threadsafe_queue.cpp",
        "libs/log/src/timer.cpp",
        "libs/log/src/timestamp.cpp",
        "libs/log/src/trivial.cpp",
        "libs/log/src/unhandled_exception_count.cpp",
        "libs/log/src/unique_ptr.hpp",
    ],
    copts = [
        "-msse4.2",
        "-mavx2",
    ],
    defines = [
        "BOOST_LOG_USE_AVX2",
        "BOOST_LOG_USE_SSSE3",
        "BOOST_LOG_BUILDING_THE_LIB=1",
        "BOOST_LOG_WITHOUT_EVENT_LOG",
        "BOOST_LOG_WITHOUT_DEBUG_OUTPUT",
    ],
    linkstatic = 1,
    deps = [
        ":align",
        ":array",
        ":asio",
        ":assert",
        ":atomic",
        ":bind",
        ":config",
        ":core",
        ":cstdint",
        ":current_function",
        ":date_time",
        ":detail",
        ":exception",
        ":filesystem",
        ":function_types",
        ":fusion",
        ":interprocess",
        ":intrusive",
        ":iterator",
        ":lexical_cast",
        ":locale",
        ":move",
        ":mpl",
        ":optional",
        ":parameter",
        ":phoenix",
        ":predef",
        ":preprocessor",
        ":random",
        ":range",
        ":regex",
        ":smart_ptr",
        ":spirit",
        ":static_assert",
        ":system",
        ":thread",
        ":type_index",
        ":type_traits",
        ":utility",
        ":xpressive",
    ],
)

boost_library(
    name = "interprocess",
    deps = [
        ":assert",
        ":config",
        ":container",
        ":core",
        ":detail",
        ":integer",
        ":intrusive",
        ":move",
        ":static_assert",
        ":type_traits",
        ":unordered",
        ":utility",
    ],
)

boost_library(
    name = "asio",
    deps = [
        ":cerrno",
        ":coroutine",
        ":date_time",
        ":regex",
        ":system",
    ],
)

boost_library(
    name = "log_setup",
    srcs = [
        "libs/log/src/setup/default_filter_factory.cpp",
        "libs/log/src/setup/default_filter_factory.hpp",
        "libs/log/src/setup/default_formatter_factory.cpp",
        "libs/log/src/setup/default_formatter_factory.hpp",
        "libs/log/src/setup/filter_parser.cpp",
        "libs/log/src/setup/formatter_parser.cpp",
        "libs/log/src/setup/init_from_settings.cpp",
        "libs/log/src/setup/init_from_stream.cpp",
        "libs/log/src/setup/matches_relation_factory.cpp",
        "libs/log/src/setup/parser_utils.cpp",
        "libs/log/src/setup/parser_utils.hpp",
        "libs/log/src/setup/settings_parser.cpp",
    ],
    defines = ["BOOST_LOG_SETUP_BUILDING_THE_LIB=1"],
    linkstatic = 1,
    deps = [
        ":log",
        ":property_tree",
    ],
)

boost_library(
    name = "program_options",
    srcs = [
        "libs/program_options/src/cmdline.cpp",
        "libs/program_options/src/config_file.cpp",
        "libs/program_options/src/convert.cpp",
        "libs/program_options/src/options_description.cpp",
        "libs/program_options/src/parsers.cpp",
        "libs/program_options/src/positional_options.cpp",
        "libs/program_options/src/split.cpp",
        "libs/program_options/src/utf8_codecvt_facet.cpp",
        "libs/program_options/src/value_semantic.cpp",
        "libs/program_options/src/variables_map.cpp",
        "libs/program_options/src/winmain.cpp",
    ],
    linkstatic = 1,
    deps = [
        ":any",
        ":bind",
        ":config",
        ":core",
        ":detail",
        ":exception",
        ":function",
        ":iterator",
        ":lexical_cast",
        ":smart_ptr",
        ":static_assert",
        ":tokenizer",
        ":type_traits",
        ":version",
    ],
)

boost_library(
    name = "stacktrace",
    srcs = [
        "libs/stacktrace/src/addr2line.cpp",
        "libs/stacktrace/src/basic.cpp",
        "libs/stacktrace/src/noop.cpp",
    ],
    linkstatic = 1,
    deps = [
        ":array",
        ":container_hash",
        ":core",
        ":static_assert",
        ":type_traits",
    ],
)

boost_library(
    name = "type_erasure",
    srcs = ["libs/type_erasure/src/dynamic_binding.cpp"],
    linkstatic = 1,
    deps = [
        ":exception",
        ":fusion",
        ":iterator",
        ":mp11",
        ":mpl",
        ":preprocessor",
        ":smart_ptr",
        ":system",
        ":thread",
        ":type_traits",
        ":utility",
        ":vmd",
    ],
)

boost_library(
    name = "mp11",
)

boost_library(
    name = "vmd",
    deps = [":preprocessor"],
)

boost_library(
    name = "wave",
    srcs = [
        "libs/wave/src/cpplexer/re2clex/aq.cpp",
        "libs/wave/src/cpplexer/re2clex/cpp_re.cpp",
        "libs/wave/src/instantiate_cpp_exprgrammar.cpp",
        "libs/wave/src/instantiate_cpp_grammar.cpp",
        "libs/wave/src/instantiate_cpp_literalgrs.cpp",
        "libs/wave/src/instantiate_defined_grammar.cpp",
        "libs/wave/src/instantiate_predef_macros.cpp",
        "libs/wave/src/instantiate_re2c_lexer.cpp",
        "libs/wave/src/instantiate_re2c_lexer_str.cpp",
        "libs/wave/src/token_ids.cpp",
        "libs/wave/src/wave_config_constant.cpp",
    ],
    defines = ["BOOST_THREAD_USE_LIB=1"],
    linkstatic = 1,
    deps = [
        ":date_time",
        ":filesystem",
        ":thread",
    ],
)

boost_library(
    name = "accumulators",
    deps = [
        ":array",
        ":circular_buffer",
        ":concept_check",
        ":core",
        ":exception",
        ":fusion",
        ":numeric_conversion",
        ":numeric_ublas",
        ":range",
        ":tuple",
        ":type_traits",
        ":typeof",
        ":utility",
        ":version",
    ],
)

boost_library(
    name = "numeric_ublas",
    deps = [
        ":concept_check",
        ":serialization",
        ":smart_ptr",
        ":static_assert",
        ":type_traits",
        ":typeof",
        ":utility",
    ],
)

boost_library(
    name = "circular_buffer",
    deps = [
        ":concept_check",
        ":config",
        ":core",
        ":exception",
        ":limits",
        ":move",
        ":type_traits",
    ],
)

boost_library(
    name = "assign",
    deps = [
        ":array",
        ":config",
        ":detail",
        ":move",
        ":mpl",
        ":preprocessor",
        ":ptr_container",
        ":range",
        ":static_assert",
        ":tuple",
        ":type_traits",
    ],
)

boost_library(
    name = "safe_numerics",
    deps = [
        ":concept",
        ":integer",
        ":logic",
        ":mp11",
        ":mpl",
    ],
)

boost_library(
    name = "statechart",
    deps = [
        ":bind",
        ":cast",
        ":config",
        ":core",
        ":detail",
        ":function",
        ":get_pointer",
        ":mpl",
        ":smart_ptr",
        ":thread",
    ],
)

boost_library(
    name = "sort",
    deps = [
        ":serialization",
    ],
)

boost_library(
    name = "signals2",
    deps = [
        ":bind",
        ":core",
        ":detail",
        ":exception",
        ":function",
        ":iterator",
        ":mpl",
        ":multi_index",
        ":optional",
        ":parameter",
        ":smart_ptr",
        ":tuple",
        ":type_traits",
        ":utility",
        ":variant",
        ":visit_each",
    ],
)

boost_library(
    name = "scope_exit",
    deps = [
        ":config",
        ":detail",
        ":function",
        ":preprocessor",
        ":type_traits",
        ":typeof",
    ],
)

boost_library(
    name = "ptr_container",
    deps = [
        ":array",
        ":assert",
        ":circular_buffer",
        ":config",
        ":core",
        ":detail",
        ":iterator",
        ":move",
        ":mpl",
        ":preprocessor",
        ":range",
        ":serialization",
        ":smart_ptr",
        ":static_assert",
        ":type_traits",
        ":unordered",
        ":utility",
    ],
)

boost_library(
    name = "beast",
    deps = [
        ":align",
        ":asio",
        ":container",
        ":core",
        ":endian",
        ":intrusive",
        ":is_placeholder",
        ":optional",
        ":smart_ptr",
        ":system",
    ],
)

boost_library(
    name = "callable_traits",
)

boost_library(
    name = "convert",
    deps = [
        ":config",
        ":core",
        ":function_types",
        ":lexical_cast",
        ":math",
        ":mpl",
        ":optional",
        ":parameter",
        ":range",
        ":smart_ptr",
        ":spirit",
        ":type_traits",
        ":utility",
        ":version",
    ],
)

boost_library(
    name = "crc",
    deps = [
        ":array",
        ":config",
        ":integer",
        ":type_traits",
    ],
)

boost_library(
    name = "cast",
    hdrs = [
        "include/boost/polymorphic_cast.hpp",
    ],
    deps = [
        ":numeric_conversion",
    ],
)

boost_library(
    name = "pointer_cast",
    hdrs = [
        "include/boost/polymorphic_pointer_cast.hpp",
    ],
    deps = [
        ":smart_ptr",
    ],
)

boost_library(
    name = "compatibility",
)

boost_library(
    name = "compute",
    deps = [
        ":algorithm",
        ":array",
        ":assert",
        ":chrono",
        ":exception",
        ":filesystem",
        ":function",
        ":function_types",
        ":fusion",
        ":iterator",
        ":lexical_cast",
        ":mpl",
        ":optional",
        ":preprocessor",
        ":property_tree",
        ":proto",
        ":range",
        ":smart_ptr",
        ":static_assert",
        ":tuple",
        ":type_traits",
        ":typeof",
        ":utility",
        ":version",
    ],
)
