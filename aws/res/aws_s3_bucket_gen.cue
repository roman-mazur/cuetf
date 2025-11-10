package res

import "list"

#aws_s3_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket")
	close({
		arn?:                string
		bucket?:             string
		bucket_domain_name?: string
		bucket_prefix?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		bucket_region?:               string
		bucket_regional_domain_name?: string
		force_destroy?:               bool
		hosted_zone_id?:              string
		id?:                          string
		cors_rule?: matchN(1, [#cors_rule, [...#cors_rule]])
		object_lock_enabled?: bool
		grant?: matchN(1, [#grant, [...#grant]])
		lifecycle_rule?: matchN(1, [#lifecycle_rule, [...#lifecycle_rule]])
		tags?: [string]: string
		logging?: matchN(1, [#logging, list.MaxItems(1) & [...#logging]])
		object_lock_configuration?: matchN(1, [#object_lock_configuration, list.MaxItems(1) & [...#object_lock_configuration]])
		replication_configuration?: matchN(1, [#replication_configuration, list.MaxItems(1) & [...#replication_configuration]])
		tags_all?: [string]: string
		server_side_encryption_configuration?: matchN(1, [#server_side_encryption_configuration, list.MaxItems(1) & [...#server_side_encryption_configuration]])
		timeouts?: #timeouts
		versioning?: matchN(1, [#versioning, list.MaxItems(1) & [...#versioning]])
		website?: matchN(1, [#website, list.MaxItems(1) & [...#website]])
	})

	#cors_rule: close({
		allowed_headers?: [...string]
		allowed_methods!: [...string]
		allowed_origins!: [...string]
		expose_headers?: [...string]
		max_age_seconds?: number
	})

	#grant: close({
		id?: string
		permissions!: [...string]
		type!: string
		uri?:  string
	})

	#lifecycle_rule: close({
		abort_incomplete_multipart_upload_days?: number
		enabled!:                                bool
		id?:                                     string
		prefix?:                                 string
		tags?: [string]: string
		expiration?: matchN(1, [_#defs."/$defs/lifecycle_rule/$defs/expiration", list.MaxItems(1) & [..._#defs."/$defs/lifecycle_rule/$defs/expiration"]])
		noncurrent_version_expiration?: matchN(1, [_#defs."/$defs/lifecycle_rule/$defs/noncurrent_version_expiration", list.MaxItems(1) & [..._#defs."/$defs/lifecycle_rule/$defs/noncurrent_version_expiration"]])
		noncurrent_version_transition?: matchN(1, [_#defs."/$defs/lifecycle_rule/$defs/noncurrent_version_transition", [..._#defs."/$defs/lifecycle_rule/$defs/noncurrent_version_transition"]])
		transition?: matchN(1, [_#defs."/$defs/lifecycle_rule/$defs/transition", [..._#defs."/$defs/lifecycle_rule/$defs/transition"]])
	})

	#logging: close({
		target_bucket!: string
		target_prefix?: string
	})

	#object_lock_configuration: close({
		rule?: matchN(1, [_#defs."/$defs/object_lock_configuration/$defs/rule", list.MaxItems(1) & [..._#defs."/$defs/object_lock_configuration/$defs/rule"]])
	})

	#replication_configuration: close({
		rules!: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rules", [_, ...] & [..._#defs."/$defs/replication_configuration/$defs/rules"]])
		role!: string
	})

	#server_side_encryption_configuration: close({
		rule!: matchN(1, [_#defs."/$defs/server_side_encryption_configuration/$defs/rule", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/server_side_encryption_configuration/$defs/rule"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#versioning: close({
		enabled?:    bool
		mfa_delete?: bool
	})

	#website: close({
		error_document?:           string
		index_document?:           string
		redirect_all_requests_to?: string
		routing_rules?:            string
	})

	_#defs: "/$defs/lifecycle_rule/$defs/expiration": close({
		date?:                         string
		days?:                         number
		expired_object_delete_marker?: bool
	})

	_#defs: "/$defs/lifecycle_rule/$defs/noncurrent_version_expiration": close({
		days?: number
	})

	_#defs: "/$defs/lifecycle_rule/$defs/noncurrent_version_transition": close({
		days?:          number
		storage_class!: string
	})

	_#defs: "/$defs/lifecycle_rule/$defs/transition": close({
		date?:          string
		days?:          number
		storage_class!: string
	})

	_#defs: "/$defs/object_lock_configuration/$defs/rule": close({
		default_retention!: matchN(1, [_#defs."/$defs/object_lock_configuration/$defs/rule/$defs/default_retention", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/object_lock_configuration/$defs/rule/$defs/default_retention"]])
	})

	_#defs: "/$defs/object_lock_configuration/$defs/rule/$defs/default_retention": close({
		days?:  number
		mode!:  string
		years?: number
	})

	_#defs: "/$defs/replication_configuration/$defs/rules": close({
		delete_marker_replication_status?: string
		destination!: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rules/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/replication_configuration/$defs/rules/$defs/destination"]])
		id?:       string
		prefix?:   string
		priority?: number
		status!:   string
		filter?: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rules/$defs/filter", list.MaxItems(1) & [..._#defs."/$defs/replication_configuration/$defs/rules/$defs/filter"]])
		source_selection_criteria?: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rules/$defs/source_selection_criteria", list.MaxItems(1) & [..._#defs."/$defs/replication_configuration/$defs/rules/$defs/source_selection_criteria"]])
	})

	_#defs: "/$defs/replication_configuration/$defs/rules/$defs/destination": close({
		access_control_translation?: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rules/$defs/destination/$defs/access_control_translation", list.MaxItems(1) & [..._#defs."/$defs/replication_configuration/$defs/rules/$defs/destination/$defs/access_control_translation"]])
		account_id?:         string
		bucket!:             string
		replica_kms_key_id?: string
		storage_class?:      string
		metrics?: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rules/$defs/destination/$defs/metrics", list.MaxItems(1) & [..._#defs."/$defs/replication_configuration/$defs/rules/$defs/destination/$defs/metrics"]])
		replication_time?: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rules/$defs/destination/$defs/replication_time", list.MaxItems(1) & [..._#defs."/$defs/replication_configuration/$defs/rules/$defs/destination/$defs/replication_time"]])
	})

	_#defs: "/$defs/replication_configuration/$defs/rules/$defs/destination/$defs/access_control_translation": close({
		owner!: string
	})

	_#defs: "/$defs/replication_configuration/$defs/rules/$defs/destination/$defs/metrics": close({
		minutes?: number
		status?:  string
	})

	_#defs: "/$defs/replication_configuration/$defs/rules/$defs/destination/$defs/replication_time": close({
		minutes?: number
		status?:  string
	})

	_#defs: "/$defs/replication_configuration/$defs/rules/$defs/filter": close({
		prefix?: string
		tags?: [string]: string
	})

	_#defs: "/$defs/replication_configuration/$defs/rules/$defs/source_selection_criteria": close({
		sse_kms_encrypted_objects?: matchN(1, [_#defs."/$defs/replication_configuration/$defs/rules/$defs/source_selection_criteria/$defs/sse_kms_encrypted_objects", list.MaxItems(1) & [..._#defs."/$defs/replication_configuration/$defs/rules/$defs/source_selection_criteria/$defs/sse_kms_encrypted_objects"]])
	})

	_#defs: "/$defs/replication_configuration/$defs/rules/$defs/source_selection_criteria/$defs/sse_kms_encrypted_objects": close({
		enabled!: bool
	})

	_#defs: "/$defs/server_side_encryption_configuration/$defs/rule": close({
		apply_server_side_encryption_by_default!: matchN(1, [_#defs."/$defs/server_side_encryption_configuration/$defs/rule/$defs/apply_server_side_encryption_by_default", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/server_side_encryption_configuration/$defs/rule/$defs/apply_server_side_encryption_by_default"]])
		bucket_key_enabled?: bool
	})

	_#defs: "/$defs/server_side_encryption_configuration/$defs/rule/$defs/apply_server_side_encryption_by_default": close({
		kms_master_key_id?: string
		sse_algorithm!:     string
	})
}
