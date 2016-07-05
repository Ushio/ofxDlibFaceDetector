# All variables and this file are optional, if they are not present the PG and the
# makefiles will try to parse the correct values from the file system.
#
# Variables that specify exclusions can use % as a wildcard to specify that anything in
# that position will match. A partial path can also be specified to, for example, exclude
# a whole folder from the parsed paths from the file system
#
# Variables can be specified using = or +=
# = will clear the contents of that variable both specified from the file or the ones parsed
# from the file system
# += will add the values to the previous ones in the file or the ones parsed from the file
# system
#
# The PG can be used to detect errors in this file, just create a new project with this addon
# and the PG will write to the console the kind of error and in which line it is

meta:
	ADDON_NAME = ofxDlibFaceDetector
	ADDON_DESCRIPTION = FaceDetection wrapper dlib(http://dlib.net/)
	ADDON_AUTHOR = ushiostarfish
	ADDON_TAGS = "Computer Vision"
	ADDON_URL = https://github.com/Ushio/ofxDlibFaceDetector.git

common:
	# dependencies with other addons, a list of them separated by spaces
	# or use += in several lines
	# ADDON_DEPENDENCIES =

	# include search paths, this will be usually parsed from the file system
	# but if the addon or addon libraries need special search paths they can be
	# specified here separated by spaces or one per line using +=
	ADDON_INCLUDES += libs/dlib-19.0/

	# any special flag that should be passed to the compiler when using this
	# addon
	# ADDON_CFLAGS =

	# any special flag that should be passed to the linker when using this
	# addon, also used for system libraries with -lname
	# ADDON_LDFLAGS =

	# linux only, any library that should be included in the project using
	# pkg-config
	# ADDON_PKG_CONFIG_LIBRARIES =

	# osx/iOS only, any framework that should be included in the project
	# ADDON_FRAMEWORKS =

	# source files, these will be usually parsed from the file system looking
	# in the src folders in libs and the root of the addon. if your addon needs
	# to include files in different places or a different set of files per platform
	# they can be specified here
	# ADDON_SOURCES += libs/dlib-19.0/dlib/all/source.cpp

	# some addons need resources to be copied to the bin/data folder of the project
	# specify here any files that need to be copied, you can use wildcards like * and ?
	# ADDON_DATA =

	# when parsing the file system looking for libraries exclude this for all or
	# a specific platform
	# ADDON_LIBS_EXCLUDE =

	# when parsing the file system looking for sources exclude this for all or
	# a specific platform
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/stack_trace.cpp
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/all_console.cpp
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/all_gui.cpp
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/threads/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/threads/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/timeout/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/timer/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/tokenizer/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/tuple/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/type_safe_union/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/unicode/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/any/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/vectorstream/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/xml_parser/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/array/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/array2d/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/base64/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/bayes_utils/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/bigint/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/binary_search_tree/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/bit_stream/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/bound_function_pointer/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/bridge/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/bsp/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/byte_orderer/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/clustering/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/cmd_line_parser/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/compress_stream/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/conditioning_class/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/config_reader/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/control/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/cpp_pretty_printer/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/cpp_tokenizer/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/crc32/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/data_io/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/dir_nav/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/directed_graph/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/disjoint_subsets/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/dnn/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/entropy_decoder/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/entropy_decoder_model/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/entropy_encoder/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/entropy_encoder_model/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/external/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/filtering/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/general_hash/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/geometry/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/graph/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/graph_cuts/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/graph_utils/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/gui_core/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/gui_widgets/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/hash_map/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/hash_set/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/hash_table/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/http_client/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/image_keypoint/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/image_loader/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/image_processing/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/image_saver/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/image_transforms/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/interfaces/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/iosockstream/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/linker/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/logger/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/lsh/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/lz77_buffer/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/lzp_buffer/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/manifold_regularization/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/map/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/matlab/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/matrix/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/md5/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/member_function_pointer/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/memory_manager/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/memory_manager_global/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/memory_manager_stateless/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/misc_api/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/mlp/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/numerical_integration/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/opencv/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/optimization/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/pipe/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/python/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/quantum_computing/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/queue/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/rand/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/reference_counter/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/sequence/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/server/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/set/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/set_utils/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/simd/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/sliding_buffer/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/smart_pointers/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/sockets/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/sockstreambuf/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/sqlite/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/stack/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/static_map/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/static_set/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/statistics/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/stl_checked/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/string/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/svm/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/sync_extension/%
	ADDON_SOURCES_EXCLUDE += libs/dlib-19.0/dlib/test/%

	# when parsing the file system looking for include paths exclude this for all or
	# a specific platform
	ADDON_INCLUDES_EXCLUDE += libs/dlib-19.0/%
