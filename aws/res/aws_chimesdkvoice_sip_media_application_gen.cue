package res

import "list"

#aws_chimesdkvoice_sip_media_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chimesdkvoice_sip_media_application")
	close({
		arn?:        string
		aws_region!: string
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		endpoints?: matchN(1, [#endpoints, list.MaxItems(1) & [_, ...] & [...#endpoints]])
	})

	#endpoints: close({
		lambda_arn!: string
	})
}
