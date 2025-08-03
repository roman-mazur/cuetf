package res

import "list"

#aws_chimesdkvoice_sip_media_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chimesdkvoice_sip_media_application")
	close({
		arn?: string
		endpoints?: matchN(1, [#endpoints, list.MaxItems(1) & [_, ...] & [...#endpoints]])
		aws_region!: string
		id?:         string
		name!:       string
		region?:     string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#endpoints: close({
		lambda_arn!: string
	})
}
