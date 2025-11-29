package res

import "list"

#google_data_catalog_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_data_catalog_entry")
	close({
		// Specification for a group of BigQuery tables with name pattern
		// [prefix]YYYYMMDD.
		// Context:
		// https://cloud.google.com/bigquery/docs/partitioned-tables#partitioning_versus_sharding.
		bigquery_date_sharded_spec?: [...close({
			dataset?:      string
			shard_count?:  number
			table_prefix?: string
		})]

		// Specification that applies to a BigQuery table. This is only
		// valid on entries of type TABLE.
		bigquery_table_spec?: [...close({
			table_source_type?: string
			table_spec?: [...close({
				grouped_entry?: string
			})]
			view_spec?: [...close({
				view_query?: string
			})]
		})]

		// Entry description, which can consist of several sentences or
		// paragraphs that describe entry contents.
		description?: string

		// Display information such as title and description. A short name
		// to identify the entry,
		// for example, "Analytics Data - Jan 2011".
		display_name?: string

		// The name of the entry group this entry is in.
		entry_group!: string

		// The id of the entry to create.
		entry_id!: string

		// This field indicates the entry's source system that Data
		// Catalog integrates with, such as BigQuery or Pub/Sub.
		integrated_system?: string

		// The resource this metadata entry refers to.
		// For Google Cloud Platform resources, linkedResource is the full
		// name of the resource.
		// For example, the linkedResource for a table resource from
		// BigQuery is:
		// //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId
		// Output only when Entry is of type in the EntryType enum. For
		// entries with userSpecifiedType,
		// this field is optional and defaults to an empty string.
		linked_resource?: string

		// The Data Catalog resource name of the entry in URL format.
		// Example:
		// projects/{project_id}/locations/{location}/entryGroups/{entryGroupId}/entries/{entryId}.
		// Note that this Entry and its child resources may not actually
		// be stored in the location in this name.
		name?: string
		id?:   string

		// Schema of the entry (e.g. BigQuery, GoogleSQL, Avro schema), as
		// a json string. An entry might not have any schema
		// attached to it. See
		// https://cloud.google.com/data-catalog/docs/reference/rest/v1/projects.locations.entryGroups.entries#schema
		// for what fields this schema can contain.
		schema?: string
		gcs_fileset_spec?: matchN(1, [#gcs_fileset_spec, list.MaxItems(1) & [...#gcs_fileset_spec]])
		timeouts?: #timeouts

		// The type of the entry. Only used for Entries with types in the
		// EntryType enum.
		// Currently, only FILESET enum value is allowed. All other
		// entries created through Data Catalog must use
		// userSpecifiedType. Possible values: ["FILESET"]
		type?: string

		// This field indicates the entry's source system that Data
		// Catalog does not integrate with.
		// userSpecifiedSystem strings must begin with a letter or
		// underscore and can only contain letters, numbers,
		// and underscores; are case insensitive; must be at least 1
		// character and at most 64 characters long.
		user_specified_system?: string

		// Entry type if it does not fit any of the input-allowed values
		// listed in EntryType enum above.
		// When creating an entry, users should check the enum values
		// first, if nothing matches the entry
		// to be created, then provide a custom value, for example
		// "my_special_type".
		// userSpecifiedType strings must begin with a letter or
		// underscore and can only contain letters,
		// numbers, and underscores; are case insensitive; must be at
		// least 1 character and at most 64 characters long.
		user_specified_type?: string
	})

	#gcs_fileset_spec: close({
		// Patterns to identify a set of files in Google Cloud Storage.
		// See [Cloud Storage
		// documentation](https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames)
		// for more information. Note that bucket wildcards are currently
		// not supported. Examples of valid filePatterns:
		//
		// * gs://bucket_name/dir/*: matches all files within
		// bucket_name/dir directory.
		// * gs://bucket_name/dir/**: matches all files in bucket_name/dir
		// spanning all subdirectories.
		// * gs://bucket_name/file*: matches files prefixed by file in
		// bucket_name
		// * gs://bucket_name/??.txt: matches files with two characters
		// followed by .txt in bucket_name
		// * gs://bucket_name/[aeiou].txt: matches files that contain a
		// single vowel character followed by .txt in bucket_name
		// * gs://bucket_name/[a-m].txt: matches files that contain a, b,
		// ... or m followed by .txt in bucket_name
		// * gs://bucket_name/a/*/b: matches all files in bucket_name that
		// match a/*/b pattern, such as a/c/b, a/d/b
		// * gs://another_bucket/a.txt: matches gs://another_bucket/a.txt
		file_patterns!: [...string]

		// Sample files contained in this fileset, not all files contained
		// in this fileset are represented here.
		sample_gcs_file_specs?: [...close({
			file_path?:  string
			size_bytes?: number
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
