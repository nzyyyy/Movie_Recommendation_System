# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
"""Client and server classes corresponding to protobuf-defined services."""
import grpc

import recall_pb2 as recall__pb2


class ReCallServiceStub(object):
    """Missing associated documentation comment in .proto file."""

    def __init__(self, channel):
        """Constructor.

        Args:
            channel: A grpc.Channel.
        """
        self.CallReCall = channel.unary_unary(
                '/serve.ReCallService/CallReCall',
                request_serializer=recall__pb2.ReCallRequest.SerializeToString,
                response_deserializer=recall__pb2.ReCallResponse.FromString,
                )


class ReCallServiceServicer(object):
    """Missing associated documentation comment in .proto file."""

    def CallReCall(self, request, context):
        """Missing associated documentation comment in .proto file."""
        context.set_code(grpc.StatusCode.UNIMPLEMENTED)
        context.set_details('Method not implemented!')
        raise NotImplementedError('Method not implemented!')


def add_ReCallServiceServicer_to_server(servicer, server):
    rpc_method_handlers = {
            'CallReCall': grpc.unary_unary_rpc_method_handler(
                    servicer.CallReCall,
                    request_deserializer=recall__pb2.ReCallRequest.FromString,
                    response_serializer=recall__pb2.ReCallResponse.SerializeToString,
            ),
    }
    generic_handler = grpc.method_handlers_generic_handler(
            'serve.ReCallService', rpc_method_handlers)
    server.add_generic_rpc_handlers((generic_handler,))


 # This class is part of an EXPERIMENTAL API.
class ReCallService(object):
    """Missing associated documentation comment in .proto file."""

    @staticmethod
    def CallReCall(request,
            target,
            options=(),
            channel_credentials=None,
            call_credentials=None,
            insecure=False,
            compression=None,
            wait_for_ready=None,
            timeout=None,
            metadata=None):
        return grpc.experimental.unary_unary(request, target, '/serve.ReCallService/CallReCall',
            recall__pb2.ReCallRequest.SerializeToString,
            recall__pb2.ReCallResponse.FromString,
            options, channel_credentials,
            insecure, call_credentials, compression, wait_for_ready, timeout, metadata)