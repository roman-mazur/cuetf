package res

import "list"

#google_chronicle_parser_extension: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_parser_extension")
	close({
		dynamic_parsing?: matchN(1, [#dynamic_parsing, list.MaxItems(1) & [...#dynamic_parsing]])
		field_extractors?: matchN(1, [#field_extractors, list.MaxItems(1) & [...#field_extractors]])
		timeouts?: #timeouts

		// Parser config could be a cbn snippet.
		cbn_snippet?: string

		// The time the parser extension was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The latest extension
		// validation report for this extension.
		extension_validation_report?: string
		id?:                          string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		instance!: string

		// The time the config was last serving live traffic.
		last_live_time?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Raw log used to assist the user in creation of augmentation.
		log?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		log_type!: string

		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/logTypes/{logtype}/parserExtensions/{parserExtension}
		name?: string

		// Output only. The server-generated ID of the parser extension.
		parserextension?: string
		project?:         string

		// The state of the parser extension
		// Possible values:
		// NEW
		// VALIDATING
		// LIVE
		// REJECTED
		// INTERNAL_ERROR
		// VALIDATED
		// ARCHIVED
		// VALIDATION_SKIPPED
		state?: string

		// The time the config state was last changed.
		state_last_changed_time?: string

		// The validation report generated during extension validation.
		validation_report?: string

		// Flag to bypass parser extension validation.
		// If enabled, the parser extension won't be rejected during the
		// validation
		// phase and validation will be skipped.
		validation_skipped?: bool
	})

	#dynamic_parsing: close({
		opted_fields?: matchN(1, [_#defs."/$defs/dynamic_parsing/$defs/opted_fields", [..._#defs."/$defs/dynamic_parsing/$defs/opted_fields"]])
	})

	#field_extractors: close({
		extractors?: matchN(1, [_#defs."/$defs/field_extractors/$defs/extractors", [..._#defs."/$defs/field_extractors/$defs/extractors"]])
		preprocess_config?: matchN(1, [_#defs."/$defs/field_extractors/$defs/preprocess_config", list.MaxItems(1) & [..._#defs."/$defs/field_extractors/$defs/preprocess_config"]])

		// Whether to append repeated fields or not.
		// When false, repeated fields will be replaced.
		append_repeated_fields?: bool

		// Possible values:
		// JSON
		// CSV
		// XML
		log_format?: string

		// CBN snippet generated from field extractors.
		transformed_cbn_snippet?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/dynamic_parsing/$defs/opted_fields": close({
		// Path of the log field.
		path?: string

		// Sample value of the log field.
		sample_value?: string
	})

	_#defs: "/$defs/field_extractors/$defs/extractors": close({
		// Path in generated event which is to be populated. This is
		// required if the
		// FieldExtractor is used to specify the parser extension.
		destination_path?: string

		// Field path could be a json path, xml path or csv column name
		// depending on log format. It refers to a section or substring in
		// raw log.
		// This is required if the FieldExtractor is used to specify the
		// parser
		// extension.
		field_path?: string

		// Operator used for precondition.
		// Possible values:
		// EQUALS
		// NOT_EQUALS
		precondition_op?: string

		// Precondition path could be a json path, xml path or csv column
		// name
		// depending on log format. It refers to a section or substring in
		// raw log.
		precondition_path?: string

		// Precondition value.
		precondition_value?: string

		// Value to be mapped to the destination path directly.
		value?: string
	})

	_#defs: "/$defs/field_extractors/$defs/preprocess_config": close({
		// GROK Regex to extract the structured part of the log.
		// syntax documentation:
		// www.elastic.co/guide/en/logstash/current/plugins-filters-grok.html
		grok_regex?: string

		// Target field name for the structured part of the log.
		// This should match a SEMANTIC identifier from the grok
		// expression.
		target?: string
	})
}
