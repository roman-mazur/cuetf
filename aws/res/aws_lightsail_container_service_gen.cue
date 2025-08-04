package res

import "list"

#aws_lightsail_container_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_container_service")
	close({
		arn?: string
		private_registry_access?: matchN(1, [#private_registry_access, list.MaxItems(1) & [...#private_registry_access]])
		availability_zone?:   string
		created_at?:          string
		id?:                  string
		is_disabled?:         bool
		name!:                string
		power!:               string
		power_id?:            string
		principal_arn?:       string
		private_domain_name?: string
		public_domain_names?: matchN(1, [#public_domain_names, list.MaxItems(1) & [...#public_domain_names]])
		region?:        string
		resource_type?: string
		scale!:         number
		state?:         string
		timeouts?:      #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		url?: string
	})

	#private_registry_access: close({
		ecr_image_puller_role?: matchN(1, [_#defs."/$defs/private_registry_access/$defs/ecr_image_puller_role", list.MaxItems(1) & [..._#defs."/$defs/private_registry_access/$defs/ecr_image_puller_role"]])
	})

	#public_domain_names: close({
		certificate?: matchN(1, [_#defs."/$defs/public_domain_names/$defs/certificate", [_, ...] & [..._#defs."/$defs/public_domain_names/$defs/certificate"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/private_registry_access/$defs/ecr_image_puller_role": close({
		is_active?:     bool
		principal_arn?: string
	})

	_#defs: "/$defs/public_domain_names/$defs/certificate": close({
		certificate_name!: string
		domain_names!: [...string]
	})
}
