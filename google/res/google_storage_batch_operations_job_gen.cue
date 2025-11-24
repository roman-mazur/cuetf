package res

import "list"

#google_storage_batch_operations_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_batch_operations_job")
	close({
		// The time that the job was completed.
		complete_time?: string

		// The timestamp at which this storage batch operation was
		// created.
		create_time?: string

		// If set to 'true', the storage batch operation job will not be
		// deleted and new job will be created.
		delete_protection?: bool
		id?:                string

		// The ID of the job.
		job_id?:  string
		project?: string

		// The time that the job was scheduled.
		schedule_time?: string
		bucket_list?: matchN(1, [#bucket_list, list.MaxItems(1) & [...#bucket_list]])
		delete_object?: matchN(1, [#delete_object, list.MaxItems(1) & [...#delete_object]])
		put_metadata?: matchN(1, [#put_metadata, list.MaxItems(1) & [...#put_metadata]])
		put_object_hold?: matchN(1, [#put_object_hold, list.MaxItems(1) & [...#put_object_hold]])
		rewrite_object?: matchN(1, [#rewrite_object, list.MaxItems(1) & [...#rewrite_object]])
		timeouts?: #timeouts

		// State of the job.
		state?: string

		// The timestamp at which this storage batch operation was most
		// recently updated.
		update_time?: string
	})

	#bucket_list: close({
		buckets!: matchN(1, [_#defs."/$defs/bucket_list/$defs/buckets", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/bucket_list/$defs/buckets"]])
	})

	#delete_object: close({
		// enable flag to permanently delete object and all object
		// versions if versioning is enabled on bucket.
		permanent_object_deletion_enabled!: bool
	})

	#put_metadata: close({
		// Cache-Control directive to specify caching behavior of object
		// data. If omitted and object is accessible to all anonymous
		// users, the default will be public, max-age=3600
		cache_control?: string

		// Content-Disposition of the object data.
		content_disposition?: string

		// Content Encoding of the object data.
		content_encoding?: string

		// Content-Language of the object data.
		content_language?: string

		// Content-Type of the object data.
		content_type?: string

		// User-provided metadata, in key/value pairs.
		custom_metadata?: [string]: string

		// Updates the objects fixed custom time metadata.
		custom_time?: string
	})

	#put_object_hold: close({
		// set/unset to update event based hold for objects.
		event_based_hold?: string

		// set/unset to update temporary based hold for objects.
		temporary_hold?: string
	})

	#rewrite_object: close({
		// valid kms key
		kms_key!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/bucket_list/$defs/buckets": close({
		manifest?: matchN(1, [_#defs."/$defs/bucket_list/$defs/buckets/$defs/manifest", list.MaxItems(1) & [..._#defs."/$defs/bucket_list/$defs/buckets/$defs/manifest"]])
		prefix_list?: matchN(1, [_#defs."/$defs/bucket_list/$defs/buckets/$defs/prefix_list", list.MaxItems(1) & [..._#defs."/$defs/bucket_list/$defs/buckets/$defs/prefix_list"]])

		// Bucket name for the objects to be transformed.
		bucket!: string
	})

	_#defs: "/$defs/bucket_list/$defs/buckets/$defs/manifest": close({
		// Specifies objects in a manifest file.
		manifest_location?: string
	})

	_#defs: "/$defs/bucket_list/$defs/buckets/$defs/prefix_list": close({
		included_object_prefixes?: [...string]
	})
}
