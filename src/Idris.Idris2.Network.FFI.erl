-module('Idris.Idris2.Network.FFI').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--prim__idrnet_socket'/4,
  'un--prim__idrnet_sockaddr_unix'/2,
  'un--prim__idrnet_sockaddr_port'/2,
  'un--prim__idrnet_sockaddr_ipv4_port'/2,
  'un--prim__idrnet_sockaddr_ipv4'/2,
  'un--prim__idrnet_sockaddr_family'/2,
  'un--prim__idrnet_sendto_buf'/7,
  'un--prim__idrnet_sendto'/6,
  'un--prim__idrnet_send_bytes'/5,
  'un--prim__idrnet_send_buf'/4,
  'un--prim__idrnet_send'/3,
  'un--prim__idrnet_recvfrom_buf'/4,
  'un--prim__idrnet_recvfrom'/3,
  'un--prim__idrnet_recv_bytes'/5,
  'un--prim__idrnet_recv_buf'/4,
  'un--prim__idrnet_recv'/3,
  'un--prim__idrnet_poke'/4,
  'un--prim__idrnet_peek'/3,
  'un--prim__idrnet_listen'/3,
  'un--prim__idrnet_geteagain'/1,
  'un--prim__idrnet_get_recvfrom_sockaddr'/2,
  'un--prim__idrnet_get_recvfrom_res'/2,
  'un--prim__idrnet_get_recvfrom_payload'/2,
  'un--prim__idrnet_get_recv_res'/2,
  'un--prim__idrnet_get_recv_payload'/2,
  'un--prim__idrnet_free_recvfrom_struct'/2,
  'un--prim__idrnet_free_recv_struct'/2,
  'un--prim__idrnet_fdopen'/3,
  'un--prim__idrnet_errno'/1,
  'un--prim__idrnet_create_sockaddr'/1,
  'un--prim__idrnet_connect'/6,
  'un--prim__idrnet_close'/2,
  'un--prim__idrnet_bind'/6,
  'un--prim__idrnet_accept'/3
]).
'un--prim__idrnet_socket'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_socket"/utf8>>})).
'un--prim__idrnet_sockaddr_unix'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sockaddr_unix"/utf8>>})).
'un--prim__idrnet_sockaddr_port'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sockaddr_port"/utf8>>})).
'un--prim__idrnet_sockaddr_ipv4_port'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sockaddr_ipv4_port"/utf8>>})).
'un--prim__idrnet_sockaddr_ipv4'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sockaddr_ipv4"/utf8>>})).
'un--prim__idrnet_sockaddr_family'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sockaddr_family"/utf8>>})).
'un--prim__idrnet_sendto_buf'(V0, V1, V2, V3, V4, V5, V6) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sendto_buf"/utf8>>})).
'un--prim__idrnet_sendto'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sendto"/utf8>>})).
'un--prim__idrnet_send_bytes'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_send_bytes"/utf8>>})).
'un--prim__idrnet_send_buf'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_send_buf"/utf8>>})).
'un--prim__idrnet_send'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_send"/utf8>>})).
'un--prim__idrnet_recvfrom_buf'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_recvfrom_buf"/utf8>>})).
'un--prim__idrnet_recvfrom'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_recvfrom"/utf8>>})).
'un--prim__idrnet_recv_bytes'(V0, V1, V2, V3, V4) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_recv_bytes"/utf8>>})).
'un--prim__idrnet_recv_buf'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_recv_buf"/utf8>>})).
'un--prim__idrnet_recv'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_recv"/utf8>>})).
'un--prim__idrnet_poke'(V0, V1, V2, V3) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_poke"/utf8>>})).
'un--prim__idrnet_peek'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_peek"/utf8>>})).
'un--prim__idrnet_listen'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_listen"/utf8>>})).
'un--prim__idrnet_geteagain'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_geteagain"/utf8>>})).
'un--prim__idrnet_get_recvfrom_sockaddr'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_get_recvfrom_sockaddr"/utf8>>})).
'un--prim__idrnet_get_recvfrom_res'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_get_recvfrom_res"/utf8>>})).
'un--prim__idrnet_get_recvfrom_payload'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_get_recvfrom_payload"/utf8>>})).
'un--prim__idrnet_get_recv_res'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_get_recv_res"/utf8>>})).
'un--prim__idrnet_get_recv_payload'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_get_recv_payload"/utf8>>})).
'un--prim__idrnet_free_recvfrom_struct'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_free_recvfrom_struct"/utf8>>})).
'un--prim__idrnet_free_recv_struct'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_free_recv_struct"/utf8>>})).
'un--prim__idrnet_fdopen'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_fdopen"/utf8>>})).
'un--prim__idrnet_errno'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_errno"/utf8>>})).
'un--prim__idrnet_create_sockaddr'(V0) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_create_sockaddr"/utf8>>})).
'un--prim__idrnet_connect'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_connect"/utf8>>})).
'un--prim__idrnet_close'(V0, V1) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_close"/utf8>>})).
'un--prim__idrnet_bind'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_bind"/utf8>>})).
'un--prim__idrnet_accept'(V0, V1, V2) -> ('erlang':'throw'({'$idris_error', <<"Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_accept"/utf8>>})).
