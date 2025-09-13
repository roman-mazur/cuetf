package res

import "list"

#google_secret_manager_regional_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_secret_manager_regional_secret")
	close({
		// Custom metadata about the regional secret.
		//
		// Annotations are distinct from various forms of labels.
		// Annotations exist to allow
		// client tools to store their own state information without
		// requiring a database.
		//
		// Annotation keys must be between 1 and 63 characters long, have
		// a UTF-8 encoding of
		// maximum 128 bytes, begin and end with an alphanumeric character
		// ([a-z0-9A-Z]), and
		// may have dashes (-), underscores (_), dots (.), and
		// alphanumerics in between these
		// symbols.
		//
		// The total size of annotation keys and values must be less than
		// 16KiB.
		//
		// An object containing a list of "key": value pairs. Example:
		// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// The time at which the regional secret was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// regional secret. Defaults to false.
		// When the field is set to true in Terraform state, a 'terraform
		// apply'
		// or 'terraform destroy' that would delete the federation will
		// fail.
		deletion_protection?: bool

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Timestamp in UTC when the regional secret is scheduled to
		// expire. This is always provided on
		// output, regardless of what was sent on input. A timestamp in
		// RFC3339 UTC "Zulu" format, with
		// nanosecond resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z". Only one of 'expire_time' or
		// 'ttl' can be provided.
		expire_time?: string

		// The labels assigned to this regional secret.
		//
		// Label keys must be between 1 and 63 characters long, have a
		// UTF-8 encoding of maximum 128 bytes,
		// and must conform to the following PCRE regular expression:
		// [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
		//
		// Label values must be between 0 and 63 characters long, have a
		// UTF-8 encoding of maximum 128 bytes,
		// and must conform to the following PCRE regular expression:
		// [\p{Ll}\p{Lo}\p{N}_-]{0,63}
		//
		// No more than 64 labels can be assigned to a given resource.
		//
		// An object containing a list of "key": value pairs. Example:
		// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the regional secret. eg us-central1
		location!: string
		id?:       string

		// The resource name of the regional secret. Format:
		// 'projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}'
		name?:    string
		project?: string
		customer_managed_encryption?: matchN(1, [#customer_managed_encryption, list.MaxItems(1) & [...#customer_managed_encryption]])
		rotation?: matchN(1, [#rotation, list.MaxItems(1) & [...#rotation]])
		timeouts?: #timeouts
		topics?: matchN(1, [#topics, [...#topics]])

		// This must be unique within the project.
		secret_id!: string

		// A map of resource manager tags.
		// Resource manager tag keys and values have the same definition
		// as resource manager tags.
		// Keys must be in the format tagKeys/{tag_key_id}, and values are
		// in the format tagValues/{tag_value_id}.
		tags?: [string]: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The TTL for the regional secret. A duration in seconds with up
		// to nine fractional digits,
		// terminated by 's'. Example: "3.5s". Only one of 'ttl' or
		// 'expire_time' can be provided.
		ttl?: string

		// Mapping from version alias to version name.
		//
		// A version alias is a string with a maximum length of 63
		// characters and can contain
		// uppercase and lowercase letters, numerals, and the hyphen (-)
		// and underscore ('_')
		// characters. An alias string must start with a letter and cannot
		// be the string
		// 'latest' or 'NEW'. No more than 50 aliases can be assigned to a
		// given secret.
		//
		// An object containing a list of "key": value pairs. Example:
		// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		version_aliases?: [string]: string

		// Secret Version TTL after destruction request.
		// This is a part of the delayed delete feature on Secret Version.
		// For secret with versionDestroyTtl>0, version destruction
		// doesn't happen immediately
		// on calling destroy instead the version goes to a disabled state
		// and
		// the actual destruction happens after this TTL expires. It must
		// be atleast 24h.
		version_destroy_ttl?: string
	})

	#customer_managed_encryption: close({
		// The resource name of the Cloud KMS CryptoKey used to encrypt
		// secret payloads.
		kms_key_name!: string
	})

	#rotation: close({
		// Timestamp in UTC at which the Secret is scheduled to rotate.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine
		// fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		next_rotation_time?: string

		// The Duration between rotation notifications. Must be in seconds
		// and at least 3600s (1h)
		// and at most 3153600000s (100 years). If rotationPeriod is set,
		// 'next_rotation_time' must
		// be set. 'next_rotation_time' will be advanced by this period
		// when the service
		// automatically sends rotation notifications.
		rotation_period?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#topics: close({
		// The resource name of the Pub/Sub topic that will be published
		// to, in the following format:
		// projects/*/topics/*. For publication to succeed, the Secret
		// Manager Service
		// Agent service account must have pubsub.publisher permissions on
		// the topic.
		name!: string
	})
}
