# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/datatransfer/v1/transfer.proto


require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "google.cloud.bigquery.datatransfer.v1.ScheduleOptions" do
    optional :disable_auto_scheduling, :bool, 3
    optional :start_time, :message, 1, "google.protobuf.Timestamp"
    optional :end_time, :message, 2, "google.protobuf.Timestamp"
  end
  add_message "google.cloud.bigquery.datatransfer.v1.TransferConfig" do
    optional :name, :string, 1
    optional :display_name, :string, 3
    optional :data_source_id, :string, 5
    optional :params, :message, 9, "google.protobuf.Struct"
    optional :schedule, :string, 7
    optional :schedule_options, :message, 24, "google.cloud.bigquery.datatransfer.v1.ScheduleOptions"
    optional :data_refresh_window_days, :int32, 12
    optional :disabled, :bool, 13
    optional :update_time, :message, 4, "google.protobuf.Timestamp"
    optional :next_run_time, :message, 8, "google.protobuf.Timestamp"
    optional :state, :enum, 10, "google.cloud.bigquery.datatransfer.v1.TransferState"
    optional :user_id, :int64, 11
    optional :dataset_region, :string, 14
    oneof :destination do
      optional :destination_dataset_id, :string, 2
    end
  end
  add_message "google.cloud.bigquery.datatransfer.v1.TransferRun" do
    optional :name, :string, 1
    optional :schedule_time, :message, 3, "google.protobuf.Timestamp"
    optional :run_time, :message, 10, "google.protobuf.Timestamp"
    optional :error_status, :message, 21, "google.rpc.Status"
    optional :start_time, :message, 4, "google.protobuf.Timestamp"
    optional :end_time, :message, 5, "google.protobuf.Timestamp"
    optional :update_time, :message, 6, "google.protobuf.Timestamp"
    optional :params, :message, 9, "google.protobuf.Struct"
    optional :data_source_id, :string, 7
    optional :state, :enum, 8, "google.cloud.bigquery.datatransfer.v1.TransferState"
    optional :user_id, :int64, 11
    optional :schedule, :string, 12
    oneof :destination do
      optional :destination_dataset_id, :string, 2
    end
  end
  add_message "google.cloud.bigquery.datatransfer.v1.TransferMessage" do
    optional :message_time, :message, 1, "google.protobuf.Timestamp"
    optional :severity, :enum, 2, "google.cloud.bigquery.datatransfer.v1.TransferMessage.MessageSeverity"
    optional :message_text, :string, 3
  end
  add_enum "google.cloud.bigquery.datatransfer.v1.TransferMessage.MessageSeverity" do
    value :MESSAGE_SEVERITY_UNSPECIFIED, 0
    value :INFO, 1
    value :WARNING, 2
    value :ERROR, 3
  end
  add_enum "google.cloud.bigquery.datatransfer.v1.TransferType" do
    value :TRANSFER_TYPE_UNSPECIFIED, 0
    value :BATCH, 1
    value :STREAMING, 2
  end
  add_enum "google.cloud.bigquery.datatransfer.v1.TransferState" do
    value :TRANSFER_STATE_UNSPECIFIED, 0
    value :PENDING, 2
    value :RUNNING, 3
    value :SUCCEEDED, 4
    value :FAILED, 5
    value :CANCELLED, 6
  end
end

module Google
  module Cloud
    module Bigquery
      module Datatransfer
        module V1
          ScheduleOptions = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.ScheduleOptions").msgclass
          TransferConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferConfig").msgclass
          TransferRun = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferRun").msgclass
          TransferMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferMessage").msgclass
          TransferMessage::MessageSeverity = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferMessage.MessageSeverity").enummodule
          TransferType = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferType").enummodule
          TransferState = Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.datatransfer.v1.TransferState").enummodule
        end
      end
    end
  end
end
