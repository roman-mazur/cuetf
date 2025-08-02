package data

#aws_ecr_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_repository")
	close({
		arn?: string
		encryption_configuration?: [...close({
			encryption_type?: string
			kms_key?:         string
		})]
		id?: string
		image_scanning_configuration?: [...close({
			scan_on_push?: bool
		})]
		image_tag_mutability?: string
		most_recent_image_tags?: [...string]
		name!:           string
		region?:         string
		registry_id?:    string
		repository_url?: string
		tags?: [string]: string
	})
}
