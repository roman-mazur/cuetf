package res

import "list"

#aws_codebuild_report_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codebuild_report_group")
	close({
		export_config?: matchN(1, [#export_config, list.MaxItems(1) & [_, ...] & [...#export_config]])
		arn?:            string
		created?:        string
		delete_reports?: bool
		id?:             string
		name!:           string
		region?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
	})

	#export_config: close({
		s3_destination?: matchN(1, [_#defs."/$defs/export_config/$defs/s3_destination", list.MaxItems(1) & [..._#defs."/$defs/export_config/$defs/s3_destination"]])
		type!: string
	})

	_#defs: "/$defs/export_config/$defs/s3_destination": close({
		bucket!:              string
		encryption_disabled?: bool
		encryption_key!:      string
		packaging?:           string
		path?:                string
	})
}
