package res

import "list"

#google_data_loss_prevention_stored_info_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_data_loss_prevention_stored_info_type")
	close({
		// A description of the info type.
		description?: string
		dictionary?: matchN(1, [#dictionary, list.MaxItems(1) & [...#dictionary]])

		// User set display name of the info type.
		display_name?: string
		id?:           string
		large_custom_dictionary?: matchN(1, [#large_custom_dictionary, list.MaxItems(1) & [...#large_custom_dictionary]])

		// The resource name of the info type. Set by the server.
		name?: string
		regex?: matchN(1, [#regex, list.MaxItems(1) & [...#regex]])
		timeouts?: #timeouts

		// The parent of the info type in any of the following formats:
		//
		// * 'projects/{{project}}'
		// * 'projects/{{project}}/locations/{{location}}'
		// * 'organizations/{{organization_id}}'
		// * 'organizations/{{organization_id}}/locations/{{location}}'
		parent!: string

		// The storedInfoType ID can contain uppercase and lowercase
		// letters, numbers, and hyphens;
		// that is, it must match the regular expression: [a-zA-Z\d-_]+.
		// The maximum length is 100
		// characters. Can be empty to allow the system to generate one.
		stored_info_type_id?: string
	})

	#dictionary: close({
		cloud_storage_path?: matchN(1, [_#defs."/$defs/dictionary/$defs/cloud_storage_path", list.MaxItems(1) & [..._#defs."/$defs/dictionary/$defs/cloud_storage_path"]])
		word_list?: matchN(1, [_#defs."/$defs/dictionary/$defs/word_list", list.MaxItems(1) & [..._#defs."/$defs/dictionary/$defs/word_list"]])
	})

	#large_custom_dictionary: close({
		big_query_field?: matchN(1, [_#defs."/$defs/large_custom_dictionary/$defs/big_query_field", list.MaxItems(1) & [..._#defs."/$defs/large_custom_dictionary/$defs/big_query_field"]])
		cloud_storage_file_set?: matchN(1, [_#defs."/$defs/large_custom_dictionary/$defs/cloud_storage_file_set", list.MaxItems(1) & [..._#defs."/$defs/large_custom_dictionary/$defs/cloud_storage_file_set"]])
		output_path?: matchN(1, [_#defs."/$defs/large_custom_dictionary/$defs/output_path", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/large_custom_dictionary/$defs/output_path"]])
	})

	#regex: close({
		// The index of the submatch to extract as findings. When not
		// specified, the entire match is returned. No more than 3 may be
		// included.
		group_indexes?: [...number]

		// Pattern defining the regular expression.
		// Its syntax (https://github.com/google/re2/wiki/Syntax) can be
		// found under the google/re2 repository on GitHub.
		pattern!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/dictionary/$defs/cloud_storage_path": close({
		// A url representing a file or path (no wildcards) in Cloud
		// Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt'
		path!: string
	})

	_#defs: "/$defs/dictionary/$defs/word_list": close({
		// Words or phrases defining the dictionary. The dictionary must
		// contain at least one
		// phrase and every phrase must contain at least 2 characters that
		// are letters or digits.
		words!: [...string]
	})

	_#defs: "/$defs/large_custom_dictionary/$defs/big_query_field": close({
		field?: matchN(1, [_#defs."/$defs/large_custom_dictionary/$defs/big_query_field/$defs/field", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/large_custom_dictionary/$defs/big_query_field/$defs/field"]])
		table?: matchN(1, [_#defs."/$defs/large_custom_dictionary/$defs/big_query_field/$defs/table", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/large_custom_dictionary/$defs/big_query_field/$defs/table"]])
	})

	_#defs: "/$defs/large_custom_dictionary/$defs/big_query_field/$defs/field": close({
		// Name describing the field.
		name!: string
	})

	_#defs: "/$defs/large_custom_dictionary/$defs/big_query_field/$defs/table": close({
		// The dataset ID of the table.
		dataset_id!: string

		// The Google Cloud Platform project ID of the project containing
		// the table.
		project_id!: string

		// The name of the table.
		table_id!: string
	})

	_#defs: "/$defs/large_custom_dictionary/$defs/cloud_storage_file_set": close({
		// The url, in the format 'gs://<bucket>/<path>'. Trailing
		// wildcard in the path is allowed.
		url!: string
	})

	_#defs: "/$defs/large_custom_dictionary/$defs/output_path": close({
		// A url representing a file or path (no wildcards) in Cloud
		// Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt'
		path!: string
	})
}
