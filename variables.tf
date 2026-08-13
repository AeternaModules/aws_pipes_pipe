variable "pipes_pipes" {
  description = <<EOT
Map of pipes_pipes, attributes below
Required:
    - role_arn
    - source
    - target
Optional:
    - description
    - desired_state
    - enrichment
    - kms_key_identifier
    - name
    - name_prefix
    - region
    - tags
    - tags_all
    - enrichment_parameters (block):
        - http_parameters (optional, block):
            - header_parameters (optional)
            - path_parameter_values (optional)
            - query_string_parameters (optional)
        - input_template (optional)
    - log_configuration (block):
        - cloudwatch_logs_log_destination (optional, block):
            - log_group_arn (required)
        - firehose_log_destination (optional, block):
            - delivery_stream_arn (required)
        - include_execution_data (optional)
        - level (required)
        - s3_log_destination (optional, block):
            - bucket_name (required)
            - bucket_owner (required)
            - output_format (optional)
            - prefix (optional)
    - source_parameters (block):
        - activemq_broker_parameters (optional, block):
            - batch_size (optional)
            - credentials (required, block):
                - basic_auth (required)
            - maximum_batching_window_in_seconds (optional)
            - queue_name (required)
        - dynamodb_stream_parameters (optional, block):
            - batch_size (optional)
            - dead_letter_config (optional, block):
                - arn (optional)
            - maximum_batching_window_in_seconds (optional)
            - maximum_record_age_in_seconds (optional)
            - maximum_retry_attempts (optional)
            - on_partial_batch_item_failure (optional)
            - parallelization_factor (optional)
            - starting_position (required)
        - filter_criteria (optional, block):
            - filter (optional, block):
                - pattern (required)
        - kinesis_stream_parameters (optional, block):
            - batch_size (optional)
            - dead_letter_config (optional, block):
                - arn (optional)
            - maximum_batching_window_in_seconds (optional)
            - maximum_record_age_in_seconds (optional)
            - maximum_retry_attempts (optional)
            - on_partial_batch_item_failure (optional)
            - parallelization_factor (optional)
            - starting_position (required)
            - starting_position_timestamp (optional)
        - managed_streaming_kafka_parameters (optional, block):
            - batch_size (optional)
            - consumer_group_id (optional)
            - credentials (optional, block):
                - client_certificate_tls_auth (optional)
                - sasl_scram_512_auth (optional)
            - maximum_batching_window_in_seconds (optional)
            - starting_position (optional)
            - topic_name (required)
        - rabbitmq_broker_parameters (optional, block):
            - batch_size (optional)
            - credentials (required, block):
                - basic_auth (required)
            - maximum_batching_window_in_seconds (optional)
            - queue_name (required)
            - virtual_host (optional)
        - self_managed_kafka_parameters (optional, block):
            - additional_bootstrap_servers (optional)
            - batch_size (optional)
            - consumer_group_id (optional)
            - credentials (optional, block):
                - basic_auth (optional)
                - client_certificate_tls_auth (optional)
                - sasl_scram_256_auth (optional)
                - sasl_scram_512_auth (optional)
            - maximum_batching_window_in_seconds (optional)
            - server_root_ca_certificate (optional)
            - starting_position (optional)
            - topic_name (required)
            - vpc (optional, block):
                - security_groups (optional)
                - subnets (optional)
        - sqs_queue_parameters (optional, block):
            - batch_size (optional)
            - maximum_batching_window_in_seconds (optional)
    - target_parameters (block):
        - batch_job_parameters (optional, block):
            - array_properties (optional, block):
                - size (optional)
            - container_overrides (optional, block):
                - command (optional)
                - environment (optional, block):
                    - name (optional)
                    - value (optional)
                - instance_type (optional)
                - resource_requirement (optional, block):
                    - type (required)
                    - value (required)
            - depends_on (optional, block):
                - job_id (optional)
                - type (optional)
            - job_definition (required)
            - job_name (required)
            - parameters (optional)
            - retry_strategy (optional, block):
                - attempts (optional)
        - cloudwatch_logs_parameters (optional, block):
            - log_stream_name (optional)
            - timestamp (optional)
        - ecs_task_parameters (optional, block):
            - capacity_provider_strategy (optional, block):
                - base (optional)
                - capacity_provider (required)
                - weight (optional)
            - enable_ecs_managed_tags (optional)
            - enable_execute_command (optional)
            - group (optional)
            - launch_type (optional)
            - network_configuration (optional, block):
                - aws_vpc_configuration (optional, block):
                    - assign_public_ip (optional)
                    - security_groups (optional)
                    - subnets (optional)
            - overrides (optional, block):
                - container_override (optional, block):
                    - command (optional)
                    - cpu (optional)
                    - environment (optional, block):
                        - name (optional)
                        - value (optional)
                    - environment_file (optional, block):
                        - type (required)
                        - value (required)
                    - memory (optional)
                    - memory_reservation (optional)
                    - name (optional)
                    - resource_requirement (optional, block):
                        - type (required)
                        - value (required)
                - cpu (optional)
                - ephemeral_storage (optional, block):
                    - size_in_gib (required)
                - execution_role_arn (optional)
                - inference_accelerator_override (optional, block):
                    - device_name (optional)
                    - device_type (optional)
                - memory (optional)
                - task_role_arn (optional)
            - placement_constraint (optional, block):
                - expression (optional)
                - type (optional)
            - placement_strategy (optional, block):
                - field (optional)
                - type (optional)
            - platform_version (optional)
            - propagate_tags (optional)
            - reference_id (optional)
            - tags (optional)
            - task_count (optional)
            - task_definition_arn (required)
        - eventbridge_event_bus_parameters (optional, block):
            - detail_type (optional)
            - endpoint_id (optional)
            - resources (optional)
            - source (optional)
            - time (optional)
        - http_parameters (optional, block):
            - header_parameters (optional)
            - path_parameter_values (optional)
            - query_string_parameters (optional)
        - input_template (optional)
        - kinesis_stream_parameters (optional, block):
            - partition_key (required)
        - lambda_function_parameters (optional, block):
            - invocation_type (required)
        - redshift_data_parameters (optional, block):
            - database (required)
            - db_user (optional)
            - secret_manager_arn (optional)
            - sqls (required)
            - statement_name (optional)
            - with_event (optional)
        - sagemaker_pipeline_parameters (optional, block):
            - pipeline_parameter (optional, block):
                - name (required)
                - value (required)
        - sqs_queue_parameters (optional, block):
            - message_deduplication_id (optional)
            - message_group_id (optional)
        - step_function_state_machine_parameters (optional, block):
            - invocation_type (required)
EOT

  type = map(object({
    role_arn           = string
    source             = string
    target             = string
    description        = optional(string)
    desired_state      = optional(string)
    enrichment         = optional(string)
    kms_key_identifier = optional(string)
    name               = optional(string)
    name_prefix        = optional(string)
    region             = optional(string)
    tags               = optional(map(string))
    tags_all           = optional(map(string))
    enrichment_parameters = optional(object({
      http_parameters = optional(object({
        header_parameters       = optional(map(string))
        path_parameter_values   = optional(list(string))
        query_string_parameters = optional(map(string))
      }))
      input_template = optional(string)
    }))
    log_configuration = optional(object({
      cloudwatch_logs_log_destination = optional(object({
        log_group_arn = string
      }))
      firehose_log_destination = optional(object({
        delivery_stream_arn = string
      }))
      include_execution_data = optional(set(string))
      level                  = string
      s3_log_destination = optional(object({
        bucket_name   = string
        bucket_owner  = string
        output_format = optional(string)
        prefix        = optional(string)
      }))
    }))
    source_parameters = optional(object({
      activemq_broker_parameters = optional(object({
        batch_size = optional(number)
        credentials = object({
          basic_auth = string
        })
        maximum_batching_window_in_seconds = optional(number)
        queue_name                         = string
      }))
      dynamodb_stream_parameters = optional(object({
        batch_size = optional(number)
        dead_letter_config = optional(object({
          arn = optional(string)
        }))
        maximum_batching_window_in_seconds = optional(number)
        maximum_record_age_in_seconds      = optional(number)
        maximum_retry_attempts             = optional(number)
        on_partial_batch_item_failure      = optional(string)
        parallelization_factor             = optional(number)
        starting_position                  = string
      }))
      filter_criteria = optional(object({
        filter = optional(list(object({
          pattern = string
        })))
      }))
      kinesis_stream_parameters = optional(object({
        batch_size = optional(number)
        dead_letter_config = optional(object({
          arn = optional(string)
        }))
        maximum_batching_window_in_seconds = optional(number)
        maximum_record_age_in_seconds      = optional(number)
        maximum_retry_attempts             = optional(number)
        on_partial_batch_item_failure      = optional(string)
        parallelization_factor             = optional(number)
        starting_position                  = string
        starting_position_timestamp        = optional(string)
      }))
      managed_streaming_kafka_parameters = optional(object({
        batch_size        = optional(number)
        consumer_group_id = optional(string)
        credentials = optional(object({
          client_certificate_tls_auth = optional(string)
          sasl_scram_512_auth         = optional(string)
        }))
        maximum_batching_window_in_seconds = optional(number)
        starting_position                  = optional(string)
        topic_name                         = string
      }))
      rabbitmq_broker_parameters = optional(object({
        batch_size = optional(number)
        credentials = object({
          basic_auth = string
        })
        maximum_batching_window_in_seconds = optional(number)
        queue_name                         = string
        virtual_host                       = optional(string)
      }))
      self_managed_kafka_parameters = optional(object({
        additional_bootstrap_servers = optional(set(string))
        batch_size                   = optional(number)
        consumer_group_id            = optional(string)
        credentials = optional(object({
          basic_auth                  = optional(string)
          client_certificate_tls_auth = optional(string)
          sasl_scram_256_auth         = optional(string)
          sasl_scram_512_auth         = optional(string)
        }))
        maximum_batching_window_in_seconds = optional(number)
        server_root_ca_certificate         = optional(string)
        starting_position                  = optional(string)
        topic_name                         = string
        vpc = optional(object({
          security_groups = optional(set(string))
          subnets         = optional(set(string))
        }))
      }))
      sqs_queue_parameters = optional(object({
        batch_size                         = optional(number)
        maximum_batching_window_in_seconds = optional(number)
      }))
    }))
    target_parameters = optional(object({
      batch_job_parameters = optional(object({
        array_properties = optional(object({
          size = optional(number)
        }))
        container_overrides = optional(object({
          command = optional(list(string))
          environment = optional(list(object({
            name  = optional(string)
            value = optional(string)
          })))
          instance_type = optional(string)
          resource_requirement = optional(list(object({
            type  = string
            value = string
          })))
        }))
        depends_on = optional(list(object({
          job_id = optional(string)
          type   = optional(string)
        })))
        job_definition = string
        job_name       = string
        parameters     = optional(map(string))
        retry_strategy = optional(object({
          attempts = optional(number)
        }))
      }))
      cloudwatch_logs_parameters = optional(object({
        log_stream_name = optional(string)
        timestamp       = optional(string)
      }))
      ecs_task_parameters = optional(object({
        capacity_provider_strategy = optional(list(object({
          base              = optional(number)
          capacity_provider = string
          weight            = optional(number)
        })))
        enable_ecs_managed_tags = optional(bool)
        enable_execute_command  = optional(bool)
        group                   = optional(string)
        launch_type             = optional(string)
        network_configuration = optional(object({
          aws_vpc_configuration = optional(object({
            assign_public_ip = optional(string)
            security_groups  = optional(set(string))
            subnets          = optional(set(string))
          }))
        }))
        overrides = optional(object({
          container_override = optional(list(object({
            command = optional(list(string))
            cpu     = optional(number)
            environment = optional(list(object({
              name  = optional(string)
              value = optional(string)
            })))
            environment_file = optional(list(object({
              type  = string
              value = string
            })))
            memory             = optional(number)
            memory_reservation = optional(number)
            name               = optional(string)
            resource_requirement = optional(list(object({
              type  = string
              value = string
            })))
          })))
          cpu = optional(string)
          ephemeral_storage = optional(object({
            size_in_gib = number
          }))
          execution_role_arn = optional(string)
          inference_accelerator_override = optional(list(object({
            device_name = optional(string)
            device_type = optional(string)
          })))
          memory        = optional(string)
          task_role_arn = optional(string)
        }))
        placement_constraint = optional(list(object({
          expression = optional(string)
          type       = optional(string)
        })))
        placement_strategy = optional(list(object({
          field = optional(string)
          type  = optional(string)
        })))
        platform_version    = optional(string)
        propagate_tags      = optional(string)
        reference_id        = optional(string)
        tags                = optional(map(string))
        task_count          = optional(number)
        task_definition_arn = string
      }))
      eventbridge_event_bus_parameters = optional(object({
        detail_type = optional(string)
        endpoint_id = optional(string)
        resources   = optional(set(string))
        source      = optional(string)
        time        = optional(string)
      }))
      http_parameters = optional(object({
        header_parameters       = optional(map(string))
        path_parameter_values   = optional(list(string))
        query_string_parameters = optional(map(string))
      }))
      input_template = optional(string)
      kinesis_stream_parameters = optional(object({
        partition_key = string
      }))
      lambda_function_parameters = optional(object({
        invocation_type = string
      }))
      redshift_data_parameters = optional(object({
        database           = string
        db_user            = optional(string)
        secret_manager_arn = optional(string)
        sqls               = set(string)
        statement_name     = optional(string)
        with_event         = optional(bool)
      }))
      sagemaker_pipeline_parameters = optional(object({
        pipeline_parameter = optional(list(object({
          name  = string
          value = string
        })))
      }))
      sqs_queue_parameters = optional(object({
        message_deduplication_id = optional(string)
        message_group_id         = optional(string)
      }))
      step_function_state_machine_parameters = optional(object({
        invocation_type = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.filter_criteria == null || (v.source_parameters.filter_criteria.filter == null || (length(v.source_parameters.filter_criteria.filter) <= 5)))
      )
    ])
    error_message = "Each filter list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.batch_job_parameters == null || (v.target_parameters.batch_job_parameters.depends_on == null || (length(v.target_parameters.batch_job_parameters.depends_on) <= 20)))
      )
    ])
    error_message = "Each depends_on list must contain at most 20 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.ecs_task_parameters == null || (v.target_parameters.ecs_task_parameters.capacity_provider_strategy == null || (length(v.target_parameters.ecs_task_parameters.capacity_provider_strategy) <= 6)))
      )
    ])
    error_message = "Each capacity_provider_strategy list must contain at most 6 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.ecs_task_parameters == null || (v.target_parameters.ecs_task_parameters.placement_constraint == null || (length(v.target_parameters.ecs_task_parameters.placement_constraint) <= 10)))
      )
    ])
    error_message = "Each placement_constraint list must contain at most 10 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.ecs_task_parameters == null || (v.target_parameters.ecs_task_parameters.placement_strategy == null || (length(v.target_parameters.ecs_task_parameters.placement_strategy) <= 5)))
      )
    ])
    error_message = "Each placement_strategy list must contain at most 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.sagemaker_pipeline_parameters == null || (v.target_parameters.sagemaker_pipeline_parameters.pipeline_parameter == null || (length(v.target_parameters.sagemaker_pipeline_parameters.pipeline_parameter) <= 200)))
      )
    ])
    error_message = "Each pipeline_parameter list must contain at most 200 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.enrichment_parameters == null || (v.enrichment_parameters.input_template == null || (length(v.enrichment_parameters.input_template) >= 0 && length(v.enrichment_parameters.input_template) <= 8192))
      )
    ])
    error_message = "must be between 0 and 8192 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.activemq_broker_parameters == null || (v.source_parameters.activemq_broker_parameters.batch_size == null || (v.source_parameters.activemq_broker_parameters.batch_size >= 1 && v.source_parameters.activemq_broker_parameters.batch_size <= 10000)))
      )
    ])
    error_message = "must be between 1 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.activemq_broker_parameters == null || (v.source_parameters.activemq_broker_parameters.maximum_batching_window_in_seconds == null || (v.source_parameters.activemq_broker_parameters.maximum_batching_window_in_seconds >= 0 && v.source_parameters.activemq_broker_parameters.maximum_batching_window_in_seconds <= 300)))
      )
    ])
    error_message = "must be between 0 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.activemq_broker_parameters == null || ((length(v.source_parameters.activemq_broker_parameters.queue_name) >= 1 && length(v.source_parameters.activemq_broker_parameters.queue_name) <= 1000) && (can(regex("^[\\s\\S]*$", v.source_parameters.activemq_broker_parameters.queue_name)))))
      )
    ])
    error_message = "all of: must be between 1 and 1000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.dynamodb_stream_parameters == null || (v.source_parameters.dynamodb_stream_parameters.batch_size == null || (v.source_parameters.dynamodb_stream_parameters.batch_size >= 1 && v.source_parameters.dynamodb_stream_parameters.batch_size <= 10000)))
      )
    ])
    error_message = "must be between 1 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.dynamodb_stream_parameters == null || (v.source_parameters.dynamodb_stream_parameters.maximum_batching_window_in_seconds == null || (v.source_parameters.dynamodb_stream_parameters.maximum_batching_window_in_seconds >= 0 && v.source_parameters.dynamodb_stream_parameters.maximum_batching_window_in_seconds <= 300)))
      )
    ])
    error_message = "must be between 0 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.dynamodb_stream_parameters == null || (v.source_parameters.dynamodb_stream_parameters.maximum_record_age_in_seconds == null || ((contains([-1], v.source_parameters.dynamodb_stream_parameters.maximum_record_age_in_seconds)) || (v.source_parameters.dynamodb_stream_parameters.maximum_record_age_in_seconds >= 60 && v.source_parameters.dynamodb_stream_parameters.maximum_record_age_in_seconds <= 604800))))
      )
    ])
    error_message = "any of: must be one of: -1; must be between 60 and 604800"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.dynamodb_stream_parameters == null || (v.source_parameters.dynamodb_stream_parameters.maximum_retry_attempts == null || (v.source_parameters.dynamodb_stream_parameters.maximum_retry_attempts >= -1 && v.source_parameters.dynamodb_stream_parameters.maximum_retry_attempts <= 10000)))
      )
    ])
    error_message = "must be between -1 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.dynamodb_stream_parameters == null || (v.source_parameters.dynamodb_stream_parameters.parallelization_factor == null || (v.source_parameters.dynamodb_stream_parameters.parallelization_factor >= 1 && v.source_parameters.dynamodb_stream_parameters.parallelization_factor <= 10)))
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.kinesis_stream_parameters == null || (v.source_parameters.kinesis_stream_parameters.batch_size == null || (v.source_parameters.kinesis_stream_parameters.batch_size >= 1 && v.source_parameters.kinesis_stream_parameters.batch_size <= 10000)))
      )
    ])
    error_message = "must be between 1 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.kinesis_stream_parameters == null || (v.source_parameters.kinesis_stream_parameters.maximum_batching_window_in_seconds == null || (v.source_parameters.kinesis_stream_parameters.maximum_batching_window_in_seconds >= 0 && v.source_parameters.kinesis_stream_parameters.maximum_batching_window_in_seconds <= 300)))
      )
    ])
    error_message = "must be between 0 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.kinesis_stream_parameters == null || (v.source_parameters.kinesis_stream_parameters.maximum_record_age_in_seconds == null || ((contains([-1], v.source_parameters.kinesis_stream_parameters.maximum_record_age_in_seconds)) || (v.source_parameters.kinesis_stream_parameters.maximum_record_age_in_seconds >= 60 && v.source_parameters.kinesis_stream_parameters.maximum_record_age_in_seconds <= 604800))))
      )
    ])
    error_message = "any of: must be one of: -1; must be between 60 and 604800"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.kinesis_stream_parameters == null || (v.source_parameters.kinesis_stream_parameters.maximum_retry_attempts == null || (v.source_parameters.kinesis_stream_parameters.maximum_retry_attempts >= -1 && v.source_parameters.kinesis_stream_parameters.maximum_retry_attempts <= 10000)))
      )
    ])
    error_message = "must be between -1 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.kinesis_stream_parameters == null || (v.source_parameters.kinesis_stream_parameters.parallelization_factor == null || (v.source_parameters.kinesis_stream_parameters.parallelization_factor >= 1 && v.source_parameters.kinesis_stream_parameters.parallelization_factor <= 10)))
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.managed_streaming_kafka_parameters == null || (v.source_parameters.managed_streaming_kafka_parameters.batch_size == null || (v.source_parameters.managed_streaming_kafka_parameters.batch_size >= 1 && v.source_parameters.managed_streaming_kafka_parameters.batch_size <= 10000)))
      )
    ])
    error_message = "must be between 1 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.managed_streaming_kafka_parameters == null || (v.source_parameters.managed_streaming_kafka_parameters.consumer_group_id == null || ((length(v.source_parameters.managed_streaming_kafka_parameters.consumer_group_id) >= 1 && length(v.source_parameters.managed_streaming_kafka_parameters.consumer_group_id) <= 200) && (can(regex("^[^.]([0-9A-Za-z_.-]+)$", v.source_parameters.managed_streaming_kafka_parameters.consumer_group_id))))))
      )
    ])
    error_message = "all of: must be between 1 and 200 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.managed_streaming_kafka_parameters == null || (v.source_parameters.managed_streaming_kafka_parameters.maximum_batching_window_in_seconds == null || (v.source_parameters.managed_streaming_kafka_parameters.maximum_batching_window_in_seconds >= 0 && v.source_parameters.managed_streaming_kafka_parameters.maximum_batching_window_in_seconds <= 300)))
      )
    ])
    error_message = "must be between 0 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.managed_streaming_kafka_parameters == null || ((length(v.source_parameters.managed_streaming_kafka_parameters.topic_name) >= 1 && length(v.source_parameters.managed_streaming_kafka_parameters.topic_name) <= 249) && (can(regex("^[^.]([0-9A-Za-z_.-]+)$", v.source_parameters.managed_streaming_kafka_parameters.topic_name)))))
      )
    ])
    error_message = "all of: must be between 1 and 249 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.rabbitmq_broker_parameters == null || (v.source_parameters.rabbitmq_broker_parameters.batch_size == null || (v.source_parameters.rabbitmq_broker_parameters.batch_size >= 1 && v.source_parameters.rabbitmq_broker_parameters.batch_size <= 10000)))
      )
    ])
    error_message = "must be between 1 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.rabbitmq_broker_parameters == null || (v.source_parameters.rabbitmq_broker_parameters.maximum_batching_window_in_seconds == null || (v.source_parameters.rabbitmq_broker_parameters.maximum_batching_window_in_seconds >= 0 && v.source_parameters.rabbitmq_broker_parameters.maximum_batching_window_in_seconds <= 300)))
      )
    ])
    error_message = "must be between 0 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.rabbitmq_broker_parameters == null || ((length(v.source_parameters.rabbitmq_broker_parameters.queue_name) >= 1 && length(v.source_parameters.rabbitmq_broker_parameters.queue_name) <= 1000) && (can(regex("^[\\s\\S]*$", v.source_parameters.rabbitmq_broker_parameters.queue_name)))))
      )
    ])
    error_message = "all of: must be between 1 and 1000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.rabbitmq_broker_parameters == null || (v.source_parameters.rabbitmq_broker_parameters.virtual_host == null || ((length(v.source_parameters.rabbitmq_broker_parameters.virtual_host) >= 1 && length(v.source_parameters.rabbitmq_broker_parameters.virtual_host) <= 200) && (can(regex("^[0-9A-Za-z_\\/*:+=.@-]*$", v.source_parameters.rabbitmq_broker_parameters.virtual_host))))))
      )
    ])
    error_message = "all of: must be between 1 and 200 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.self_managed_kafka_parameters == null || (v.source_parameters.self_managed_kafka_parameters.additional_bootstrap_servers == null || (alltrue([for x in v.source_parameters.self_managed_kafka_parameters.additional_bootstrap_servers : (length(x) >= 1 && length(x) <= 300) && (can(regex("^(([0-9A-Za-z]|[0-9A-Za-z][0-9A-Za-z-]*[0-9A-Za-z])\\.)*([0-9A-Za-z]|[0-9A-Za-z][0-9A-Za-z-]*[0-9A-Za-z]):[0-9]{1,5}$", x)))]))))
      )
    ])
    error_message = "all of: must be between 1 and 300 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.self_managed_kafka_parameters == null || (v.source_parameters.self_managed_kafka_parameters.batch_size == null || (v.source_parameters.self_managed_kafka_parameters.batch_size >= 1 && v.source_parameters.self_managed_kafka_parameters.batch_size <= 10000)))
      )
    ])
    error_message = "must be between 1 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.self_managed_kafka_parameters == null || (v.source_parameters.self_managed_kafka_parameters.consumer_group_id == null || ((length(v.source_parameters.self_managed_kafka_parameters.consumer_group_id) >= 1 && length(v.source_parameters.self_managed_kafka_parameters.consumer_group_id) <= 200) && (can(regex("^[0-9A-Za-z_\\/*:+=.@-]*$", v.source_parameters.self_managed_kafka_parameters.consumer_group_id))))))
      )
    ])
    error_message = "all of: must be between 1 and 200 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.self_managed_kafka_parameters == null || (v.source_parameters.self_managed_kafka_parameters.maximum_batching_window_in_seconds == null || (v.source_parameters.self_managed_kafka_parameters.maximum_batching_window_in_seconds >= 0 && v.source_parameters.self_managed_kafka_parameters.maximum_batching_window_in_seconds <= 300)))
      )
    ])
    error_message = "must be between 0 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.self_managed_kafka_parameters == null || ((length(v.source_parameters.self_managed_kafka_parameters.topic_name) >= 1 && length(v.source_parameters.self_managed_kafka_parameters.topic_name) <= 249) && (can(regex("^[^.]([0-9A-Za-z_.-]+)$", v.source_parameters.self_managed_kafka_parameters.topic_name)))))
      )
    ])
    error_message = "all of: must be between 1 and 249 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.sqs_queue_parameters == null || (v.source_parameters.sqs_queue_parameters.batch_size == null || (v.source_parameters.sqs_queue_parameters.batch_size >= 1 && v.source_parameters.sqs_queue_parameters.batch_size <= 10000)))
      )
    ])
    error_message = "must be between 1 and 10000"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.source_parameters == null || (v.source_parameters.sqs_queue_parameters == null || (v.source_parameters.sqs_queue_parameters.maximum_batching_window_in_seconds == null || (v.source_parameters.sqs_queue_parameters.maximum_batching_window_in_seconds >= 0 && v.source_parameters.sqs_queue_parameters.maximum_batching_window_in_seconds <= 300)))
      )
    ])
    error_message = "must be between 0 and 300"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.batch_job_parameters == null || (length(v.target_parameters.batch_job_parameters.job_name) >= 1 && length(v.target_parameters.batch_job_parameters.job_name) <= 128))
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.batch_job_parameters == null || (v.target_parameters.batch_job_parameters.retry_strategy == null || (v.target_parameters.batch_job_parameters.retry_strategy.attempts == null || (v.target_parameters.batch_job_parameters.retry_strategy.attempts >= 1 && v.target_parameters.batch_job_parameters.retry_strategy.attempts <= 10))))
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.cloudwatch_logs_parameters == null || (v.target_parameters.cloudwatch_logs_parameters.log_stream_name == null || (length(v.target_parameters.cloudwatch_logs_parameters.log_stream_name) >= 0 && length(v.target_parameters.cloudwatch_logs_parameters.log_stream_name) <= 256)))
      )
    ])
    error_message = "must be between 0 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.cloudwatch_logs_parameters == null || (v.target_parameters.cloudwatch_logs_parameters.timestamp == null || ((length(v.target_parameters.cloudwatch_logs_parameters.timestamp) >= 1 && length(v.target_parameters.cloudwatch_logs_parameters.timestamp) <= 256) && (can(regex("^\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*$", v.target_parameters.cloudwatch_logs_parameters.timestamp))))))
      )
    ])
    error_message = "all of: must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.ecs_task_parameters == null || (v.target_parameters.ecs_task_parameters.group == null || (length(v.target_parameters.ecs_task_parameters.group) >= 1 && length(v.target_parameters.ecs_task_parameters.group) <= 255)))
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.ecs_task_parameters == null || (v.target_parameters.ecs_task_parameters.overrides == null || (v.target_parameters.ecs_task_parameters.overrides.ephemeral_storage == null || (v.target_parameters.ecs_task_parameters.overrides.ephemeral_storage.size_in_gib >= 21 && v.target_parameters.ecs_task_parameters.overrides.ephemeral_storage.size_in_gib <= 200))))
      )
    ])
    error_message = "must be between 21 and 200"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.ecs_task_parameters == null || (v.target_parameters.ecs_task_parameters.reference_id == null || (length(v.target_parameters.ecs_task_parameters.reference_id) >= 1 && length(v.target_parameters.ecs_task_parameters.reference_id) <= 1024)))
      )
    ])
    error_message = "must be between 1 and 1024 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.eventbridge_event_bus_parameters == null || (v.target_parameters.eventbridge_event_bus_parameters.detail_type == null || (length(v.target_parameters.eventbridge_event_bus_parameters.detail_type) >= 0 && length(v.target_parameters.eventbridge_event_bus_parameters.detail_type) <= 128)))
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.eventbridge_event_bus_parameters == null || (v.target_parameters.eventbridge_event_bus_parameters.endpoint_id == null || ((length(v.target_parameters.eventbridge_event_bus_parameters.endpoint_id) >= 1 && length(v.target_parameters.eventbridge_event_bus_parameters.endpoint_id) <= 50) && (can(regex("^[0-9A-Za-z-]+[\\.][0-9A-Za-z-]+$", v.target_parameters.eventbridge_event_bus_parameters.endpoint_id))))))
      )
    ])
    error_message = "all of: must be between 1 and 50 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.eventbridge_event_bus_parameters == null || (v.target_parameters.eventbridge_event_bus_parameters.time == null || ((length(v.target_parameters.eventbridge_event_bus_parameters.time) >= 1 && length(v.target_parameters.eventbridge_event_bus_parameters.time) <= 256) && (can(regex("^\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*$", v.target_parameters.eventbridge_event_bus_parameters.time))))))
      )
    ])
    error_message = "all of: must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.input_template == null || (length(v.target_parameters.input_template) >= 0 && length(v.target_parameters.input_template) <= 8192))
      )
    ])
    error_message = "must be between 0 and 8192 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.kinesis_stream_parameters == null || (length(v.target_parameters.kinesis_stream_parameters.partition_key) >= 1 && length(v.target_parameters.kinesis_stream_parameters.partition_key) <= 256))
      )
    ])
    error_message = "must be between 1 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.redshift_data_parameters == null || (v.target_parameters.redshift_data_parameters.db_user == null || (length(v.target_parameters.redshift_data_parameters.db_user) >= 1 && length(v.target_parameters.redshift_data_parameters.db_user) <= 128)))
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.redshift_data_parameters == null || (alltrue([for x in v.target_parameters.redshift_data_parameters.sqls : length(x) >= 1 && length(x) <= 100000])))
      )
    ])
    error_message = "must be between 1 and 100000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.redshift_data_parameters == null || (v.target_parameters.redshift_data_parameters.statement_name == null || (length(v.target_parameters.redshift_data_parameters.statement_name) >= 1 && length(v.target_parameters.redshift_data_parameters.statement_name) <= 500)))
      )
    ])
    error_message = "must be between 1 and 500 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.sqs_queue_parameters == null || (v.target_parameters.sqs_queue_parameters.message_deduplication_id == null || (length(v.target_parameters.sqs_queue_parameters.message_deduplication_id) >= 1 && length(v.target_parameters.sqs_queue_parameters.message_deduplication_id) <= 100)))
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.pipes_pipes : (
        v.target_parameters == null || (v.target_parameters.sqs_queue_parameters == null || (v.target_parameters.sqs_queue_parameters.message_group_id == null || (length(v.target_parameters.sqs_queue_parameters.message_group_id) >= 1 && length(v.target_parameters.sqs_queue_parameters.message_group_id) <= 100)))
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  # Note: 60 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

