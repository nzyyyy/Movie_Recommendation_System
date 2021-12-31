# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: recall.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor.FileDescriptor(
  name='recall.proto',
  package='serve',
  syntax='proto3',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x0crecall.proto\x12\x05serve\" \n\rReCallRequest\x12\x0f\n\x07user_id\x18\x01 \x01(\x03\"$\n\x0eReCallResponse\x12\x12\n\nmovie_list\x18\x01 \x03(\x03\x32L\n\rReCallService\x12;\n\nCallReCall\x12\x14.serve.ReCallRequest\x1a\x15.serve.ReCallResponse\"\x00\x62\x06proto3'
)




_RECALLREQUEST = _descriptor.Descriptor(
  name='ReCallRequest',
  full_name='serve.ReCallRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='user_id', full_name='serve.ReCallRequest.user_id', index=0,
      number=1, type=3, cpp_type=2, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=23,
  serialized_end=55,
)


_RECALLRESPONSE = _descriptor.Descriptor(
  name='ReCallResponse',
  full_name='serve.ReCallResponse',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='movie_list', full_name='serve.ReCallResponse.movie_list', index=0,
      number=1, type=3, cpp_type=2, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto3',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=57,
  serialized_end=93,
)

DESCRIPTOR.message_types_by_name['ReCallRequest'] = _RECALLREQUEST
DESCRIPTOR.message_types_by_name['ReCallResponse'] = _RECALLRESPONSE
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

ReCallRequest = _reflection.GeneratedProtocolMessageType('ReCallRequest', (_message.Message,), {
  'DESCRIPTOR' : _RECALLREQUEST,
  '__module__' : 'recall_pb2'
  # @@protoc_insertion_point(class_scope:serve.ReCallRequest)
  })
_sym_db.RegisterMessage(ReCallRequest)

ReCallResponse = _reflection.GeneratedProtocolMessageType('ReCallResponse', (_message.Message,), {
  'DESCRIPTOR' : _RECALLRESPONSE,
  '__module__' : 'recall_pb2'
  # @@protoc_insertion_point(class_scope:serve.ReCallResponse)
  })
_sym_db.RegisterMessage(ReCallResponse)



_RECALLSERVICE = _descriptor.ServiceDescriptor(
  name='ReCallService',
  full_name='serve.ReCallService',
  file=DESCRIPTOR,
  index=0,
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_start=95,
  serialized_end=171,
  methods=[
  _descriptor.MethodDescriptor(
    name='CallReCall',
    full_name='serve.ReCallService.CallReCall',
    index=0,
    containing_service=None,
    input_type=_RECALLREQUEST,
    output_type=_RECALLRESPONSE,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
])
_sym_db.RegisterServiceDescriptor(_RECALLSERVICE)

DESCRIPTOR.services_by_name['ReCallService'] = _RECALLSERVICE

# @@protoc_insertion_point(module_scope)