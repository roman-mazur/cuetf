package res

#aws_guardduty_organization_configuration_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_guardduty_organization_configuration_feature")
	auto_enable!: string
	detector_id!: string
	id?:          string
	name!:        string
	additional_configuration?: #additional_configuration | [...#additional_configuration]

	#additional_configuration: {
		auto_enable!: string
		name!:        string
	}
}
