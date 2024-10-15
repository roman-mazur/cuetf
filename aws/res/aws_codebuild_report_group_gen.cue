package res

import "list"

#aws_codebuild_report_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codebuild_report_group")
	arn?:            string
	created?:        string
	delete_reports?: bool
	id?:             string
	name!:           string
	tags?: [string]:     string
	tags_all?: [string]: string
	type!: string
	export_config?: #export_config | list.MaxItems(1) & [_, ...] & [...#export_config]

	#export_config: {
		type!: string
		s3_destination?: #export_config.#s3_destination | list.MaxItems(1) & [...#export_config.#s3_destination]

		#s3_destination: {
			bucket!:              string
			encryption_disabled?: bool
			encryption_key!:      string
			packaging?:           string
			path?:                string
		}
	}
}
