package data

#aws_ecr_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecr_image")
	id?:                  string
	image_digest?:        string
	image_pushed_at?:     number
	image_size_in_bytes?: number
	image_tag?:           string
	image_tags?: [...string]
	most_recent?:    bool
	registry_id?:    string
	repository_name: string
}
