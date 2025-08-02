package data

#aws_ecr_images: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_images")
	close({
		image_ids?: [...close({
			image_digest?: string
			image_tag?:    string
		})]
		region?:          string
		registry_id?:     string
		repository_name!: string
	})
}
