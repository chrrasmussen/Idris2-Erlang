-module('Idris.Idris2.Network.FFI').
-compile('no_auto_import').
-compile('inline').
-compile({'inline_size',24}).
-export([
  'un--prim__socket_listen'/3,
  'un--prim__socket_close'/2,
  'un--prim__idrnet_socket'/4,
  'un--prim__idrnet_sockaddr_port'/2,
  'un--prim__idrnet_sockaddr_ipv4_port'/2,
  'un--prim__idrnet_sockaddr_ipv4'/2,
  'un--prim__idrnet_sockaddr_family'/2,
  'un--prim__idrnet_sendto_buf'/7,
  'un--prim__idrnet_sendto'/6,
  'un--prim__idrnet_send_buf'/4,
  'un--prim__idrnet_send'/3,
  'un--prim__idrnet_recvfrom_buf'/4,
  'un--prim__idrnet_recvfrom'/3,
  'un--prim__idrnet_recv_buf'/4,
  'un--prim__idrnet_recv'/3,
  'un--prim__idrnet_poke'/4,
  'un--prim__idrnet_peek'/3,
  'un--prim__idrnet_malloc'/2,
  'un--prim__idrnet_geteagain'/1,
  'un--prim__idrnet_get_recvfrom_sockaddr'/2,
  'un--prim__idrnet_get_recvfrom_res'/2,
  'un--prim__idrnet_get_recvfrom_payload'/2,
  'un--prim__idrnet_get_recv_res'/2,
  'un--prim__idrnet_get_recv_payload'/2,
  'un--prim__idrnet_free_recvfrom_struct'/2,
  'un--prim__idrnet_free_recv_struct'/2,
  'un--prim__idrnet_free'/2,
  'un--prim__idrnet_errno'/1,
  'un--prim__idrnet_create_sockaddr'/1,
  'un--prim__idrnet_connect'/6,
  'un--prim__idrnet_bind'/6,
  'un--prim__idrnet_accept'/3
]).
'un--prim__socket_listen'(V0, V1, V2) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__socket_listen")).
'un--prim__socket_close'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__socket_close")).
'un--prim__idrnet_socket'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_socket")).
'un--prim__idrnet_sockaddr_port'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sockaddr_port")).
'un--prim__idrnet_sockaddr_ipv4_port'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sockaddr_ipv4_port")).
'un--prim__idrnet_sockaddr_ipv4'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sockaddr_ipv4")).
'un--prim__idrnet_sockaddr_family'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sockaddr_family")).
'un--prim__idrnet_sendto_buf'(V0, V1, V2, V3, V4, V5, V6) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sendto_buf")).
'un--prim__idrnet_sendto'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_sendto")).
'un--prim__idrnet_send_buf'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_send_buf")).
'un--prim__idrnet_send'(V0, V1, V2) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_send")).
'un--prim__idrnet_recvfrom_buf'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_recvfrom_buf")).
'un--prim__idrnet_recvfrom'(V0, V1, V2) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_recvfrom")).
'un--prim__idrnet_recv_buf'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_recv_buf")).
'un--prim__idrnet_recv'(V0, V1, V2) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_recv")).
'un--prim__idrnet_poke'(V0, V1, V2, V3) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_poke")).
'un--prim__idrnet_peek'(V0, V1, V2) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_peek")).
'un--prim__idrnet_malloc'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_malloc")).
'un--prim__idrnet_geteagain'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_geteagain")).
'un--prim__idrnet_get_recvfrom_sockaddr'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_get_recvfrom_sockaddr")).
'un--prim__idrnet_get_recvfrom_res'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_get_recvfrom_res")).
'un--prim__idrnet_get_recvfrom_payload'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_get_recvfrom_payload")).
'un--prim__idrnet_get_recv_res'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_get_recv_res")).
'un--prim__idrnet_get_recv_payload'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_get_recv_payload")).
'un--prim__idrnet_free_recvfrom_struct'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_free_recvfrom_struct")).
'un--prim__idrnet_free_recv_struct'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_free_recv_struct")).
'un--prim__idrnet_free'(V0, V1) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_free")).
'un--prim__idrnet_errno'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_errno")).
'un--prim__idrnet_create_sockaddr'(V0) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_create_sockaddr")).
'un--prim__idrnet_connect'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_connect")).
'un--prim__idrnet_bind'(V0, V1, V2, V3, V4, V5) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_bind")).
'un--prim__idrnet_accept'(V0, V1, V2) -> ('erlang':'throw'("Error: Unsupported %foreign primitive Network.FFI.prim__idrnet_accept")).
