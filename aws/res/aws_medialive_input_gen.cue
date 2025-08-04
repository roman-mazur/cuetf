package res

import "list"

#aws_medialive_input: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_medialive_input")
	close({
		arn?: string
		attached_channels?: [...string]
		id?:          string
		input_class?: string
		input_partner_ids?: [...string]
		input_security_groups?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		input_source_type?: string
		name!:              string
		destinations?: matchN(1, [#destinations, [...#destinations]])
		input_devices?: matchN(1, [#input_devices, [...#input_devices]])
		media_connect_flows?: matchN(1, [#media_connect_flows, [...#media_connect_flows]])
		role_arn?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		sources?: matchN(1, [#sources, [...#sources]])
		timeouts?: #timeouts
		type!:     string
		vpc?: matchN(1, [#vpc, list.MaxItems(1) & [...#vpc]])
	})

	#destinations: close({
		stream_name!: string
	})

	#input_devices: close({
		id!: string
	})

	#media_connect_flows: close({
		flow_arn!: string
	})

	#sources: close({
		password_param!: string
		url!:            string
		username!:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc: close({
		security_group_ids?: [...string]
		subnet_ids!: [...string]
	})
}
