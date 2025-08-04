package res

import "list"

#aws_s3_bucket_analytics_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_analytics_configuration")
	close({
		filter?: matchN(1, [#filter, list.MaxItems(1) & [...#filter]])
		bucket!: string
		id?:     string
		name!:   string
		region?: string
		storage_class_analysis?: matchN(1, [#storage_class_analysis, list.MaxItems(1) & [...#storage_class_analysis]])
	})

	#filter: close({
		prefix?: string
		tags?: [string]: string
	})

	#storage_class_analysis: close({
		data_export?: matchN(1, [_#defs."/$defs/storage_class_analysis/$defs/data_export", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage_class_analysis/$defs/data_export"]])
	})

	_#defs: "/$defs/storage_class_analysis/$defs/data_export": close({
		destination?: matchN(1, [_#defs."/$defs/storage_class_analysis/$defs/data_export/$defs/destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage_class_analysis/$defs/data_export/$defs/destination"]])
		output_schema_version?: string
	})

	_#defs: "/$defs/storage_class_analysis/$defs/data_export/$defs/destination": close({
		s3_bucket_destination?: matchN(1, [_#defs."/$defs/storage_class_analysis/$defs/data_export/$defs/destination/$defs/s3_bucket_destination", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage_class_analysis/$defs/data_export/$defs/destination/$defs/s3_bucket_destination"]])
	})

	_#defs: "/$defs/storage_class_analysis/$defs/data_export/$defs/destination/$defs/s3_bucket_destination": close({
		bucket_account_id?: string
		bucket_arn!:        string
		format?:            string
		prefix?:            string
	})
}
