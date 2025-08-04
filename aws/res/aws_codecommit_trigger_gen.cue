package res

import "list"

#aws_codecommit_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codecommit_trigger")
	close({
		trigger?: matchN(1, [#trigger, list.MaxItems(10) & [_, ...] & [...#trigger]])
		configuration_id?: string
		id?:               string
		region?:           string
		repository_name!:  string
	})

	#trigger: close({
		branches?: [...string]
		custom_data?:     string
		destination_arn!: string
		events!: [...string]
		name!: string
	})
}
