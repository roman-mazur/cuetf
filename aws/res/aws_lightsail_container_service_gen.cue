package res

import "list"

#aws_lightsail_container_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_container_service")
	arn?:                 string
	availability_zone?:   string
	created_at?:          string
	id?:                  string
	is_disabled?:         bool
	name!:                string
	power!:               string
	power_id?:            string
	principal_arn?:       string
	private_domain_name?: string
	resource_type?:       string
	scale!:               number
	state?:               string
	tags?: [string]:     string
	tags_all?: [string]: string
	url?: string
	private_registry_access?: #private_registry_access | list.MaxItems(1) & [...#private_registry_access]
	public_domain_names?: #public_domain_names | list.MaxItems(1) & [...#public_domain_names]
	timeouts?: #timeouts

	#private_registry_access: {
		ecr_image_puller_role?: #private_registry_access.#ecr_image_puller_role | list.MaxItems(1) & [...#private_registry_access.#ecr_image_puller_role]

		#ecr_image_puller_role: {
			is_active?:     bool
			principal_arn?: string
		}
	}

	#public_domain_names: {
		certificate?: #public_domain_names.#certificate | [_, ...] & [...#public_domain_names.#certificate]

		#certificate: {
			certificate_name!: string
			domain_names!: [...string]
		}
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
