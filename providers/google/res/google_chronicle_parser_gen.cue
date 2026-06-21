package res

import "list"

#google_chronicle_parser: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_chronicle_parser")
	close({
		low_code?: matchN(1, [#low_code, list.MaxItems(1) & [...#low_code]])
		timeouts?: #timeouts
		version_info?: matchN(1, [#version_info, list.MaxItems(1) & [...#version_info]])

		// if the parser is built using config
		// documentation:
		// https://cloud.google.com/chronicle/docs/preview/parser-extensions/parsing-overview
		cbn?: string

		// Changelogs of a parser.
		changelogs?: [...close({
			entries?: [...close({
				change_message?: string
				create_time?:    string
				deleted?:        bool
				parser_version?: string
			})]
		})]

		// Time at which parser was created.
		create_time?: string

		// Information about the creator of the parser.
		creator?: [...close({
			author?:   string
			customer?: string
			source?:   string
		})]

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

		// Dynamic parsing config applied over the parser, if any.
		dynamic_parsing_config?: string
		id?:                     string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		instance!: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		logtype!: string

		// name of the parser resource.
		name?: string

		// Output only. The server-generated ID of the parser.
		parser?: string

		// Extension applied over the parser, if any.
		parser_extension?: string
		project?:          string

		// The release stage of the parser
		// After internal validations the prebuilt parser will directly
		// start as
		// Release Candidate. The release_stage of prebuilt parsers are
		// changed
		// after every release cycle:
		// The prebuilt Release Candidate parser is promoted as Release
		// parser.
		// The existing prebuilt Release parser is moved to Rollback
		// state.
		// and existing prebuilt rollback parser is moved to Archived.
		// In case of custom parser:
		// When the customer submits a validation passed custom parser it
		// starts as
		// Release state.
		// And existing one is moved to Rollback stage.
		// And the existing rollback is moved to Archived.
		// In case a release or release candidate parser is found faulty,
		// the parser is marked FAULTY,
		// if it is release parser then rollback candidate is moved to
		// release.
		// Possible values:
		// RELEASE
		// RELEASE_CANDIDATE
		// ROLLBACK_CANDIDATE
		// ARCHIVED
		// FAULTY
		// ARCHIVED_IN_USE
		release_stage?: string

		// The state of the parser
		// Possible values:
		// ACTIVE
		// INACTIVE
		state?: string

		// The type of the parser
		// Possible values:
		// CUSTOM
		// PREBUILT
		type?: string

		// Flag to bypass parser validation when no logs are found.
		// If enabled, the parser won't be be rejected during the
		// validation
		// phase when no logs are found.
		validated_on_empty_logs?: bool

		// The Validation report generated during parser validation.
		validation_report?: string

		// If true, bypasses parser validation.
		// If enabled, the parser won't be rejected during the validation
		// phase and validation will be skipped.
		validation_skipped?: bool

		// The validation stage of the parser
		// When a customer submits a new parser for validation, it starts
		// with a
		// new stage.
		// When parser is picked for validation, it changes to Validation
		// state.
		// If validation failed it is marked as failed, and
		// existing failed is moved to delete_candidate stage.
		// If passes it is moved to passed stage.
		// If customer opts to submit it, the parser is moved to Release
		// State.
		// Possible values:
		// NEW
		// VALIDATING
		// PASSED
		// FAILED
		// DELETE_CANDIDATE
		// INTERNAL_ERROR
		// VALIDATION_SKIPPED
		validation_stage?: string
	})

	#low_code: close({
		field_extractors?: matchN(1, [_#defs."/$defs/low_code/$defs/field_extractors", list.MaxItems(1) & [..._#defs."/$defs/low_code/$defs/field_extractors"]])

		// The log used to create this low code parser in the UI.
		log?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#version_info: close({
		// Signifies if the parser is disabled for auto upgrade. If true,
		// the parser
		// will not be upgraded by the auto upgrade process.
		auto_upgrade_disabled!: bool

		// The resource name of latest Parser for this logtype.
		// Format:
		// projects/{project}/locations/{region}/instances/{instance}/logTypes/{log_type}/parsers/{parser}/{id}
		latest_parser?: string

		// The version for the latest available stable version of the
		// parser.
		latest_parser_version?: string

		// Signifies if rollback is available for this parser version.
		rollback_available?: bool

		// The version of the parser.
		version?: string
	})

	_#defs: "/$defs/low_code/$defs/field_extractors": close({
		extractors?: matchN(1, [_#defs."/$defs/low_code/$defs/field_extractors/$defs/extractors", [..._#defs."/$defs/low_code/$defs/field_extractors/$defs/extractors"]])
		preprocess_config?: matchN(1, [_#defs."/$defs/low_code/$defs/field_extractors/$defs/preprocess_config", list.MaxItems(1) & [..._#defs."/$defs/low_code/$defs/field_extractors/$defs/preprocess_config"]])

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

	_#defs: "/$defs/low_code/$defs/field_extractors/$defs/extractors": close({
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

	_#defs: "/$defs/low_code/$defs/field_extractors/$defs/preprocess_config": close({
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
