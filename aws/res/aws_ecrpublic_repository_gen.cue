package res

import "list"

#aws_ecrpublic_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecrpublic_repository")
	arn?:            string
	force_destroy?:  bool
	id?:             string
	registry_id?:    string
	repository_name: string
	repository_uri?: string
	tags?: [string]: string
	tags_all?: [string]: string
	catalog_data?: #catalog_data | list.MaxItems(1) & [...#catalog_data]
	timeouts?:     #timeouts

	#catalog_data: {
		about_text?: string
		architectures?: [...string]
		description?:     string
		logo_image_blob?: string
		operating_systems?: [...string]
		usage_text?: string
	}

	#timeouts: delete?: string
}
