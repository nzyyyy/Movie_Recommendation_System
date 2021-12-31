# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: serve.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor.FileDescriptor(
  name='serve.proto',
  package='serve',
  syntax='proto3',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x0bserve.proto\x12\x05serve\"\x1e\n\x0bMainRequest\x12\x0f\n\x07user_id\x18\x01 \x01(\x03\"%\n\x12UserProfileRequest\x12\x0f\n\x07user_id\x18\x01 \x01(\x03\"Z\n\x13UserProfileResponse\x12\t\n\x01\x66\x18\x01 \x01(\t\x12\t\n\x01h\x18\x02 \x01(\t\x12\x0c\n\x04high\x18\x03 \x01(\x01\x12\r\n\x05total\x18\x04 \x01(\x05\x12\x10\n\x08hratings\x18\x05 \x01(\x01\"\'\n\x13MovieProfileRequest\x12\x10\n\x08movie_id\x18\x01 \x01(\x03\"W\n\x14MovieProfileResponse\x12\x0c\n\x04mean\x18\x01 \x01(\x01\x12\x12\n\ntotal_time\x18\x02 \x01(\x05\x12\r\n\x05title\x18\x03 \x01(\t\x12\x0e\n\x06genres\x18\x04 \x01(\t\" \n\rReCallRequest\x12\x0f\n\x07user_id\x18\x01 \x01(\x03\"$\n\x0eReCallResponse\x12\x12\n\nmovie_list\x18\x01 \x03(\x03\"\x8c\x01\n\x0cScoreRequest\x12\x15\n\rmovie_id_list\x18\x01 \x03(\x03\x12\x30\n\x0cuser_profile\x18\x02 \x01(\x0b\x32\x1a.serve.UserProfileResponse\x12\x33\n\x0emovie_profiles\x18\x03 \x03(\x0b\x32\x1b.serve.MovieProfileResponse\"-\n\rScoreResponse\x12\x1c\n\x06scores\x18\x01 \x03(\x0b\x32\x0c.serve.Score\"7\n\x05Score\x12\x10\n\x08movie_id\x18\x01 \x01(\x03\x12\r\n\x05title\x18\x02 \x01(\t\x12\r\n\x05score\x18\x03 \x01(\x01\x32\x41\n\x0bMainService\x12\x32\n\x04\x43\x61ll\x12\x12.serve.MainRequest\x1a\x14.serve.ScoreResponse\"\x00\x32\xab\x01\n\x0eProfileService\x12J\n\x0f\x43\x61llUserProfile\x12\x19.serve.UserProfileRequest\x1a\x1a.serve.UserProfileResponse\"\x00\x12M\n\x10\x43\x61llMovieProfile\x12\x1a.serve.MovieProfileRequest\x1a\x1b.serve.MovieProfileResponse\"\x00\x32L\n\rReCallService\x12;\n\nCallReCall\x12\x14.serve.ReCallRequest\x1a\x15.serve.ReCallResponse\"\x00\x32H\n\x0cScoreService\x12\x38\n\tCallScore\x12\x13.serve.ScoreRequest\x1a\x14.serve.ScoreResponse\"\x00\x62\x06proto3'
)




_MAINREQUEST = _descriptor.Descriptor(
  name='MainRequest',
  full_name='serve.MainRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='user_id', full_name='serve.MainRequest.user_id', index=0,
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
  serialized_start=22,
  serialized_end=52,
)


_USERPROFILEREQUEST = _descriptor.Descriptor(
  name='UserProfileRequest',
  full_name='serve.UserProfileRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='user_id', full_name='serve.UserProfileRequest.user_id', index=0,
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
  serialized_start=54,
  serialized_end=91,
)


_USERPROFILERESPONSE = _descriptor.Descriptor(
  name='UserProfileResponse',
  full_name='serve.UserProfileResponse',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='f', full_name='serve.UserProfileResponse.f', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='h', full_name='serve.UserProfileResponse.h', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='high', full_name='serve.UserProfileResponse.high', index=2,
      number=3, type=1, cpp_type=5, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='total', full_name='serve.UserProfileResponse.total', index=3,
      number=4, type=5, cpp_type=1, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='hratings', full_name='serve.UserProfileResponse.hratings', index=4,
      number=5, type=1, cpp_type=5, label=1,
      has_default_value=False, default_value=float(0),
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
  serialized_start=93,
  serialized_end=183,
)


_MOVIEPROFILEREQUEST = _descriptor.Descriptor(
  name='MovieProfileRequest',
  full_name='serve.MovieProfileRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='movie_id', full_name='serve.MovieProfileRequest.movie_id', index=0,
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
  serialized_start=185,
  serialized_end=224,
)


_MOVIEPROFILERESPONSE = _descriptor.Descriptor(
  name='MovieProfileResponse',
  full_name='serve.MovieProfileResponse',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='mean', full_name='serve.MovieProfileResponse.mean', index=0,
      number=1, type=1, cpp_type=5, label=1,
      has_default_value=False, default_value=float(0),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='total_time', full_name='serve.MovieProfileResponse.total_time', index=1,
      number=2, type=5, cpp_type=1, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='title', full_name='serve.MovieProfileResponse.title', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='genres', full_name='serve.MovieProfileResponse.genres', index=3,
      number=4, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
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
  serialized_start=226,
  serialized_end=313,
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
  serialized_start=315,
  serialized_end=347,
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
  serialized_start=349,
  serialized_end=385,
)


_SCOREREQUEST = _descriptor.Descriptor(
  name='ScoreRequest',
  full_name='serve.ScoreRequest',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='movie_id_list', full_name='serve.ScoreRequest.movie_id_list', index=0,
      number=1, type=3, cpp_type=2, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='user_profile', full_name='serve.ScoreRequest.user_profile', index=1,
      number=2, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='movie_profiles', full_name='serve.ScoreRequest.movie_profiles', index=2,
      number=3, type=11, cpp_type=10, label=3,
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
  serialized_start=388,
  serialized_end=528,
)


_SCORERESPONSE = _descriptor.Descriptor(
  name='ScoreResponse',
  full_name='serve.ScoreResponse',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='scores', full_name='serve.ScoreResponse.scores', index=0,
      number=1, type=11, cpp_type=10, label=3,
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
  serialized_start=530,
  serialized_end=575,
)


_SCORE = _descriptor.Descriptor(
  name='Score',
  full_name='serve.Score',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='movie_id', full_name='serve.Score.movie_id', index=0,
      number=1, type=3, cpp_type=2, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='title', full_name='serve.Score.title', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='score', full_name='serve.Score.score', index=2,
      number=3, type=1, cpp_type=5, label=1,
      has_default_value=False, default_value=float(0),
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
  serialized_start=577,
  serialized_end=632,
)

_SCOREREQUEST.fields_by_name['user_profile'].message_type = _USERPROFILERESPONSE
_SCOREREQUEST.fields_by_name['movie_profiles'].message_type = _MOVIEPROFILERESPONSE
_SCORERESPONSE.fields_by_name['scores'].message_type = _SCORE
DESCRIPTOR.message_types_by_name['MainRequest'] = _MAINREQUEST
DESCRIPTOR.message_types_by_name['UserProfileRequest'] = _USERPROFILEREQUEST
DESCRIPTOR.message_types_by_name['UserProfileResponse'] = _USERPROFILERESPONSE
DESCRIPTOR.message_types_by_name['MovieProfileRequest'] = _MOVIEPROFILEREQUEST
DESCRIPTOR.message_types_by_name['MovieProfileResponse'] = _MOVIEPROFILERESPONSE
DESCRIPTOR.message_types_by_name['ReCallRequest'] = _RECALLREQUEST
DESCRIPTOR.message_types_by_name['ReCallResponse'] = _RECALLRESPONSE
DESCRIPTOR.message_types_by_name['ScoreRequest'] = _SCOREREQUEST
DESCRIPTOR.message_types_by_name['ScoreResponse'] = _SCORERESPONSE
DESCRIPTOR.message_types_by_name['Score'] = _SCORE
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

MainRequest = _reflection.GeneratedProtocolMessageType('MainRequest', (_message.Message,), {
  'DESCRIPTOR' : _MAINREQUEST,
  '__module__' : 'serve_pb2'
  # @@protoc_insertion_point(class_scope:serve.MainRequest)
  })
_sym_db.RegisterMessage(MainRequest)

UserProfileRequest = _reflection.GeneratedProtocolMessageType('UserProfileRequest', (_message.Message,), {
  'DESCRIPTOR' : _USERPROFILEREQUEST,
  '__module__' : 'serve_pb2'
  # @@protoc_insertion_point(class_scope:serve.UserProfileRequest)
  })
_sym_db.RegisterMessage(UserProfileRequest)

UserProfileResponse = _reflection.GeneratedProtocolMessageType('UserProfileResponse', (_message.Message,), {
  'DESCRIPTOR' : _USERPROFILERESPONSE,
  '__module__' : 'serve_pb2'
  # @@protoc_insertion_point(class_scope:serve.UserProfileResponse)
  })
_sym_db.RegisterMessage(UserProfileResponse)

MovieProfileRequest = _reflection.GeneratedProtocolMessageType('MovieProfileRequest', (_message.Message,), {
  'DESCRIPTOR' : _MOVIEPROFILEREQUEST,
  '__module__' : 'serve_pb2'
  # @@protoc_insertion_point(class_scope:serve.MovieProfileRequest)
  })
_sym_db.RegisterMessage(MovieProfileRequest)

MovieProfileResponse = _reflection.GeneratedProtocolMessageType('MovieProfileResponse', (_message.Message,), {
  'DESCRIPTOR' : _MOVIEPROFILERESPONSE,
  '__module__' : 'serve_pb2'
  # @@protoc_insertion_point(class_scope:serve.MovieProfileResponse)
  })
_sym_db.RegisterMessage(MovieProfileResponse)

ReCallRequest = _reflection.GeneratedProtocolMessageType('ReCallRequest', (_message.Message,), {
  'DESCRIPTOR' : _RECALLREQUEST,
  '__module__' : 'serve_pb2'
  # @@protoc_insertion_point(class_scope:serve.ReCallRequest)
  })
_sym_db.RegisterMessage(ReCallRequest)

ReCallResponse = _reflection.GeneratedProtocolMessageType('ReCallResponse', (_message.Message,), {
  'DESCRIPTOR' : _RECALLRESPONSE,
  '__module__' : 'serve_pb2'
  # @@protoc_insertion_point(class_scope:serve.ReCallResponse)
  })
_sym_db.RegisterMessage(ReCallResponse)

ScoreRequest = _reflection.GeneratedProtocolMessageType('ScoreRequest', (_message.Message,), {
  'DESCRIPTOR' : _SCOREREQUEST,
  '__module__' : 'serve_pb2'
  # @@protoc_insertion_point(class_scope:serve.ScoreRequest)
  })
_sym_db.RegisterMessage(ScoreRequest)

ScoreResponse = _reflection.GeneratedProtocolMessageType('ScoreResponse', (_message.Message,), {
  'DESCRIPTOR' : _SCORERESPONSE,
  '__module__' : 'serve_pb2'
  # @@protoc_insertion_point(class_scope:serve.ScoreResponse)
  })
_sym_db.RegisterMessage(ScoreResponse)

Score = _reflection.GeneratedProtocolMessageType('Score', (_message.Message,), {
  'DESCRIPTOR' : _SCORE,
  '__module__' : 'serve_pb2'
  # @@protoc_insertion_point(class_scope:serve.Score)
  })
_sym_db.RegisterMessage(Score)



_MAINSERVICE = _descriptor.ServiceDescriptor(
  name='MainService',
  full_name='serve.MainService',
  file=DESCRIPTOR,
  index=0,
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_start=634,
  serialized_end=699,
  methods=[
  _descriptor.MethodDescriptor(
    name='Call',
    full_name='serve.MainService.Call',
    index=0,
    containing_service=None,
    input_type=_MAINREQUEST,
    output_type=_SCORERESPONSE,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
])
_sym_db.RegisterServiceDescriptor(_MAINSERVICE)

DESCRIPTOR.services_by_name['MainService'] = _MAINSERVICE


_PROFILESERVICE = _descriptor.ServiceDescriptor(
  name='ProfileService',
  full_name='serve.ProfileService',
  file=DESCRIPTOR,
  index=1,
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_start=702,
  serialized_end=873,
  methods=[
  _descriptor.MethodDescriptor(
    name='CallUserProfile',
    full_name='serve.ProfileService.CallUserProfile',
    index=0,
    containing_service=None,
    input_type=_USERPROFILEREQUEST,
    output_type=_USERPROFILERESPONSE,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
  _descriptor.MethodDescriptor(
    name='CallMovieProfile',
    full_name='serve.ProfileService.CallMovieProfile',
    index=1,
    containing_service=None,
    input_type=_MOVIEPROFILEREQUEST,
    output_type=_MOVIEPROFILERESPONSE,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
])
_sym_db.RegisterServiceDescriptor(_PROFILESERVICE)

DESCRIPTOR.services_by_name['ProfileService'] = _PROFILESERVICE


_RECALLSERVICE = _descriptor.ServiceDescriptor(
  name='ReCallService',
  full_name='serve.ReCallService',
  file=DESCRIPTOR,
  index=2,
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_start=875,
  serialized_end=951,
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


_SCORESERVICE = _descriptor.ServiceDescriptor(
  name='ScoreService',
  full_name='serve.ScoreService',
  file=DESCRIPTOR,
  index=3,
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_start=953,
  serialized_end=1025,
  methods=[
  _descriptor.MethodDescriptor(
    name='CallScore',
    full_name='serve.ScoreService.CallScore',
    index=0,
    containing_service=None,
    input_type=_SCOREREQUEST,
    output_type=_SCORERESPONSE,
    serialized_options=None,
    create_key=_descriptor._internal_create_key,
  ),
])
_sym_db.RegisterServiceDescriptor(_SCORESERVICE)

DESCRIPTOR.services_by_name['ScoreService'] = _SCORESERVICE

# @@protoc_insertion_point(module_scope)