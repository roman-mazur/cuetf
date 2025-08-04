package res

import "list"

#aws_glacier_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glacier_vault")
	close({
		notification?: matchN(1, [#notification, list.MaxItems(1) & [...#notification]])
		access_policy?: string
		arn?:           string
		id?:            string
		location?:      string
		name!:          string
		region?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#notification: close({
		events!: [...string]
		sns_topic!: string
	})
}
