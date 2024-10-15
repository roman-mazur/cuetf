package res

import "list"

#aws_gamelift_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_gamelift_script")
	arn?:  string
	id?:   string
	name!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	version?:  string
	zip_file?: string
	storage_location?: #storage_location | list.MaxItems(1) & [...#storage_location]

	#storage_location: {
		bucket!:         string
		key!:            string
		object_version?: string
		role_arn!:       string
	}
}
