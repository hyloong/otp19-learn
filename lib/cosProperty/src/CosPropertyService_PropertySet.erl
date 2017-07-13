%%  coding: latin-1
%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosPropertyService_PropertySet
%% Source: /net/isildur/ldisk/daily_build/20_prebuild_master-opu_o.2017-06-20_20/otp_src_20/lib/cosProperty/src/CosProperty.idl
%% IC vsn: 4.4.2
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosPropertyService_PropertySet').
-ic_compiled("4_4_2").


%% Interface functions
-export([define_property/3, define_property/4, define_properties/2]).
-export([define_properties/3, get_number_of_properties/1, get_number_of_properties/2]).
-export([get_all_property_names/2, get_all_property_names/3, get_property_value/2]).
-export([get_property_value/3, get_properties/2, get_properties/3]).
-export([get_all_properties/2, get_all_properties/3, delete_property/2]).
-export([delete_property/3, delete_properties/2, delete_properties/3]).
-export([delete_all_properties/1, delete_all_properties/2, is_property_defined/2]).
-export([is_property_defined/3]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: define_property
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName, CosPropertyService::ConflictingProperty, CosPropertyService::UnsupportedTypeCode, CosPropertyService::UnsupportedProperty, CosPropertyService::ReadOnlyProperty
%%
define_property(OE_THIS, Property_name, Property_value) ->
    corba:call(OE_THIS, define_property, [Property_name, Property_value], ?MODULE).

define_property(OE_THIS, OE_Options, Property_name, Property_value) ->
    corba:call(OE_THIS, define_property, [Property_name, Property_value], ?MODULE, OE_Options).

%%%% Operation: define_properties
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
define_properties(OE_THIS, Nproperties) ->
    corba:call(OE_THIS, define_properties, [Nproperties], ?MODULE).

define_properties(OE_THIS, OE_Options, Nproperties) ->
    corba:call(OE_THIS, define_properties, [Nproperties], ?MODULE, OE_Options).

%%%% Operation: get_number_of_properties
%% 
%%   Returns: RetVal
%%
get_number_of_properties(OE_THIS) ->
    corba:call(OE_THIS, get_number_of_properties, [], ?MODULE).

get_number_of_properties(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_number_of_properties, [], ?MODULE, OE_Options).

%%%% Operation: get_all_property_names
%% 
%%   Returns: RetVal, Property_names, Rest
%%
get_all_property_names(OE_THIS, How_many) ->
    corba:call(OE_THIS, get_all_property_names, [How_many], ?MODULE).

get_all_property_names(OE_THIS, OE_Options, How_many) ->
    corba:call(OE_THIS, get_all_property_names, [How_many], ?MODULE, OE_Options).

%%%% Operation: get_property_value
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::PropertyNotFound, CosPropertyService::InvalidPropertyName
%%
get_property_value(OE_THIS, Property_name) ->
    corba:call(OE_THIS, get_property_value, [Property_name], ?MODULE).

get_property_value(OE_THIS, OE_Options, Property_name) ->
    corba:call(OE_THIS, get_property_value, [Property_name], ?MODULE, OE_Options).

%%%% Operation: get_properties
%% 
%%   Returns: RetVal, Nproperties
%%
get_properties(OE_THIS, Property_names) ->
    corba:call(OE_THIS, get_properties, [Property_names], ?MODULE).

get_properties(OE_THIS, OE_Options, Property_names) ->
    corba:call(OE_THIS, get_properties, [Property_names], ?MODULE, OE_Options).

%%%% Operation: get_all_properties
%% 
%%   Returns: RetVal, Nproperties, Rest
%%
get_all_properties(OE_THIS, How_many) ->
    corba:call(OE_THIS, get_all_properties, [How_many], ?MODULE).

get_all_properties(OE_THIS, OE_Options, How_many) ->
    corba:call(OE_THIS, get_all_properties, [How_many], ?MODULE, OE_Options).

%%%% Operation: delete_property
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::PropertyNotFound, CosPropertyService::InvalidPropertyName, CosPropertyService::FixedProperty
%%
delete_property(OE_THIS, Property_name) ->
    corba:call(OE_THIS, delete_property, [Property_name], ?MODULE).

delete_property(OE_THIS, OE_Options, Property_name) ->
    corba:call(OE_THIS, delete_property, [Property_name], ?MODULE, OE_Options).

%%%% Operation: delete_properties
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
delete_properties(OE_THIS, Property_names) ->
    corba:call(OE_THIS, delete_properties, [Property_names], ?MODULE).

delete_properties(OE_THIS, OE_Options, Property_names) ->
    corba:call(OE_THIS, delete_properties, [Property_names], ?MODULE, OE_Options).

%%%% Operation: delete_all_properties
%% 
%%   Returns: RetVal
%%
delete_all_properties(OE_THIS) ->
    corba:call(OE_THIS, delete_all_properties, [], ?MODULE).

delete_all_properties(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, delete_all_properties, [], ?MODULE, OE_Options).

%%%% Operation: is_property_defined
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName
%%
is_property_defined(OE_THIS, Property_name) ->
    corba:call(OE_THIS, is_property_defined, [Property_name], ?MODULE).

is_property_defined(OE_THIS, OE_Options, Property_name) ->
    corba:call(OE_THIS, is_property_defined, [Property_name], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosPropertyService/PropertySet:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(define_property) -> 
	{tk_void,[{tk_string,0},tk_any],[]};
oe_tc(define_properties) -> 
	{tk_void,
            [{tk_sequence,
                 {tk_struct,"IDL:omg.org/CosPropertyService/Property:1.0",
                     "Property",
                     [{"property_name",{tk_string,0}},
                      {"property_value",tk_any}]},
                 0}],
            []};
oe_tc(get_number_of_properties) -> 
	{tk_ulong,[],[]};
oe_tc(get_all_property_names) -> 
	{tk_void,[tk_ulong],
                 [{tk_sequence,{tk_string,0},0},
                  {tk_objref,"IDL:omg.org/CosPropertyService/PropertyNamesIterator:1.0",
                             "PropertyNamesIterator"}]};
oe_tc(get_property_value) -> 
	{tk_any,[{tk_string,0}],[]};
oe_tc(get_properties) -> 
	{tk_boolean,
            [{tk_sequence,{tk_string,0},0}],
            [{tk_sequence,
                 {tk_struct,"IDL:omg.org/CosPropertyService/Property:1.0",
                     "Property",
                     [{"property_name",{tk_string,0}},
                      {"property_value",tk_any}]},
                 0}]};
oe_tc(get_all_properties) -> 
	{tk_void,
            [tk_ulong],
            [{tk_sequence,
                 {tk_struct,"IDL:omg.org/CosPropertyService/Property:1.0",
                     "Property",
                     [{"property_name",{tk_string,0}},
                      {"property_value",tk_any}]},
                 0},
             {tk_objref,
                 "IDL:omg.org/CosPropertyService/PropertiesIterator:1.0",
                 "PropertiesIterator"}]};
oe_tc(delete_property) -> 
	{tk_void,[{tk_string,0}],[]};
oe_tc(delete_properties) -> 
	{tk_void,[{tk_sequence,{tk_string,0},0}],[]};
oe_tc(delete_all_properties) -> 
	{tk_boolean,[],[]};
oe_tc(is_property_defined) -> 
	{tk_boolean,[{tk_string,0}],[]};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"is_property_defined", oe_tc(is_property_defined)},
	{"delete_all_properties", oe_tc(delete_all_properties)},
	{"delete_properties", oe_tc(delete_properties)},
	{"delete_property", oe_tc(delete_property)},
	{"get_all_properties", oe_tc(get_all_properties)},
	{"get_properties", oe_tc(get_properties)},
	{"get_property_value", oe_tc(get_property_value)},
	{"get_all_property_names", oe_tc(get_all_property_names)},
	{"get_number_of_properties", oe_tc(get_number_of_properties)},
	{"define_properties", oe_tc(define_properties)},
	{"define_property", oe_tc(define_property)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosPropertyService/PropertySet:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosPropertyService/PropertySet:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosPropertyService/PropertySet:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosPropertyService/PropertySet:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosPropertyService/PropertySet:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosPropertyService/PropertySet:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosPropertyService/PropertySet:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosPropertyService_PropertySet_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosPropertyService_PropertySet_impl', Reason, State).


%%%% Operation: define_property
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName, CosPropertyService::ConflictingProperty, CosPropertyService::UnsupportedTypeCode, CosPropertyService::UnsupportedProperty, CosPropertyService::ReadOnlyProperty
%%
handle_call({OE_THIS, OE_Context, define_property, [Property_name, Property_value]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', define_property, [Property_name, Property_value], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: define_properties
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
handle_call({OE_THIS, OE_Context, define_properties, [Nproperties]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', define_properties, [Nproperties], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_number_of_properties
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_number_of_properties, []}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', get_number_of_properties, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_all_property_names
%% 
%%   Returns: RetVal, Property_names, Rest
%%
handle_call({OE_THIS, OE_Context, get_all_property_names, [How_many]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', get_all_property_names, [How_many], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_property_value
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::PropertyNotFound, CosPropertyService::InvalidPropertyName
%%
handle_call({OE_THIS, OE_Context, get_property_value, [Property_name]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', get_property_value, [Property_name], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_properties
%% 
%%   Returns: RetVal, Nproperties
%%
handle_call({OE_THIS, OE_Context, get_properties, [Property_names]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', get_properties, [Property_names], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_all_properties
%% 
%%   Returns: RetVal, Nproperties, Rest
%%
handle_call({OE_THIS, OE_Context, get_all_properties, [How_many]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', get_all_properties, [How_many], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: delete_property
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::PropertyNotFound, CosPropertyService::InvalidPropertyName, CosPropertyService::FixedProperty
%%
handle_call({OE_THIS, OE_Context, delete_property, [Property_name]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', delete_property, [Property_name], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: delete_properties
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
handle_call({OE_THIS, OE_Context, delete_properties, [Property_names]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', delete_properties, [Property_names], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: delete_all_properties
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, delete_all_properties, []}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', delete_all_properties, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: is_property_defined
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName
%%
handle_call({OE_THIS, OE_Context, is_property_defined, [Property_name]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySet_impl', is_property_defined, [Property_name], OE_State, OE_Context, OE_THIS, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(_, State) ->
    {noreply, State}.


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosPropertyService_PropertySet_impl', OldVsn, State, Extra).

