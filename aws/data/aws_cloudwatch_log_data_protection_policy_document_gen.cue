package data

import "list"

#aws_cloudwatch_log_data_protection_policy_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_log_data_protection_policy_document")
	close({
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [...#configuration]])
		description?: string
		id?:          string
		json?:        string
		name!:        string
		version?:     string
		statement!: matchN(1, [#statement, list.MaxItems(2) & [_, _, ...] & [...#statement]])
	})

	#configuration: close({
		custom_data_identifier?: matchN(1, [_#defs."/$defs/configuration/$defs/custom_data_identifier", list.MaxItems(10) & [..._#defs."/$defs/configuration/$defs/custom_data_identifier"]])
	})

	#statement: close({
		operation!: matchN(1, [_#defs."/$defs/statement/$defs/operation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/statement/$defs/operation"]])
		data_identifiers!: [...string]
		sid?: string
	})

	_#defs: "/$defs/configuration/$defs/custom_data_identifier": close({
		name!:  string
		regex!: string
	})

	_#defs: "/$defs/statement/$defs/operation": close({
		audit?: matchN(1, [_#defs."/$defs/statement/$defs/operation/$defs/audit", list.MaxItems(1) & [..._#defs."/$defs/statement/$defs/operation/$defs/audit"]])
		deidentify?: matchN(1, [_#defs."/$defs/statement/$defs/operation/$defs/deidentify", list.MaxItems(1) & [..._#defs."/$defs/statement/$defs/operation/$defs/deidentify"]])
	})

	_#defs: "/$defs/statement/$defs/operation/$defs/audit": close({
		findings_destination!: matchN(1, [_#defs."/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination"]])
	})

	_#defs: "/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination": close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination/$defs/cloudwatch_logs", list.MaxItems(1) & [..._#defs."/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination/$defs/cloudwatch_logs"]])
		firehose?: matchN(1, [_#defs."/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination/$defs/firehose", list.MaxItems(1) & [..._#defs."/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination/$defs/firehose"]])
		s3?: matchN(1, [_#defs."/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination/$defs/s3", list.MaxItems(1) & [..._#defs."/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination/$defs/s3"]])
	})

	_#defs: "/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination/$defs/cloudwatch_logs": close({
		log_group!: string
	})

	_#defs: "/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination/$defs/firehose": close({
		delivery_stream!: string
	})

	_#defs: "/$defs/statement/$defs/operation/$defs/audit/$defs/findings_destination/$defs/s3": close({
		bucket!: string
	})

	_#defs: "/$defs/statement/$defs/operation/$defs/deidentify": close({
		mask_config!: matchN(1, [_#defs."/$defs/statement/$defs/operation/$defs/deidentify/$defs/mask_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/statement/$defs/operation/$defs/deidentify/$defs/mask_config"]])
	})

	_#defs: "/$defs/statement/$defs/operation/$defs/deidentify/$defs/mask_config": close({})
}
