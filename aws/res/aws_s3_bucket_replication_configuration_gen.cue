package res

import "list"

#aws_s3_bucket_replication_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3_bucket_replication_configuration")
	close({
		bucket!: string
		id?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		role!:   string
		token?:  string
		rule!: matchN(1, [#rule, list.MaxItems(1000) & [_, ...] & [...#rule]])
	})

	#rule: close({
		delete_marker_replication?: matchN(1, [_#defs."/$defs/rule/$defs/delete_marker_replication", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/delete_marker_replication"]])
		destination!: matchN(1, [_#defs."/$defs/rule/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/destination"]])
		id?: string
		existing_object_replication?: matchN(1, [_#defs."/$defs/rule/$defs/existing_object_replication", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/existing_object_replication"]])
		priority?: number
		filter?: matchN(1, [_#defs."/$defs/rule/$defs/filter", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/filter"]])
		source_selection_criteria?: matchN(1, [_#defs."/$defs/rule/$defs/source_selection_criteria", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/source_selection_criteria"]])
		status!: string
	})

	_#defs: "/$defs/rule/$defs/delete_marker_replication": close({
		status!: string
	})

	_#defs: "/$defs/rule/$defs/destination": close({
		access_control_translation?: matchN(1, [_#defs."/$defs/rule/$defs/destination/$defs/access_control_translation", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/destination/$defs/access_control_translation"]])
		encryption_configuration?: matchN(1, [_#defs."/$defs/rule/$defs/destination/$defs/encryption_configuration", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/destination/$defs/encryption_configuration"]])
		metrics?: matchN(1, [_#defs."/$defs/rule/$defs/destination/$defs/metrics", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/destination/$defs/metrics"]])
		replication_time?: matchN(1, [_#defs."/$defs/rule/$defs/destination/$defs/replication_time", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/destination/$defs/replication_time"]])
		account?:       string
		bucket!:        string
		storage_class?: string
	})

	_#defs: "/$defs/rule/$defs/destination/$defs/access_control_translation": close({
		owner!: string
	})

	_#defs: "/$defs/rule/$defs/destination/$defs/encryption_configuration": close({
		replica_kms_key_id!: string
	})

	_#defs: "/$defs/rule/$defs/destination/$defs/metrics": close({
		event_threshold?: matchN(1, [_#defs."/$defs/rule/$defs/destination/$defs/metrics/$defs/event_threshold", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/destination/$defs/metrics/$defs/event_threshold"]])
		status!: string
	})

	_#defs: "/$defs/rule/$defs/destination/$defs/metrics/$defs/event_threshold": close({
		minutes!: number
	})

	_#defs: "/$defs/rule/$defs/destination/$defs/replication_time": close({
		time!: matchN(1, [_#defs."/$defs/rule/$defs/destination/$defs/replication_time/$defs/time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/rule/$defs/destination/$defs/replication_time/$defs/time"]])
		status!: string
	})

	_#defs: "/$defs/rule/$defs/destination/$defs/replication_time/$defs/time": close({
		minutes!: number
	})

	_#defs: "/$defs/rule/$defs/existing_object_replication": close({
		status!: string
	})

	_#defs: "/$defs/rule/$defs/filter": close({
		and?: matchN(1, [_#defs."/$defs/rule/$defs/filter/$defs/and", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/filter/$defs/and"]])
		tag?: matchN(1, [_#defs."/$defs/rule/$defs/filter/$defs/tag", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/filter/$defs/tag"]])
		prefix?: string
	})

	_#defs: "/$defs/rule/$defs/filter/$defs/and": close({
		prefix?: string
		tags?: [string]: string
	})

	_#defs: "/$defs/rule/$defs/filter/$defs/tag": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/rule/$defs/source_selection_criteria": close({
		replica_modifications?: matchN(1, [_#defs."/$defs/rule/$defs/source_selection_criteria/$defs/replica_modifications", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/source_selection_criteria/$defs/replica_modifications"]])
		sse_kms_encrypted_objects?: matchN(1, [_#defs."/$defs/rule/$defs/source_selection_criteria/$defs/sse_kms_encrypted_objects", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/source_selection_criteria/$defs/sse_kms_encrypted_objects"]])
	})

	_#defs: "/$defs/rule/$defs/source_selection_criteria/$defs/replica_modifications": close({
		status!: string
	})

	_#defs: "/$defs/rule/$defs/source_selection_criteria/$defs/sse_kms_encrypted_objects": close({
		status!: string
	})
}
