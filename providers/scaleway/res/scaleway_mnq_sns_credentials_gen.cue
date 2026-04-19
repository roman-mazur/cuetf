package res

import "list"

#scaleway_mnq_sns_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mnq_sns_credentials")
	close({
		permissions?: matchN(1, [#permissions, list.MaxItems(1) & [...#permissions]])

		// SNS credentials access key
		access_key?: string
		id?:         string

		// The credentials name
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// SNS credentials secret key
		secret_key?: string
	})

	#permissions: close({
		// Allow manage the associated resource
		can_manage?: bool

		// Allow publish messages to the service
		can_publish?: bool

		// Allow receive messages from the service
		can_receive?: bool
	})
}
