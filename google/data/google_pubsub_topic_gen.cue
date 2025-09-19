package data

#google_pubsub_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_pubsub_topic")
	close({
		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Settings for ingestion from a data source into this topic.
		ingestion_data_source_settings?: [...close({
			aws_kinesis?: [...close({
				aws_role_arn?:        string
				consumer_arn?:        string
				gcp_service_account?: string
				stream_arn?:          string
			})]
			aws_msk?: [...close({
				aws_role_arn?:        string
				cluster_arn?:         string
				gcp_service_account?: string
				topic?:               string
			})]
			azure_event_hubs?: [...close({
				client_id?:           string
				event_hub?:           string
				gcp_service_account?: string
				namespace?:           string
				resource_group?:      string
				subscription_id?:     string
				tenant_id?:           string
			})]
			cloud_storage?: [...close({
				avro_format?: [...close({})]
				bucket?:                     string
				match_glob?:                 string
				minimum_object_create_time?: string
				pubsub_avro_format?: [...close({})]
				text_format?: [...close({
					delimiter?: string
				})]
			})]
			confluent_cloud?: [...close({
				bootstrap_server?:    string
				cluster_id?:          string
				gcp_service_account?: string
				identity_pool_id?:    string
				topic?:               string
			})]
			platform_logs_settings?: [...close({
				severity?: string
			})]
		})]
		id?: string

		// The resource name of the Cloud KMS CryptoKey to be used to
		// protect access
		// to messages published on this topic. Your project's PubSub
		// service account
		// ('service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com')
		// must have
		// 'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this
		// feature.
		// The expected format is
		// 'projects/*/locations/*/keyRings/*/cryptoKeys/*'
		kms_key_name?: string

		// A set of key/value label pairs to assign to this Topic.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Indicates the minimum duration to retain a message after it is
		// published
		// to the topic. If this field is set, messages published to the
		// topic in
		// the last messageRetentionDuration are always available to
		// subscribers.
		// For instance, it allows any attached subscription to seek to a
		// timestamp
		// that is up to messageRetentionDuration in the past. If this
		// field is not
		// set, message retention is controlled by settings on individual
		// subscriptions.
		// The rotation period has the format of a decimal number,
		// followed by the
		// letter 's' (seconds). Cannot be more than 31 days or less than
		// 10 minutes.
		message_retention_duration?: string

		// Policy constraining the set of Google Cloud Platform regions
		// where
		// messages published to the topic may be stored. If not present,
		// then no
		// constraints are in effect.
		message_storage_policy?: [...close({
			allowed_persistence_regions?: [...string]
			enforce_in_transit?: bool
		})]

		// Transforms to be applied to messages published to the topic.
		// Transforms are applied in the
		// order specified.
		message_transforms?: [...close({
			disabled?: bool
			javascript_udf?: [...close({
				code?:          string
				function_name?: string
			})]
		})]

		// Name of the topic.
		name!:    string
		project?: string

		// Settings for validating messages published against a schema.
		schema_settings?: [...close({
			encoding?: string
			schema?:   string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})
}
