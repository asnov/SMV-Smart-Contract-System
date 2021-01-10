cmake_minimum_required(VERSION 3.17)
project(SMV_SCS)

set(CMAKE_CXX_STANDARD 14)

include_directories(/usr/local/include)
include_directories(/usr/local/include/tvm)
include_directories(/usr/local/include/sha256_literal)

include_directories(tonlabs/tokens-auth)
include_directories(tonlabs/tokens-fungible)

add_executable(SMV_SCS
        tonlabs/tokens-auth/AuthRoot.cpp
        tonlabs/tokens-auth/AuthRoot.hpp
        tonlabs/tokens-auth/AuthWallet.cpp
        tonlabs/tokens-auth/AuthWallet.hpp
        tonlabs/tokens-fungible/RootTokenContract.cpp
        tonlabs/tokens-fungible/RootTokenContract.hpp
        tonlabs/tokens-fungible/TONTokenWallet.cpp
        tonlabs/tokens-fungible/TONTokenWallet.hpp)
