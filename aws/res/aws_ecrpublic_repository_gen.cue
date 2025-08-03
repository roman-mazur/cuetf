package res

import "list"

#aws_ecrpublic_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecrpublic_repository")
	close({
		arn?: string
		catalog_data?: matchN(1, [#catalog_data, list.MaxItems(1) & [...#catalog_data]])
		timeouts?:        #timeouts
		force_destroy?:   bool
		id?:              string
		region?:          string
		registry_id?:     string
		repository_name!: string
		repository_uri?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#catalog_data: close({
		about_text?: string
		architectures?: [...string]
		description?:     string
		logo_image_blob?: string
		operating_systems?: [...string]
		usage_text?: string
	})

	#timeouts: close({
		delete?: string
	})
}
