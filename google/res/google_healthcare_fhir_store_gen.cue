package res

import "list"

#google_healthcare_fhir_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_healthcare_fhir_store")
	close({
		// Enable parsing of references within complex FHIR data types
		// such as Extensions. If this value is set to ENABLED, then
		// features like referential integrity and Bundle reference
		// rewriting apply to all references. If this flag has not been
		// specified the behavior of the FHIR store will not change,
		// references in complex data types will not be parsed. New
		// stores will have this value set to ENABLED by default after a
		// notification period. Warning: turning on this flag causes
		// processing existing resources to fail if they contain
		// references to non-existent resources. Possible values:
		// ["COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED",
		// "DISABLED", "ENABLED"]
		complex_data_type_reference_parsing?: string

		// Identifies the dataset addressed by this request. Must be in
		// the format
		// 'projects/{project}/locations/{location}/datasets/{dataset}'
		dataset!: string

		// If true, overrides the default search behavior for this FHIR
		// store to handling=strict which returns an error for
		// unrecognized search parameters.
		// If false, uses the FHIR specification default handling=lenient
		// which ignores unrecognized search parameters.
		// The handling can always be changed from the default on an
		// individual API call by setting the HTTP header Prefer:
		// handling=strict or Prefer: handling=lenient.
		default_search_handling_strict?: bool

		// Whether to disable referential integrity in this FHIR store.
		// This field is immutable after FHIR store
		// creation. The default value is false, meaning that the API will
		// enforce referential integrity and fail the
		// requests that will result in inconsistent state in the FHIR
		// store. When this field is set to true, the API
		// will skip referential integrity check. Consequently, operations
		// that rely on references, such as
		// Patient.get$everything, will not return all the results if
		// broken references exist.
		//
		// ** Changing this property may recreate the FHIR store (removing
		// all data) **
		disable_referential_integrity?: bool

		// Whether to disable resource versioning for this FHIR store.
		// This field can not be changed after the creation
		// of FHIR store. If set to false, which is the default behavior,
		// all write operations will cause historical
		// versions to be recorded automatically. The historical versions
		// can be fetched through the history APIs, but
		// cannot be updated. If set to true, no historical versions will
		// be kept. The server will send back errors for
		// attempts to read the historical versions.
		//
		// ** Changing this property may recreate the FHIR store (removing
		// all data) **
		disable_resource_versioning?: bool

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Whether to allow the bulk import API to accept history bundles
		// and directly insert historical resource
		// versions into the FHIR store. Importing resource histories
		// creates resource interactions that appear to have
		// occurred in the past, which clients may not want to allow. If
		// set to false, history bundles within an import
		// will fail with an error.
		//
		// ** Changing this property may recreate the FHIR store (removing
		// all data) **
		//
		// ** This property can be changed manually in the Google Cloud
		// Healthcare admin console without recreating the FHIR store **
		enable_history_import?: bool

		// Whether this FHIR store has the updateCreate capability. This
		// determines if the client can use an Update
		// operation to create a new resource with a client-specified ID.
		// If false, all IDs are server-assigned through
		// the Create operation and attempts to Update a non-existent
		// resource will return errors. Please treat the audit
		// logs with appropriate levels of care if client-specified
		// resource IDs contain sensitive data such as patient
		// identifiers, those IDs will be part of the FHIR resource path
		// recorded in Cloud audit logs and Cloud Pub/Sub
		// notifications.
		enable_update_create?: bool

		// User-supplied key-value pairs used to organize FHIR stores.
		//
		// Label keys must be between 1 and 63 characters long, have a
		// UTF-8 encoding of maximum 128 bytes, and must
		// conform to the following PCRE regular expression:
		// [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
		//
		// Label values are optional, must be between 1 and 63 characters
		// long, have a UTF-8 encoding of maximum 128
		// bytes, and must conform to the following PCRE regular
		// expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
		//
		// No more than 64 labels can be associated with a given store.
		//
		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		notification_config?: matchN(1, [#notification_config, list.MaxItems(1) & [...#notification_config]])
		notification_configs?: matchN(1, [#notification_configs, [...#notification_configs]])
		stream_configs?: matchN(1, [#stream_configs, [...#stream_configs]])
		timeouts?: #timeouts
		validation_config?: matchN(1, [#validation_config, list.MaxItems(1) & [...#validation_config]])
		id?: string

		// The resource name for the FhirStore.
		//
		// ** Changing this property may recreate the FHIR store (removing
		// all data) **
		name!: string

		// The fully qualified name of this dataset
		self_link?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The FHIR specification version. Possible values: ["DSTU2",
		// "STU3", "R4"]
		version!: string
	})

	#notification_config: close({
		// The Cloud Pub/Sub topic that notifications of changes are
		// published on. Supplied by the client.
		// PubsubMessage.Data will contain the resource name.
		// PubsubMessage.MessageId is the ID of this message.
		// It is guaranteed to be unique within the topic.
		// PubsubMessage.PublishTime is the time at which the message
		// was published. Notifications are only sent if the topic is
		// non-empty. Topic names must be scoped to a
		// project.
		// service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com
		// must have publisher permissions on the given
		// Cloud Pub/Sub topic. Not having adequate permissions will cause
		// the calls that send notifications to fail.
		pubsub_topic!: string
	})

	#notification_configs: close({
		// The Cloud Pub/Sub topic that notifications of changes are
		// published on. Supplied by the client.
		// PubsubMessage.Data will contain the resource name.
		// PubsubMessage.MessageId is the ID of this message.
		// It is guaranteed to be unique within the topic.
		// PubsubMessage.PublishTime is the time at which the message
		// was published. Notifications are only sent if the topic is
		// non-empty. Topic names must be scoped to a
		// project.
		// service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com
		// must have publisher permissions on the given
		// Cloud Pub/Sub topic. Not having adequate permissions will cause
		// the calls that send notifications to fail.
		pubsub_topic!: string

		// Whether to send full FHIR resource to this Pub/Sub topic for
		// Create and Update operation.
		// Note that setting this to true does not guarantee that all
		// resources will be sent in the format of
		// full FHIR resource. When a resource change is too large or
		// during heavy traffic, only the resource name will be
		// sent. Clients should always check the "payloadType" label from
		// a Pub/Sub message to determine whether
		// it needs to fetch the full resource as a separate operation.
		send_full_resource?: bool

		// Whether to send full FHIR resource to this Pub/Sub topic for
		// deleting FHIR resource. Note that setting this to
		// true does not guarantee that all previous resources will be
		// sent in the format of full FHIR resource. When a
		// resource change is too large or during heavy traffic, only the
		// resource name will be sent. Clients should always
		// check the "payloadType" label from a Pub/Sub message to
		// determine whether it needs to fetch the full previous
		// resource as a separate operation.
		send_previous_resource_on_delete?: bool
	})

	#stream_configs: close({
		bigquery_destination?: matchN(1, [_#defs."/$defs/stream_configs/$defs/bigquery_destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/stream_configs/$defs/bigquery_destination"]])

		// Supply a FHIR resource type (such as "Patient" or
		// "Observation"). See
		// https://www.hl7.org/fhir/valueset-resource-types.html for a
		// list of all FHIR resource types. The server treats
		// an empty list as an intent to stream all the supported resource
		// types in this FHIR store.
		resource_types?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#validation_config: close({
		// Whether to disable FHIRPath validation for incoming resources.
		// The default value is false. Set this to true to disable
		// checking incoming resources for conformance against FHIRPath
		// requirement defined in the FHIR specification. This property
		// only affects resource types that do not have profiles
		// configured for them, any rules in enabled implementation
		// guides will still be enforced.
		disable_fhirpath_validation?: bool

		// Whether to disable profile validation for this FHIR store. The
		// default value is false. Set this to true to disable checking
		// incoming resources for conformance against structure
		// definitions in this FHIR store.
		disable_profile_validation?: bool

		// Whether to disable reference type validation for incoming
		// resources. The default value is false. Set this to true to
		// disable checking incoming resources for conformance against
		// reference type requirement defined in the FHIR specification.
		// This property only affects resource types that do not have
		// profiles configured for them, any rules in enabled
		// implementation guides will still be enforced.
		disable_reference_type_validation?: bool

		// Whether to disable required fields validation for incoming
		// resources. The default value is false. Set this to true to
		// disable checking incoming resources for conformance against
		// required fields requirement defined in the FHIR specification.
		// This property only affects resource types that do not have
		// profiles configured for them, any rules in enabled
		// implementation guides will still be enforced.
		disable_required_field_validation?: bool

		// A list of implementation guide URLs in this FHIR store that are
		// used to configure the profiles to use for validation.
		// When a URL cannot be resolved (for example, in a type
		// assertion), the server does not return an error.
		// For example, to use the US Core profiles for validation, set
		// enabledImplementationGuides to
		// ["http://hl7.org/fhir/us/core/ImplementationGuide/ig"]. If
		// enabledImplementationGuides is empty or omitted, then incoming
		// resources are only required to conform to the base FHIR
		// profiles. Otherwise, a resource must conform to at least one
		// profile listed in the global property of one of the enabled
		// ImplementationGuides.
		// The Cloud Healthcare API does not currently enforce all of the
		// rules in a StructureDefinition. The following rules are
		// supported:
		// - min/max
		// - minValue/maxValue
		// - maxLength
		// - type
		// - fixed[x]
		// - pattern[x] on simple types
		// - slicing, when using "value" as the discriminator type
		enabled_implementation_guides?: [...string]
	})

	_#defs: "/$defs/stream_configs/$defs/bigquery_destination": close({
		schema_config?: matchN(1, [_#defs."/$defs/stream_configs/$defs/bigquery_destination/$defs/schema_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/stream_configs/$defs/bigquery_destination/$defs/schema_config"]])

		// BigQuery URI to a dataset, up to 2000 characters long, in the
		// format bq://projectId.bqDatasetId
		dataset_uri!: string
	})

	_#defs: "/$defs/stream_configs/$defs/bigquery_destination/$defs/schema_config": close({
		last_updated_partition_config?: matchN(1, [_#defs."/$defs/stream_configs/$defs/bigquery_destination/$defs/schema_config/$defs/last_updated_partition_config", list.MaxItems(1) & [..._#defs."/$defs/stream_configs/$defs/bigquery_destination/$defs/schema_config/$defs/last_updated_partition_config"]])

		// The depth for all recursive structures in the output analytics
		// schema. For example, concept in the CodeSystem
		// resource is a recursive structure; when the depth is 2, the
		// CodeSystem table will have a column called
		// concept.concept but not concept.concept.concept. If not
		// specified or set to 0, the server will use the default
		// value 2. The maximum depth allowed is 5.
		recursive_structure_depth!: number

		// Specifies the output schema type.
		// * ANALYTICS: Analytics schema defined by the FHIR community.
		// See
		// https://github.com/FHIR/sql-on-fhir/blob/master/sql-on-fhir.md.
		// * ANALYTICS_V2: Analytics V2, similar to schema defined by the
		// FHIR community, with added support for extensions with one or
		// more occurrences and contained resources in stringified JSON.
		// * LOSSLESS: A data-driven schema generated from the fields
		// present in the FHIR data being exported, with no additional
		// simplification. Default value: "ANALYTICS" Possible values:
		// ["ANALYTICS", "ANALYTICS_V2", "LOSSLESS"]
		schema_type?: string
	})

	_#defs: "/$defs/stream_configs/$defs/bigquery_destination/$defs/schema_config/$defs/last_updated_partition_config": close({
		// Number of milliseconds for which to keep the storage for a
		// partition.
		expiration_ms?: string

		// Type of partitioning. Possible values:
		// ["PARTITION_TYPE_UNSPECIFIED", "HOUR", "DAY", "MONTH", "YEAR"]
		type!: string
	})
}
