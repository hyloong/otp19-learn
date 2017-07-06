%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2012-2016. All Rights Reserved.
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%%
%%     http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.
%%
%% %CopyrightEnd%
%%

-module(asn1rtt_ext).
-export([transform_to_EXTERNAL1990/1,transform_to_EXTERNAL1994/1]).

transform_to_EXTERNAL1990({_,_,_,_}=Val) ->
    transform_to_EXTERNAL1990(tuple_to_list(Val), []);
transform_to_EXTERNAL1990(Val) when is_tuple(Val) ->
    %% Data already in ASN1 1990 format
    Val.

transform_to_EXTERNAL1990(['EXTERNAL'|Rest], Acc) ->
    transform_to_EXTERNAL1990(Rest, ['EXTERNAL'|Acc]);
transform_to_EXTERNAL1990([{syntax,Syntax}|Rest], Acc) ->
    transform_to_EXTERNAL1990(Rest, [asn1_NOVALUE,Syntax|Acc]);
transform_to_EXTERNAL1990([{'presentation-context-id',PCid}|Rest], Acc) ->
    transform_to_EXTERNAL1990(Rest, [PCid,asn1_NOVALUE|Acc]);
transform_to_EXTERNAL1990([{'context-negotiation',Context_negot}|Rest], Acc) ->
    {_,Presentation_Cid,Transfer_syntax} = Context_negot,
    transform_to_EXTERNAL1990(Rest, [Presentation_Cid,Transfer_syntax|Acc]);
transform_to_EXTERNAL1990([asn1_NOVALUE|Rest], Acc) ->
    transform_to_EXTERNAL1990(Rest, [asn1_NOVALUE|Acc]);
transform_to_EXTERNAL1990([Data_val_desc,Data_value], Acc)
    when is_list(Data_value); is_binary(Data_value) ->
    list_to_tuple(lists:reverse([{'octet-aligned',Data_value},
				 Data_val_desc|Acc]));
transform_to_EXTERNAL1990([Data_val_desc,Data_value], Acc)
  when is_binary(Data_value) ->
    list_to_tuple(lists:reverse([{'single-ASN1-type',Data_value},
				 Data_val_desc|Acc]));
transform_to_EXTERNAL1990([Data_value], Acc)
  when is_list(Data_value); is_binary(Data_value) ->
    list_to_tuple(lists:reverse([{'octet-aligned',Data_value}|Acc])).


transform_to_EXTERNAL1994({'EXTERNAL',DRef,IndRef,Data_v_desc,Encoding}=V) ->
    Identification =
	case {DRef,IndRef} of
	    {DRef,asn1_NOVALUE} ->
		{syntax,DRef};
	    {asn1_NOVALUE,IndRef} ->
		{'presentation-context-id',IndRef};
	     _ ->
		{'context-negotiation',
		 {'EXTERNAL_identification_context-negotiation',IndRef,DRef}}
	end,
    case Encoding of
	{'octet-aligned',Val} when is_list(Val); is_binary(Val) ->
	    %% Transform to the EXTERNAL 1994 definition.
	    {'EXTERNAL',Identification,Data_v_desc,Val};
	_  ->
	    %% Keep the EXTERNAL 1990 definition to avoid losing
	    %% information.
	    V
    end.
