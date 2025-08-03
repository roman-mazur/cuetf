package res

#aws_imagebuilder_workflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_workflow")
	close({
		arn?:                string
		change_description?: string
		data?:               string
		date_created?:       string
		description?:        string
		id?:                 string
		kms_key_id?:         string
		name!:               string
		owner?:              string
		region?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
		type!:    string
		uri?:     string
		version!: string
	})
}
