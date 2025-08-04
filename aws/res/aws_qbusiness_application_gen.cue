package res

#aws_qbusiness_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_qbusiness_application")
	close({
		arn?:                             string
		description?:                     string
		display_name!:                    string
		iam_service_role_arn!:            string
		id?:                              string
		identity_center_application_arn?: string
		attachments_configuration?: matchN(1, [#attachments_configuration, [...#attachments_configuration]])
		identity_center_instance_arn!: string
		encryption_configuration?: matchN(1, [#encryption_configuration, [...#encryption_configuration]])
		timeouts?: #timeouts
		region?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#attachments_configuration: close({
		attachments_control_mode!: string
	})

	#encryption_configuration: close({
		kms_key_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
