%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: m_NotAnInteger
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_master-opu_o.2017-06-20_20/otp_src_20/lib/ic/examples/pre_post_condition/ex.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(m_NotAnInteger).
-ic_compiled("4_4_2").


-include("m.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_except,"IDL:m/NotAnInteger:1.0","NotAnInteger",[]}.

%% returns id
id() -> "IDL:m/NotAnInteger:1.0".

%% returns name
name() -> "m_NotAnInteger".



